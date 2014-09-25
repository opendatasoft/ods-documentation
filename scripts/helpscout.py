import os
import requests
import json

BASE_URL = 'https://docsapi.helpscout.net/v1'
API_KEY = '39a5b61a92cb79bf5fab5a44421daa42c896b1f9'
SITE_ID = '542430d2e4b0bea6e959368a' # This is taken for example from the URL in the management console

CONTENT_ROOT = os.path.join(os.path.abspath(os.path.dirname(__file__)), '..', 'content')


HTTP_AUTH = (API_KEY, 'X')

session = requests.session()

def api_get(entrypoint, params=None):
    res = session.get('%s/%s' % (BASE_URL, entrypoint), params=params, auth=HTTP_AUTH)
    res.raise_for_status()
    return res.json()

def api_post(entrypoint, payload, params=None):
    json_payload = json.dumps(payload)
    res = session.post('%s/%s' % (BASE_URL, entrypoint), params=params, data=json_payload, auth=HTTP_AUTH, headers={'Content-Type': 'application/json'})
    res.raise_for_status()
    return res

def api_delete(entrypoint):
    res = session.delete('%s/%s' % (BASE_URL, entrypoint), auth=HTTP_AUTH)
    res.raise_for_status()
    return res


def push_documentation():
    # Step 1: Wipe clean the documentation
    # Note: It seems that deleting every collection is enough
    result = api_get('collections', params={'siteId': SITE_ID})
    for collection in result['collections']['items']:
        api_delete('collections/%s' % collection['id'])

    print 'Wiped the previous documentation on Help Scout'

    # Step 2: Recreate the documentation (collections, categories, articles)
    print CONTENT_ROOT
    for collection_name in os.listdir(CONTENT_ROOT):
        collection_path = os.path.join(CONTENT_ROOT, collection_name)
        if os.path.isdir(collection_path):
            print 'Creating collection %s' % collection_name
            collection_id = api_post('collections', {
                'siteId': SITE_ID,
                'name': collection_name
            }, params={'reload': 'true'}).json()['collection']['id']

            for category_name in os.listdir(collection_path):
                category_path = os.path.join(collection_path, category_name)
                if os.path.isdir(category_path):
                    print '\tCreating category %s' % category_name
                    category_id = api_post('categories', {
                        'collectionId': collection_id,
                        'name': category_name
                    }, params={'reload': 'true'}).json()['category']['id']


import sys
if __name__ == '__main__':
    push_documentation()
