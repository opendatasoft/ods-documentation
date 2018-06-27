import requests
from txclib.parsers import status_parser
from txclib.project import Project
from txclib.utils import find_dot_tx

project_slug = 'documentation-5'
organization_slug = 'opendatasoft'


prj = Project(find_dot_tx())

api_auth = prj.getset_host_credentials('https://api.transifex.com')

offset = 0
remote_resources = []
while True:
  r = requests.get('https://api.transifex.com/organizations/{}/projects/{}/resources/?offset={}'.format(organization_slug, project_slug, offset), auth=api_auth)
  results = r.json()
  if len(results) == 0:
    break
  remote_resources.extend(results)
  offset += 100

remote_resources_set = set([res['slug'] for res in remote_resources])

local_resources_set = set([res.split('.')[1] for res in prj.get_chosen_resources([])])

print "remote resources count: {}".format(len(remote_resources_set))
print "local resources count: {}".format(len(local_resources_set))

outdated_resources = remote_resources_set - local_resources_set

for res_slug in outdated_resources:
    print "deleting outdated resource {}".format(res_slug)
    # it seems delete is currently not working on the new api
    # r = requests.delete('https://api.transifex.com/organizations/{}/projects/{}/resources/{}/'.format(organization_slug, project_slug, res_slug), auth=api_auth)
    r = requests.delete('https://www.transifex.com/api/2/project/{}/resource/{}/'.format(project_slug, res_slug), auth=api_auth)
