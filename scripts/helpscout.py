import os
import sys
import requests
import json
import yaml
import markdown
import codecs

if len(sys.argv) < 2:
    print "Please pass an API key as argument"
    exit()

API_KEY = sys.argv[1]
BASE_URL = 'https://docsapi.helpscout.net/v1'

SITES = {
    'en': {
        'site_id': '546f7647e4b0f6394183b2a4' # This is taken for example from the URL in the management console
    },
    'fr': {
        'site_id': '546f7619e4b07e8a335a1480'
    }
}
# When a localized metadata or content is missing in a language, we'll fallback to that default language
DEFAULT_LANGUAGE = 'en'

CONTENT_ROOT = os.path.join(os.path.abspath(os.path.dirname(__file__)), '..', 'content')

# https://pythonhosted.org/Markdown/extensions/index.html
MARKDOWN_EXTENSIONS = [
    'markdown.extensions.tables',
    'markdown.extensions.fenced_code'
]


HTTP_AUTH = (API_KEY, 'X')

session = requests.session()

CONTENT_TYPES = {
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.png': 'image/png'
}

def handle_request_error(method):
    def wrapper(*args, **kwargs):
        try:
            res = method(*args, **kwargs)
            return res
        except requests.exceptions.HTTPError as e:
            print e
            print e.response.content
            exit(0)

    return wrapper

@handle_request_error
def api_get(entrypoint, params=None):
    res = session.get('%s/%s' % (BASE_URL, entrypoint), params=params, auth=HTTP_AUTH)
    res.raise_for_status()
    return res.json()

@handle_request_error
def api_post_json(entrypoint, payload, params=None):
    json_payload = json.dumps(payload)
    res = session.post('%s/%s' % (BASE_URL, entrypoint), params=params, data=json_payload, auth=HTTP_AUTH, headers={'Content-Type': 'application/json'})
    res.raise_for_status()
    return res

@handle_request_error
def api_put_json(entrypoint, payload, params=None):
    json_payload = json.dumps(payload)
    res = session.put('%s/%s' % (BASE_URL, entrypoint), params=params, data=json_payload, auth=HTTP_AUTH, headers={'Content-Type': 'application/json'})
    res.raise_for_status()
    return res

@handle_request_error
def api_post_file(entrypoint, file, payload, params=None):
    res = session.post('%s/%s' % (BASE_URL, entrypoint), files=file, data=payload, params=params, auth=HTTP_AUTH)
    res.raise_for_status()
    return res

@handle_request_error
def api_delete(entrypoint):
    res = session.delete('%s/%s' % (BASE_URL, entrypoint), auth=HTTP_AUTH)
    res.raise_for_status()
    return res

def load_metadata(path, lang=None):
    """
    Loads the metadata from the metadata.yaml file in the folder
    """
    # There are the properties that are separated per language, we'll remove
    # that layr of abstraction on the fly and directly return the local value
    localized_keys = ['title']

    metadata_path = os.path.join(path, 'metadata.yaml')
    if os.path.exists(metadata_path):
        metadata = yaml.load(open(metadata_path))
        if lang:
            for localized_key in localized_keys:
                # Removing the language hierarchy level
                if metadata.get(localized_key, {}).get(lang):
                    metadata[localized_key] = metadata[localized_key][lang]
                else:
                    metadata[localized_key] = metadata[localized_key][DEFAULT_LANGUAGE]
        return metadata
    else:
        return {}

def update_or_create(entrypoint, item_type, data, id=None):
    if id:
        # PUT
        return api_put_json(entrypoint+'/'+id, data, params={'reload': 'true'}).json()[item_type]['id']
    else:
        # POST
        return api_post_json(entrypoint, data, params={'reload': 'true'}).json()[item_type]['id']

def retrieve_existing_items(entrypoint, params=None):
    return {item['name'].lower(): item['id'] for item in api_get(entrypoint, params=params)[entrypoint.split('/')[-1]]['items']}

def purge_obsolete(entrypoint, item_type, existing_remote_items, local_names):
    # Item names need to be compared case-insensitively, because HelpScout considers them unique
    local_names = [name.lower() for name in local_names]
    for remote_item_name, remote_item_id in existing_remote_items.items():
        if not remote_item_name.lower() in local_names:
            print 'Deleting %s %s' % (item_type, remote_item_name)
            api_delete('%s/%s' % (entrypoint, remote_item_id))


