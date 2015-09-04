# -*- coding: utf-8 -*-

import os
import errno
import sys
import json
import yaml
import codecs
import shutil

DEFAULT_LANGUAGE = 'en'

CONTENT_ROOT = os.path.join(os.path.abspath(os.path.dirname(__file__)), '..', 'content')

def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError as exc: # Python >2.5
        if exc.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else: raise

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

def to_sphinx(lang, target):

    global_toc_tree = []
    for collection_name in os.listdir(CONTENT_ROOT):
        collection_path = os.path.join(CONTENT_ROOT, collection_name)
        collection_metadata = load_metadata(collection_path, lang)
        collection_title = collection_metadata.get('title', collection_name)

        if os.path.isdir(collection_path):

            global_toc_tree.append({'title': collection_title, 'path': '%s/index' % collection_name})

            collection_toc_tree = []

            # Categories
            for category_name in os.listdir(collection_path):
                category_path = os.path.join(collection_path, category_name)
                category_metadata = load_metadata(category_path, lang)
                category_title = category_metadata.get('title', category_name)

                if os.path.isdir(category_path):

                    collection_toc_tree.append({'title': category_title, 'path': '%s/index' % category_name})

                    category_toc_tree = []

                    # Articles
                    for article_name in os.listdir(category_path):
                        article_path = os.path.join(category_path, article_name, lang)
                        if not os.path.exists(article_path):
                            # If there is no localized version of the article, use the one from the default language
                            article_path = os.path.join(category_path, article_name, DEFAULT_LANGUAGE)
                        article_metadata = load_metadata(article_path)
                        article_title = article_metadata.get('title', article_name)
                        if os.path.isdir(article_path):
                    
                            mkdir_p(os.path.join(target, collection_name, category_name))

                            category_toc_tree.append({'title': article_title, 'path': '%s' % article_name})

                            with open(os.path.join(article_path, 'article.md'), 'r') as f_src, open(os.path.join(target, collection_name, category_name, '%s.md' % article_name), 'w') as f_dst:
                                cont = u'# %s\n\n' % article_title
                                f_dst.write(cont.encode('utf-8'))
                                f_dst.write(f_src.read())

                            # Copy the assets if they exist
                            images_path = os.path.join(article_path, '..', 'images')
                            if os.path.exists(images_path) and os.path.isdir(images_path):
                                for image in os.listdir(images_path):
                                    if image != '.DS_Store':

                                        with open(os.path.join(images_path, image), 'r') as f_src, open(os.path.join(target, collection_name, category_name, image), 'w') as f_dst:
                                            shutil.copyfileobj(f_src, f_dst)

                    mkdir_p(os.path.join(target, collection_name, category_name))
                    with open(os.path.join(target, collection_name, category_name, 'index.rst'), 'w') as w:
                        underlines = '_' * len(category_title)
                        cont = u'%s\n%s\n\n.. toctree::\n   :titlesonly:\n\n%s' % (category_title, underlines, '\n'.join([u'   %s <%s>' % (cat['title'], cat['path']) for cat in category_toc_tree]))
                        w.write(cont.encode('utf-8'))

            with open(os.path.join(target, collection_name, 'index.rst'), 'w') as w:
                underlines = '_' * len(collection_title)
                cont = u'%s\n%s\n\n.. toctree::\n   :maxdepth: 2\n\n%s' % (collection_title, underlines, '\n'.join([u'   %s <%s>' % (cat['title'], cat['path']) for cat in collection_toc_tree]))
                w.write(cont.encode('utf-8'))

    with open(os.path.join(target, 'index.rst'), 'w') as w:
        title = 'Welcome to OpenDataSoft documentation!'
        underlines = '_' * len(title)
        cont = u'%s\n%s\n\n.. toctree::\n   :maxdepth: 2\n\n%s\n\nIndices and tables\n==================\n\n* :ref:`genindex`\n* :ref:`search`\n' % (title, underlines, '\n'.join([u'   %s <%s>' % (cat['title'], cat['path']) for cat in global_toc_tree]))
        w.write(cont.encode('utf-8'))

if __name__ == '__main__':
    for lang in ['en', 'fr']:
        to_sphinx(lang, os.path.join(os.path.abspath(os.path.dirname(__file__)), '..', 'docs-%s' % lang, 'source'))
