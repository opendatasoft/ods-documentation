Integrating content
===================

When editing your page in **expert mode**, you are able to integrate other content directly in your page.


Embedding an OpenDataSoft visualization
---------------------------------------
When you are browsing a visualization on an OpenDataSoft portal (including your own), you can see below a few options
to share the content, including "Embed", which will provide you with a little HTML code that you can paste in your page.
By doing so, you will embed the visualization inside your page.

.. ifconfig:: language == 'en'

  .. image:: images/integrate_map--en.png

.. ifconfig:: language == 'fr'

  .. image:: images/integrate_map--fr.png


Embedding a Twitter timeline
----------------------------
If you have an account on Twitter, you can create Twitter "widgets" from your Twitter account page, which are designed to be
integrated in other websites (like a blog). When you create a widget, Twitter provides you with a little "code" to paste in your
HTML code. Due to security concerns, JavaScript is blocked in OpenDataSoft pages editor, so you can't directly use the code provided
by Twitter. However, we provide an OpenDataSoft widget to achieve this instead.

First, you need to capture the "Widget ID", which is present in the first line of the code, in the ``data-widget-id`` attribute:

.. code-block:: html

    <a class="twitter-timeline" data-dnt="true" href="**https://twitter.com/hashtag/opendata**" data-widget-id="12341234123412341234">My tweets</a>

In this example, the Widget ID is "12341234123412341234".

Then, add this widget in your page, using your Widget ID in the ``widget-id`` attribute:

.. code-block:: html

    <ods-twitter-timeline widget-id=""12341234123412341234></ods-twitter-timeline>


Embedding other third-party content
-----------------------------------
Services like YouTube often provides ways to embed their content into other websites, under the form of a pastable code.
Due to security concerns, we don't allow users to write JavaScript into pages, and some of these embed codes may be done in JavaScript,
which would therefore not work on our pages; but most services provide a code based on "iframes" which is fine. Working embeds include YouTube,
Vimeo, or Dailymotion.


Using widgets
-------------

When editing your page content in expert mode, you may want to use the ODS-Widgets library, which is a set of components,
available as HTML elements, allowing you to natively integrate data visualizations in your page code, and building interactive
pages by combining widgets together.

The ODS-Widgets library is an open source, AngularJS-based framework developed and maintained by OpenDataSoft on
`GitHub <https://github.com/opendatasoft/ods-widgets>`_. It comes with a complete and comprehensive
`online documentation <https://opendatasoft.github.io/ods-widgets/docs/>`_.

It can be used directly in your domain's content pages, or in third party Web sites as a standalone toolkit.

.. admonition:: Note
   :class: note

   Despite being based on AngularJS, the ODS-Widgets is designed to be used as a set of HTML elements, and are therefore entirely used in HTML code, with no JavaScript to write. It is therefore usable by anyone with a few notions of HTML, and doesn't require development skills. Moreover, many visualizations from OpenDataSoft provide the equivalent widgets code in real time when you use them from the portal, so you can learn by starting from the result of a visualization and iterate from there.

On top of all the widgets offered by the `ods-widgets <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ library,
a few additional directives are available for use within the content pages on the platform. Contrary to the widgets,
these cannot be used on third-party websites for they are tightly coupled with the platform.


Widgets list
~~~~~~~~~~~~

odsAggregation
""""""""""""""

 - This widget exposes the results of an aggregation function on a dataset field. Can be used for example to expose the average temperature of a weather dataset. The result is exposed into a new variable that you can use in other widgets or directly in your HTML.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsAggregation>`__

odsAnalysis
"""""""""""

 - This widget exposes the results of multiple aggregation based on an axis. Like for a chart, for each value of the X axis, it computes aggregation functions. It can be used with AngularJS's ngRepeat to simply build a table of analysis results.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsAnalysis>`__
 - Linked to `odsAnalysisSerie <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsAnalysisSerie>`_

odsBreezometer
""""""""""""""

 - Integrates a Breezometer "widget" using the widget key provided by Breezometer
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsBreezometer>`__

odsCalendar
"""""""""""

 - This widget can take any dataset containing at least two datetime fields and a text field and use it to display a calendar. It can load at most 1000 events (records) at once.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsCalendar>`__


odsCatalogContext
"""""""""""""""""

 - A "catalog context" represents the entire catalog (list) of datasets from a given domain, and a set of parameters used to query this catalog.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsCatalogContext>`__

