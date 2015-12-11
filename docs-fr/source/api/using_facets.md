# Using facets

A facet can be considered as a valued tag associated with a record. For instance, let's say a dataset has a facet "City". A record in this dataset could have the value "Paris" for the "City" facet.

Facets are for instance used for building the left navigation colonne, both for dataset catalog exploration page and dataset records exploration page.

Facets are especially useful to implement guided navigation in large result sets.

### Identifying facets

By default, in dataset and record APIs, faceting is disabled. Faceting can be enabled by using the "facet" API parameter, specifying the name of the facet to retrieve.

In the dataset APIs, facets are the same for all datasets and are the following:

<table>
<tr><th>Facet Name</th><th>Description</th></tr>
<tr><td>modified</td><td>Last modification date</td></tr>
<tr><td>publisher</td><td>Producer</td></tr>
<tr><td>issued</td><td>First publication date</td></tr>
<tr><td>accrualperiodicity</td><td>Publication frequency</td></tr>
<tr><td>language</td><td>Language</td></tr>
<tr><td>license</td><td>Licence</td></tr>
<tr><td>granularity</td><td>Data granularity</td></tr>
<tr><td>dataquality</td><td>Data quality</td></tr>
<tr><td>theme</td><td>Theme</td></tr>
<tr><td>keyword</td><td>Keywords</td></tr>
<tr><td>created</td><td>Creation date</td></tr>
<tr><td>creator</td><td>Creator</td></tr>
<tr><td>contributor</td><td>Contributors</td></tr>
</table>

In the records API, facets are defined at field level. A field facet can be available depending on the data producer choices. Fields (retrieved for instance from the Dataset Lookup API) for which faceting is available can be easily identified:

    ...
    "fields": [
        ...
        {
            "label": "City",
            "type": "text",
            "name": "city",
            "annotations": [
                {
                    "name": "facet"
                }
            ]
        },
        ...
        
When faceting is enabled, facets are returned in the response after the result set.

Every facet has a display value ("name" attribute) and a refine property ("path" attribute) which can be used to alter the query context.

Facets are hierarchical, for instance, a year facet will contain months facets and a month facet will contain days facets.

Example of a facet tree:

    "facet_groups": [
            {
                "name": "modified",
                "facets": [
                    {
                        "name": "2012",
                        "path": "2012",
                        "facets": [
                            {
                                "name": "09",
                                "path": "2012/09",
                                "facets": [
                                    {
                                        "name": "11",
                                        "path": "2012/09/11"
                                    }
                                ...
                        
Every facet contains two additional information:

The "count" attribute contains the number of hits that have the same facet value.
The "state" attribute defines whether the facet is currently used in a "refine" or in an "exclude". Possible values for the state attribute are:

* **displayed**: no refine nor exclude
* **refined**: refine
* **excluded**: exclude

Example of a facet with all its attributes:

    facet_groups: [
        {
            name: "modified",
            count: 822,
            facets: [
                {
                    name: "2013",
                    path: "2013",
                    count: 154,
                    state: "displayed"
                },
                {
                    name: "2014",
                    path: "2014",
                    count: 120,
                    state: "displayed"
                }
        ]
    }
                            
### Refining

It is possible to limit the result set by refining on a given facet value. To do so, use the following API parameter: `refine.FACETNAME=FACETVALUE`.

For example: <http://public.opendatasoft.com/api/datasets/1.0/search?refine.modified=2013>

In the returned result set, only the datasets modified in 2011 will be returned.

As the refinement occurs on the "year" and as the "modified" facet is hierarchical, the sub-level is returned; results are dispatched in the "month" sub value:

    facet_groups: [
        {
            name: "modified",
            count: 462,
            facets: [
                {
                    name: "2013",
                    path: "2013",
                    count: 154,
                    state: "refined",
            facets: [
                {
                    name: "08",
                    path: "2013/08",
                    count: 74,
                    state: "displayed"
                },
                            
### Excluding

Using the same principle as above, it is possible to exclude from the result set the hits matching a given value of a given facet. To do so, use the following API parameter: `exclude.FACETNAME=FACETVALUE`.

For example: <http://public.opendatasoft.com/api/datasets/1.0/search?exclude.modified=2013>

Only results that have not been modified in 2011 will be returned.

### Disjunctive facetting

By default, facettiing is conjunctive. This means that the following context will lead down to no results: <http://public.opendatasoft.com/api/datasets/1.0/search?refine.modified=2013&refine.modified=2014>.

You can enable disjunctive facetting using the following API parameter: `disjunctive.FACETNAME=true`.

For example: <http://public.opendatasoft.com/api/datasets/1.0/search?refine.modified=2013&refine.modified=2014&disjunctive.modified=true>