import os
import requests
import json
import yaml
import markdown
import codecs

BASE_URL = 'https://docsapi.helpscout.net/v1'
API_KEY = '39a5b61a92cb79bf5fab5a44421daa42c896b1f9'
SITE_ID = '542430d2e4b0bea6e959368a' # This is taken for example from the URL in the management console

CONTENT_ROOT = os.path.join(os.path.abspath(os.path.dirname(__file__)), '..', 'content')


HTTP_AUTH = (API_KEY, 'X')

session = requests.session()

CONTENT_TYPES = {
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
    '.png': 'image/png'
}

def api_get(entrypoint, params=None):
    res = session.get('%s/%s' % (BASE_URL, entrypoint), params=params, auth=HTTP_AUTH)
    res.raise_for_status()
    return res.json()

def api_post_json(entrypoint, payload, params=None):
    json_payload = json.dumps(payload)
    res = session.post('%s/%s' % (BASE_URL, entrypoint), params=params, data=json_payload, auth=HTTP_AUTH, headers={'Content-Type': 'application/json'})
    res.raise_for_status()
    return res

def api_put_json(entrypoint, payload, params=None):
    json_payload = json.dumps(payload)
    res = session.put('%s/%s' % (BASE_URL, entrypoint), params=params, data=json_payload, auth=HTTP_AUTH, headers={'Content-Type': 'application/json'})
    res.raise_for_status()
    return res

def api_post_file(entrypoint, file, payload, params=None):
    res = session.post('%s/%s' % (BASE_URL, entrypoint), files=file, data=payload, params=params, auth=HTTP_AUTH)
    res.raise_for_status()
    return res

def api_delete(entrypoint):
    res = session.delete('%s/%s' % (BASE_URL, entrypoint), auth=HTTP_AUTH)
    res.raise_for_status()
    return res

def load_metadata(path):
    """
    Loads the metadata from the metadata.yaml file in the folder
    """
    metadata_path = os.path.join(path, 'metadata.yaml')
    if os.path.exists(metadata_path):
        return yaml.load(open(metadata_path))
    else:
        return {}


def push_documentation():
    # Step 1: Wipe clean the documentation
    # Note: It seems that deleting every collection is enough
    result = api_get('collections', params={'siteId': SITE_ID})
    for collection in result['collections']['items']:
        api_delete('collections/%s' % collection['id'])

    print 'Wiped the previous documentation on Help Scout'

    # Step 2: Recreate the documentation (collections, categories, articles)

    # Collections
    for collection_name in os.listdir(CONTENT_ROOT):
        collection_path = os.path.join(CONTENT_ROOT, collection_name)
        collection_metadata = load_metadata(collection_path)
        if os.path.isdir(collection_path):
            print 'Creating collection %s' % collection_name
            collection_id = api_post_json('collections', {
                'siteId': SITE_ID,
                'name': collection_metadata.get('title', collection_name),
                'order': collection_metadata.get('order', 1)
            }, params={'reload': 'true'}).json()['collection']['id']

            # Categories
            for category_name in os.listdir(collection_path):
                category_path = os.path.join(collection_path, category_name)
                category_metadata = load_metadata(category_path)
                if os.path.isdir(category_path):
                    print '\tCreating category %s' % category_name
                    category_id = api_post_json('categories', {
                        'collectionId': collection_id,
                        'name': category_metadata.get('title', category_name),
                        'order': category_metadata.get('order', 1)
                    }, params={'reload': 'true'}).json()['category']['id']

                    # Articles
                    for article_name in os.listdir(category_path):
                        article_path = os.path.join(category_path, article_name)
                        article_metadata = load_metadata(article_path)
                        if os.path.isdir(article_path):
                            print '\t\tCreating article %s' % article_name
                            with codecs.open(os.path.join(article_path, 'article.md'), "r", "utf-8") as article_file:
                                article_content = article_file.read()

                            article_content_html = markdown.markdown(article_content)
                            article_id = api_post_json('articles', {
                                'collectionId': collection_id,
                                'categories': [category_id],
                                'name': article_metadata.get('title', article_name),
                                'status': 'published',
                                'text': article_content_html
                                }, params={'reload': 'true'}).json()['article']['id']


                            # Upload the assets if they exist
                            images_path = os.path.join(article_path, 'images')
                            if os.path.exists(images_path) and os.path.isdir(images_path):
                                images = {}
                                # Upload each image
                                for image in os.listdir(images_path):
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


import sys
if __name__ == '__main__':
    push_documentation()