def push_documentation(lang):
    site_id = SITES[lang]['site_id']

    # At each level we retrieve the list of existing items and create an associative array  (Name => HelpScout ID)
    # This way we know if what we want to post already exists (in that case we update it)
    # It also allows us to purge the existing items that don't exist anymore
    existing_collections = retrieve_existing_items('collections', params={'siteId': site_id})
    local_collections = []

    for collection_name in os.listdir(CONTENT_ROOT):
        collection_path = os.path.join(CONTENT_ROOT, collection_name)
        collection_metadata = load_metadata(collection_path, lang)
        collection_title = collection_metadata.get('title', collection_name)
        if os.path.isdir(collection_path):
            local_collections.append(collection_title)
            existing_id = existing_collections.get(collection_title.lower())
            if existing_id:
                print 'Updating collection %s' % collection_title
            else:
                print 'Creating collection %s' % collection_title
            collection_id = update_or_create('collections', 'collection', {
                'siteId': site_id,
                'name': collection_title,
                'order': collection_metadata.get('order', 1)
            }, id=existing_id)

            existing_categories = retrieve_existing_items('collections/%s/categories' % collection_id)
            local_categories = ['Uncategorized']

            # Categories
            for category_name in os.listdir(collection_path):
                category_path = os.path.join(collection_path, category_name)
                category_metadata = load_metadata(category_path, lang)
                category_title = category_metadata.get('title', category_name)
                if os.path.isdir(category_path):
                    local_categories.append(category_title)
                    existing_id = existing_categories.get(category_title.lower())
                    if existing_id:
                        print '\tUpdating category %s' % category_title
                    else:
                        print '\tCreating category %s' % category_title
                    category_id = update_or_create('categories', 'category', {
                        'collectionId': collection_id,
                        'name': category_title,
                        'order': category_metadata.get('order', 1)
                    }, id=existing_id)

                    existing_articles = retrieve_existing_items('categories/%s/articles' % category_id)
                    local_articles = []

                    # Articles
                    for article_name in os.listdir(category_path):
                        article_path = os.path.join(category_path, article_name, lang)
                        if not os.path.exists(article_path):
                            # If there is no localized version of the article, use the one from the default language
                            article_path = os.path.join(category_path, article_name, DEFAULT_LANGUAGE)
                        article_metadata = load_metadata(article_path)
                        article_title = article_metadata.get('title', article_name)
                        if os.path.isdir(article_path):
                            local_articles.append(article_title)
                            existing_id = existing_articles.get(article_title.lower())
                            if existing_id:
                                print '\t\tUpdating article %s' % article_title
                            else:
                                print '\t\tCreating article %s' % article_title
                            with codecs.open(os.path.join(article_path, 'article.md'), "r", "utf-8") as article_file:
                                article_content = article_file.read()

                            article_content_html = markdown.markdown(article_content, extensions=MARKDOWN_EXTENSIONS)
                            article_id = update_or_create('articles', 'article', {
                                'collectionId': collection_id,
                                'categories': [category_id],
                                'name': article_title,
                                'status': 'published',
                                'text': article_content_html
                                }, id=existing_id)

                            # Upload the assets if they exist
                            images_path = os.path.join(article_path, '..', 'images')
                            if os.path.exists(images_path) and os.path.isdir(images_path):
                                images = {}
                                # Upload each image
                                for image in os.listdir(images_path):
                                    if image != '.DS_Store':
                                        image_url = api_post_file('assets/article', {
                                            'file': (image, open(os.path.join(images_path, image), 'rb'), CONTENT_TYPES.get(os.path.splitext(image)[1], None))
                                        }, {
                                            'key': API_KEY,
                                            'articleId': article_id,
                                            'assetType': 'image'
                                        }).json()['filelink']
                                        images[image] = image_url
                                # Replace the occurences with the real URL
                                for original_image, image_url in images.items():
                                    article_content_html = article_content_html.replace(' src="%s" />' % original_image, ' src="%s" />' % image_url)
                                # Update the article content with the new images
                                api_put_json('articles/%s' % article_id, {
                                    'text': article_content_html
                                })
                    purge_obsolete('articles', 'article', existing_articles, local_articles)
            purge_obsolete('categories', 'category', existing_categories, local_categories)
    purge_obsolete('collections', 'collection', existing_collections, local_collections)

if __name__ == '__main__':
    for lang in SITES.keys():
        print '* Publishing documentation - language %s' % lang.upper()
        push_documentation(lang)
