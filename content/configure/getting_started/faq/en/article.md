### What is OpenDataSoft?
OpenDataSoft is a turnkey SaaS platform developed for business users to easily share, publish and reuse structured datasets. Look at this [article](/entries/84740363-Why-OpenDataSoft-) for a more detailed presentation.

### Is OpenDataSoft open source?
OpenDataSoft is not open source. 

OpenDataSoft is selling a service, not a software. However, some parts of the stack are going to be open source. 

In the short term, we will fully release the data exploration front-end, including search and data visualization widgets. 

In the long term, we might want to open source our data collection and processing framework. 

We are also already contributing to the [Elasticsearch](http://www.elasticsearch.org/) ecosystem as we have published Open Source geo related aggregation plugins (more details [here](https://github.com/opendatasoft)).

### Is the OpenDataSoft team managing data on behalf of its customers?
No. 

OpenDataSoft sells a turnkey solution. Users manage their datasets themselves. Of course, the OpenDataSoft support team is more than willing to help them handling complex / specific data management issues.

### I'm representing a public administration. My country has already setup an Open Data initiative. Why should I have my own data portal?
Open Data is about making data that has been produced by public administrations available to citizens. But most of the time, one may want to go beyond simple delivery of raw files and:

* Contextualize & increase the value of data
* Make data easy-to-understand for citizens
* Provide open services to an ecosystem of developers/reusers

To that extent, having a data management tool tailored to your needs is mandatory, the important part being that data produced by your local platform should be referenced on your country's Open Data portal.

### If I put datasets in OpenDataSoft, will they automatically be available to everyone on the Web?
No. 

The OpenDataSoft platform can be used for both public and private data management projects. A given platform can even host public and private datasets. It is also possible to define the ACL of a records set at dataset level.

### I used the free trial but could only load CSV and Excel files, are these the only file formats you support?
OpenDataSoft playground (our free trial version) only supports CSV and Excel files. But the full-featured platform supports many more file formats:

* GeoJSON
* KML
* Shapefile
* OSM archives (OpenStreetMap)
* GTFS archives
* Remotely stored files for any of the above formats (HTTP or FTP)

Specific format parsers can also be made available by the OpenDataSoft team for specific requirements. It is also possible to ask for the development of a specific connector that would directly connect to an internal information system endpoint providing data through a proprietary API.

### What metadata standards does OpenDataSoft support?
OpenDataSoft natively uses a subset of [DCAT](http://www.w3.org/TR/vocab-dcat/) to describe datasets. The following metadata are available: **title**, **description**, **language**, **theme**, **keyword**, **license**, **publisher**, **references**.

It is possible to activate the full DCAT template, thus adding the following additional metadata: **created**, **issued**, **creator**, **contributor**, **accrual periodicity**, **spatial**, **temporal**, **granularity**, **data quality**.

A full [INSPIRE](http://inspire.ec.europa.eu/index.cfm/pageid/101) template is also available and can be activated on demand.

The creation of a fully custom metadata template can also be done.

### How many datasets can I create?
There is virtually no limit in terms of number of datasets you can create as the business model is based on the number of records stored, not the number of datasets. There is a default limit, depending on the size of your plan, set for security reasons. If you ever reach this limit, please contact your OpenDataSoft support team to extend it.

### How could I modify the look & feel of my OpenDataSoft domain?
As a domain administrator, you can modify the color palette of your portal. For more advanced customizations, for the time being, this has to go through OpenDataSoft. OpenDataSoft shall release new ways to customize a portal in the near future (upload logos and icons, customize CSS).

### How can other people collaborate on dataset configuration?
Use the security tab to give other users or group of users a write access to the dataset. These users must also have access to the domain to access your dataset. If this is not the case already, contact your domain administrator.

### How can I transform and enrich my datasets?
A rich set of processing features is made available in the publishing console. Simply hit the **Add Processor** button.

### Can I geocode a full-text address?
Yes. 

OpenDataSoft supports Google and ESRI geocoding services. However, OpenDataSoft doesn't come with geocoding API keys. The domain administrator has to configure a geocoding API key for one of these services in the domain configuration page.

The geocoders are not activated by default. Please contact OpenDataSoft support for more details.

### I have geocoded data in my dataset but the map view doesn't display anything. What went wrong?
Remember that a **Geo Point 2D** field values must be formatted in a specific way: `latitude,longitude` (e.g. `48.2567,3.7689`).

### What is a facet?

Facets are the backbone of most of the features made available by the OpenDataSoft platform. A facet is simply a field which has been given specific filtering and aggregation capabilities.

![Facet configuration](facet-configuration-en.jpg)

In the example above, the fields **country** and **year** have been defined as facets (notice the filter button next to the type select).

Facets can be seen as dimensions of a dataset. Facets can be defined on the following field types: **date**, **datetime**, **text**, **int**, **decimal**.

Facets shall only be configured for fields that have a small number of different values compared to the number of records in a dataset. For instance, defining a facet on an field that would uniquely identify a record is useless as filtering on this field would't bring any added value.

Facets are then used in a couple of places.

You can first use them to filter dataset records in the explore console.

![Refine on facets](facet-explore-en.jpg)

As dimensions, facets support aggregations. You can thus use them to build advanced charts, as in the example below.

![Build charts with facets](facet-chart-en.jpg)


### I'm using OpenDataSoft playground. How could I run my own data portal?
Please send a message to <contact@opendatasoft.com>. 

We will be happy to discuss your needs and to propose you one of our plans.