odsChart
""""""""

 - This widget is the base widget allowing to display charts from OpenDataSoft datasets. A Chart is defined by one or more series that get there data from form one or more dataset represented by an Dataset Context, a type of chart and multiple parameters to fine tune the appearance of chart.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsChart>`__
 - Linked to `odsChartQuery <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsChartQuery>`_ and `odsChartSerie <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsChartSerie>`_

odsClearAllFilters
""""""""""""""""""

 - This widget displays a button which will clear all active filters in the given context.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsClearAllFilters>`__


odsDatasetCard
""""""""""""""

 - If you wrap this directive around an element or a set of element, it will display an expandable card above it to show the title and description of the dataset, along with a link to the portal that shows the dataset, and the license attached to the data.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDatasetCard>`__


odsDatasetContext
"""""""""""""""""

 - A "dataset context" represents a dataset, and a set of parameters used to query its data. A context can be used by one or more directives, so that they can share information (generally the query parameters).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDatasetContext>`__


odsDatetime
"""""""""""

 - Get the ISO local datetime and store it into a variable (into the scope).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDatetime>`__


odsDisqus
"""""""""

 - This widget shows a Disqus panel where users can comment the page.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDisqus>`__
 - More information about `Configuring disqus` /!\ to be written

odsDomainStatistics
"""""""""""""""""""

 - This widget enumerates statistic values for a given catalog and injects them as variables in the context.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDomainStatistics>`__


odsFacetResults
"""""""""""""""

 - This widget fetches the results of enumerating the values ("categories") of a facet, and exposes it in a variable available in the scope. It can be used with AngularJS's ngRepeat to simply build a list of results.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsFacetResults>`__


odsFacets
"""""""""

 - This widget displays filters (facets) for a dataset or a domain's catalog of datasets, allowing the users to dynamically "refine" on one or more categories for the context.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsFacets>`__


odsFilterSummary
""""""""""""""""

 - This widget displays a summary of all the active filters on a context: text search, refinements...
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsFilterSummary>`__


odsGauge
""""""""

 - This widget displays a gauge in one of the two following modes: circle or horizontal bar. The widget relies on CSS3 and SVG and as a result is entirely customizable in CSS.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsGauge>`__


odsGeoSearch
""""""""""""

 - This widget displays a mini map with a draw-rectangle tool that can be used to search through a catalog.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsGeoSearch>`__


odsGeotooltip
"""""""""""""

 - This directive, when used to surround a text, displays a tooltip showing a point and/or a shape in a map.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsGeotooltip>`__


odsHubspotForm
""""""""""""""

 - Integrates a Hubspot form given a portal ID and the form ID.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsHubspotForm>`__
 - More information about `Hubspot <http://www.hubspot.com/>`_


odsInfiniteScrollResults
""""""""""""""""""""""""

 - This widget displays the results of a query inside an infinite scroll list. It uses the HTML template inside the widget tag, and repeats it for each result.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsInfiniteScrollResults>`__


odsLastDatasetsFeed
"""""""""""""""""""

 - This widget displays the last datasets of a catalog (default is last 5), based on the modified metadata.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsLastDatasetsFeed>`__


odsLastReusesFeed
"""""""""""""""""

 - This widget displays last reuses published on a domain (5 by default).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsLastReusesFeed>`__


odsMap
""""""

 - This widget allows you to build a map visualization and show data using various modes of display using layers. Each layer is based on a Dataset Context, a mode of display (clusters...), and various properties to define the display itself, such as colors.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsMap>`__


odsMediaGallery
"""""""""""""""

 - This widget displays an image gallery of a dataset containing media with thumbnails (images, pdf files...) with infinite scroll.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsMediaGallery>`__


odsMostPopularDatasets
""""""""""""""""""""""

 - This widget displays the top datasets of a catalog (default is the 5 top datasets), based on the number of downloads.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsMostPopularDatasets>`__


odsMostUsedThemes
"""""""""""""""""

 - This widget displays the 5 most used themes.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsMostUsedThemes>`__


