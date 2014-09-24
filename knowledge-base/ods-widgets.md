## Getting Started with OpenDataSoft Widget Library

OpenDataSoft offers a library of components ready to be used on any Angular 1.2+ page in order to interact with any data on the platform. It can be used for multiple purposes:

- advanced editorial customization for OpenDataSoft customers (for example a homepage)
- interactive dashboards that can interact over multiple datasets from multiple sources at the same time
- completely custom application that will benefit from the same library of standard visualization that is used in OpenDataSoft interfaces

_Note that this library is intended to be distributed in Open Source so that integrators and customers can build something completely outside of the platform, which should be trivial due to the absence of backend._

_Note also that this library is built on top of AngularJS._

### Understanding "contexts"

Most ODS Widgets require a "context" argument. A context can be either a "dataset context" or a "catalog context".
A given context can be used by several directives, which will ensure they are synchronized if one of them changes one of the parameters (for example, filtering on a date).

A context is attached to an HTML tag and applies to its parents.

##### Catalog Context

A Catalog Context represents the content of an OpenDataSoft domain, in other words the catalog of datasets available. 

    <ods-catalog-context context="public" public-domain="public">
        <ods-tag-cloud context="public" facet-name="keyword"></tag-cloud>
    </ods-catalog-context>

You can either use a `ods-catalog-context` tag, or use it as an attribute on an existing tag.

    <div ods-catalog-context context="trees" trees-domain="paris">
    
The `context` attribute defines the name of the new context. You can define several contexts at once by separating them with commas.

Then use the `<CONTEXTNAME>-domain` attribute to define the domain for this context.

    <ods-catalog-context context="paris,london" paris-domain="paris" london-domain="london">

A domain can be either:

 - a simple string ("public"), in which case it is assumed to be the name of an OpenDataSoft domain; the API URLs will be based on `https://<domain>.opendatasoft.com/api/`
 - an host ("public.mydataportal.com"), in which case the API URLs will be based on `https://<domain>/api/`
 - a complete address ("http://public.mydataportal.com"), in which case the API URLs will be based on `<domain>/api/`

If you want to use an API Key to access a restricted domain, use `<CONTEXTNAME>-apikey` to set it.

You can set query parameters such as refines using `CONTEXTNAME-parameters` and an object. The object can contain variables.

##### Dataset Context

A Dataset Context represents a given dataset on a given OpenDataSoft domain.
It is using the `dataset-context` tag or attribute.

    <ods-dataset-context context="monitoring" monitoring-dataset="playground-api-monitoring">
        <ods-highcharts chart-type="column" context="monitoring" expression-y="size_res" field-x="request_time" function-y="AVG" timescale="day">
        </ods-highcharts>
    </ods-dataset-context>

It takes a `domain` which is similar to the `domain` attribute of the Catalog Context.
It also takes a `dataset` attribute which is the identifier (Dataset ID) of a dataset on the domain.

If you want to use an API Key to access a restricted domain, use `CONTEXTNAME-apikey` to set it.
You can set query parameters such as refines using `CONTEXTNAME-parameters` and an object. The object can contain variables.


    <ods-dataset-context context="monitoring" monitoring-dataset="playground-api-monitoring" monitoring-parameters="{'refine.domain': 'public', 'query': query}">
    </ods-dataset-context>

### Widgets

#### Data

##### Facet enumerator

    <ods-facet-enumerator context="context" facet="theme">
        <a ng-href="/explore/?refine.theme={{item.path}}" target="_self">
            {{item.name}}
        </a>
    </ods-facet-enumerator>
    
This widget enumerates the values ("categories") of a facet and repeats the template for each of them. For each facet category, the following AngularJS variables are available:

 - item.name : the label of the category
 - item.path : the path to use to refine on this category
 - item.state : "displayed" or "refined"
 - item.count : the number of records in this category

Parameters:

 - **facet**: the name of the facet to enumerate on

##### Timescale

    <ods-timescale context="monitoring"></ods-timescale>
    
This widget displays four links to allow you to filter the data in the context to the last day, last week, last month or last year.

Parameters:

 - **time-field**: the name of the date or datetime field to use for the filtering. If the parameter is not filled, and the dataset has exactly one date or datetime field, then it will be used.

