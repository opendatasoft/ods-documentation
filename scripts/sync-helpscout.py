import requests

BASE_URL = 'https://docsapi.helpscout.net/v1'
API_KEY = '39a5b61a92cb79bf5fab5a44421daa42c896b1f9'

HTTP_AUTH = (API_KEY, 'X')

session = requests.session()

def list_sites():

	res = session.get('%s/sites' % BASE_URL, auth = HTTP_AUTH).json()

	print [(item['id'], item['cname']) for item in res['sites']['items']]

def list_collections():

	res = session.get('%s/collections' % BASE_URL, auth = HTTP_AUTH).json()

	print [(item['id'], item['siteId'], item['slug']) for item in res['collections']['items']]

def list_articles(collectionId):

	res = session.get('%s/collections/%s/articles' % (BASE_URL, collectionId), auth = HTTP_AUTH).json()

	print res

	print [(item['id'], item['collectionId'], item['slug'], item['name']) for item in res['articles']['items']]

	print res.json()


import sys
if __name__ == '__main__':

	if len(sys.argv) >= 2:

		command = sys.argv[1]

		if command == 'list_sites':
			list_sites()
		elif command == 'list_collections':
			list_collections()
		elif command == 'list_articles':
			list_articles(sys.argv[2])
		else:
			raise Exception('Unknown command: %s' % command)

	else:
		print 'Usage: sync-helscout.py <list_sites|list_collections|list_articles>'
		sys.exit(1)