odsPicto
""""""""

 - This widget displays a "picto" specified by a url and force a fill color on it. This element can be styled (height, width...), especially if the picto is vectorial (SVG).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsPicto>`__


odsPlumeAirQuality
""""""""""""""""""

 - Integrates a Plume Air Embed using a city name.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsPlumeAirQuality>`__
 - More information about `Plume air <https://www.plumelabs.com/en/>`_


odsRecordImage
""""""""""""""

 - Displays an image from a record.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsRecordImage>`__


odsRedirectIfNotLoggedIn
""""""""""""""""""""""""

 - This widget forces a redirect to the login page of the domain if the user is not logged in.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsRedirectIfNotLoggedIn>`__


odsResultEnumerator
"""""""""""""""""""

 - This widget enumerates the results of a search (records for a Dataset Context, datasets for a Catalog Context) and repeats the template (the content of the directive element) for each of them.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsResultEnumerator>`__


odsResults
""""""""""

 - This widget exposes the results of a search (as an array) in a variable available in the scope. It can be used with AngularJS's ngRepeat to simply build a list of results.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsResults>`__


odsReuses
"""""""""

 - This widget displays all reuses published on a domain, in a infinite list of large boxes that presents them in a clear display. The lists show the more recent reuses first.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsReuses>`__


odsSearchbox
""""""""""""

 - This widget displays a wide searchbox that redirects the search on the Explore homepage of the domain.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsSearchbox>`__


odsSocialButtons
""""""""""""""""

 - This widget displays a share button that on hover will reveal social media sharing buttons.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsSocialButtons>`__


odsSpinner
""""""""""

 - This widget displays the custom OpenDataSoft spinner. Its size and color match the current font's.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsSpinner>`__


odsTable
""""""""

 - This widget displays a table view of a dataset, with infinite scroll and an ability to sort columns (depending on the types of the column).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTable>`__


odsTagCloud
"""""""""""

 - This widget displays a "tag cloud" of the values available in a facet (either the facet of a dataset, or a facet from the dataset catalog).
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTagCloud>`__


odsTextSearch
"""""""""""""

 - This widget displays a search box that can be used to do a full-text search on a context.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTextSearch>`__


odsThemeBoxes
"""""""""""""

 - This widget enumerates the themes available on the domain, by showing their pictos and the number of datasets they contain.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsThemeBoxes>`__


odsThemePicto
"""""""""""""

 - This widget displays the "picto" of a theme.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsThemePicto>`__


odsTimerange
""""""""""""

 - This widget displays two fields to select the two bounds of a date and time range.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTimerange>`__


odsTimescale
""""""""""""

 - Displays a control to select either: last day, last week, last month or last year
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTimescale>`__


odsTopPublishers
""""""""""""""""

 - This widget displays the 5 top publishers
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTopPublishers>`__


odsTwitterTimeline
""""""""""""""""""

 - Integrates a Twitter "widget" using the widget ID provided by Twitter.
 - `Full documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTwitterTimeline>`__


Filters
"""""""

In addition to AngularJS filters, OpenDataSoft widgets library includes some additional that can be used in custom pages :
	capitalize, fieldsFilter, firstValue, imageify, imageUrl, isAfter, isBefore, isDefined, isEmpty, join, keys, moment, momentadd, momentdiff, nofollow, normalize, numKeys, shortSummary, slugify, split, stringify, themeColor, themeSlug, thumbnailUrl, timesince, toObject, truncate, values, videoify



Creating dashboards
-------------------

A step by step tutorial to create a simple dashboard with data visualization, filters, and counters.

 .. toctree::
	:maxdepth: 2

   	../tutorials/dashboard/dashboard


Going further with advanced widgets
-----------------------------------

.. toctree::
    :maxdepth: 2

    ../tutorials/advanced_dashboard/advanced_dashboard
    ../tutorials/contact_form/contact_form
    ../tutorials/pages_list/pages_list