##### Table view

    <ods-table context="monitoring"></ods-table>
    
This widget displays a table view of the dataset records, with infinite scroll.

Parameters:

- **displayed-fields**: (optional) A comma-separated list of fields to display.
- **sort**: (optional) The initial sort when the widget is loaded (e.g. "-field")

##### Map view

    <ods-map context="monitoring"></ods-map>
    
This widget displays a map view of the dataset records.
You can include the template of the tooltip inside the tag. To be documented later (exposed variables...).

Parameters:

 - **auto-resize**: if set to "true", then the map will try to always be resized to have its bottom match the bottom of the browser window. Use it for example if the map is the only widget on the page.
 - **location**: (optional) The original position of the map, as "zoom,lat,lng", e.g. "12,48.85891,2.32924"

##### Highcharts


    <ods-highcharts chart-type="column" context="monitoring" expression-y="size_res" field-x="request_time" function-y="AVG" timescale="day" maxpoints="10"></ods-highcharts>

    <ods-highcharts chart-config="'eyJ0aW1lc2NhbGUiOiIiLCJxdWVyaWVzIjpbeyJjb25maWciOnsiZGF0YXNldCI6InBsYXlncm91bmQtYXBpLW1vbml0b3JpbmciLCJvcHRpb25zIjp7InRhYiI6ImFuYWx5emUifX0sInhBeGlzIjoiZG9tYWluX2lkIiwic29ydCI6IiIsIm1heHBvaW50cyI6NTAsImNoYXJ0cyI6W3sieUF4aXMiOiJzaXplX3JlcyIsInlMYWJlbCI6Ik1veWVubmUgc2l6ZV9yZXMiLCJmdW5jIjoiQVZHIiwiY29sb3IiOiIjMmY3ZWQ4IiwidHlwZSI6ImJhciIsImV4dHJhcyI6e319XX1dLCJ4TGFiZWwiOiJkb21haW5faWQifQ=='" context="monitoring"></ods-highcharts>

    <ods-highcharts context="monitoring" chart-config="{'timescale':'','queries':[{'config':{'dataset':'playground-api-monitoring','options':{'tab':'analyze'}},'xAxis':'domain_id','sort':'','maxpoints':50,'charts':[{'yAxis':'size_res','yLabel':'Moyenne size_res','func':'AVG','color':'#2f7ed8','type':'bar','extras':{}}]}],'xLabel':'domain_id'}"></ods-highcharts>

This widget can be used to integrate a visualization based on Highcharts. It requires Highcharts 3.0+ to be loaded on the page. The widget requires a Dataset Context.

Parameters:

 - **chart-config**: a complete configuration, as a object or as a base64 string. The parameter directly expects an angular expression, so a base64 string needs to be quoted. If this parameter is present, all the other parameters are ignored, and the chart will not change if the context changes.
 - **field-x**: name of the field used for the X axis
 - **expression-y**: an expression for the Y axis, typically a field name. Optional if the function (function-y) is 'COUNT'. See OpenDataSoft Analysis API documentation for more information. 
 - **function-y**: a function applied to the expression for the Y axis: AVG, COUNT, MIN, MAX, STDDEV, SUM
 - **timescale**: If the X axis is time-based, then you can specify the timescale (year, month, week, day, hour)
 - **chart-type**: One of the chart types available in Highcharts
 - **color**: The color or colors to draw the chart in, as hex color code. If you need to specify several colors (in case of a pie chart), use comma as a separator.
 - **labelX**: Label for the X axis
 - **labelY**: Label for the Y axis
 - **sort**: Sorting the data in the chart: use "x" or "-x" to sort or reverse sort on the X axis, and "y" or "-y" to sort or reverse sort on the Y axis.
 - **maxpoints**: Maximum number of points to chart. Optional, defaults to 50.

##### Multi Highcharts

    <ods-multi-highcharts chart-config="'eyJ0aW1lc2NhbGUiOiJkYXkiLCJwZXJpb2RpY2l0eSI6IiIsInF1ZXJpZXMiOlt7ImNvbmZpZyI6eyJkYXRhc2V0IjoidGl0cmVzLWRpZmZ1c2VzLXN1ci02LXN0YXRpb25zLWRlLXJhZGlvcy1mcmFuY2Fpc2VzLTEzMDEyMDE0LTA1MDMyMDE0Iiwib3B0aW9ucyI6eyJ0YWIiOiJhbmFseXplIiwiaGlkZVRhYnMiOnRydWV9fSwieEF4aXMiOiJ0c3RhbXAiLCJzb3J0IjoiIiwibWF4cG9pbnRzIjoiIiwiY2hhcnRzIjpbeyJ5QXhpcyI6IiIsInlMYWJlbCI6IkNvbXB0ZSIsImZ1bmMiOiJDT1VOVCIsImNvbG9yIjoiIzJmN2VkOCIsInR5cGUiOiJsaW5lIiwiZXh0cmFzIjp7fX1dfV0sInhMYWJlbCI6IiAifQ=='" context="mydomain"></ods-multi-highcharts>

This widget can display a multiple chart generated using the "Charts" interface of OpenDataSoft. The widget requires a Catalog Context.

Parameters:

 - **chart-config**: a complete configuration, as a object or as a base64 string. The parameter directly expects an angular expression, so a base64 string needs to be quoted.

#### High-level widgets

##### Searchbox

    <ods-searchbox placeholder="Find..."></ods-searchbox>

Shows a searchbox that redirects a search on Explore.

Parameters:

 - **placeholder**: the text to display as a placeholder when the input is empty

##### Last Datasets Feed

    <ods-last-datasets-feed context="catalog"></ods-last-datasets-feed>
    
This widget shows a list of the 5 datasets most recently modified.

##### Most Popular Datasets

    <ods-most-popular-datasets context="catalog"></ods-most-popular-datasets>

This widgets shows a list of the 5 datasets with the highest download count.

##### Last Reuses Feed

    <ods-last-reuses-feed context="catalog"></ods-last-reuses-feed>

This widgets shows a list of the 5 last reuses added on the domain.

##### Theme Boxes
    
    <ods-theme-boxes context="catalog"></ods-theme-boxes>

This widgets shows an horizontal bar containing the pictos of the themes used by the datasets on the domain.

#### Stand-alone widgets

##### Twitter Timeline

    <ods-twitter-timeline widget-id="449538900357061120"></ods-twitter-timeline>

Parameters:

 - **widget-id**: the identifier of the Twitter widget you want to integrate. See https://twitter.com/settings/widgets for more information.

##### Disqus

    <ods-disqus></ods-disqus>

This widget shows a Disqus panel where users can comment the page.

Parameters:

 - **shortname**: the Disqus shortname for your account. If you are using this widget on the OpenDataSoft platform, this parameter is already filled for you if you filled it in your Domain configuration
 - **identifier**: (optional) by default, the discussion is tied to the URL. If you want to be independant from the URL, or share the discussion between two or more pages, you can define an identifier in this parameter. This is recommended to always do it from the start.

### Page examples

#### Homepage

CSS Code

    .access {
        text-align: center;
    }
    .explore-link {
        text-align: center;
        font-size: 1.8em;
        margin-bottom: 20px;
        display: block;
    }
    
HTML Code
    
    <ods-catalog-context class="container-fixed" context="catalog" style="display: block">
        <div class="whitebox">
            <a class="explore-link" href="/explore/" target="_self">
                <i class="icon-home">
                </i>
                Explorer les données
            </a>
            <ods-theme-boxes context="catalog">
            </ods-theme-boxes>
        </div>
        <div class="access">
            <ods-searchbox placeholder="Find...">
            </ods-searchbox>
        </div>
        <div class="row">
            <div class="half">
                <div class="whitebox">
                    <h2>
                        Dernières modifications
                    </h2>
                    <ods-last-datasets-feed context="catalog">
                    </ods-last-datasets-feed>
                </div>
            </div>
            <div class="half">
                <div class="whitebox">
                    <h2>
                        Données les plus populaires
                    </h2>
                    <ods-most-popular-datasets context="catalog">
                    </ods-most-popular-datasets>
                </div>
            </div>
        </div>
    </ods-catalog-context>
