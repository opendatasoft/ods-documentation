Building a dynamic dashboard - step by step !
=============================================

The aim of this cookbook is to show how to create very easily a simple dashboard by playing with the following features :


Basics
 - pick up a dataset
 - Create a page
 - add a map view
 - add a table view
 - add a chart
 - link them all together ! 
 - add a text search form
 - add some filters
 - discover CSS classes for easy responsive development
 - have a deeper look to the "context" 
 - add a record counter
 - create some KPIs

Going further : AngularJS and advanced used of Widgets
 - discover angular JS directives
 - Play with them by creating dynamic view - ng-if
 - Colorize your KPI - ng-class
 - Refine-on-click widgets


Let's go !


Basics
------

Pick up a datasets
~~~~~~~~~~~~~~~~~~

Let's work with company registrations in France (2016).

First you need to add this list of datasets on your domain:

* entreprises-immatriculees-en-2016

You can simply use the `Add a dataset from the OpenDataSoft network` button when you add a new source of data in your dataset.

Create a page
~~~~~~~~~~~~~

| Go to **Backoffice -> Pages -> New page**
| Enter a **page url** suffix, optionnaly a **Title** and **description**, then **Save**
| Click on ``Edit in expert mode`` to directly have access to CSS/HTML code of the page.
| 

You should now view this HTML code in your page :

.. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box" ></div>
	</div>


From now, we will add all our code in the ``ods-box div`` like this :

.. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">
	    
	        OUR CODE HERE
	    
	    </div>
	</div>

Save and refresh your page if you don't see the **Open page** button in the top right part of the screen.


Add a map view
~~~~~~~~~~~~~~

The simplest way to begin is to used share links and code bellow each data visualisation.

Go to your dataset, go to the map tab, then, below your map, click on ``widget`` and simply copy and paste your code in your custom page.

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-map context="entreprisesimmatriculeesen2016" location="3,18.59479,25.24143" basemap="mapbox.light">
	            </ods-map>
	        </ods-dataset-context>

	    </div>
	</div>


We will explain each block later, for the moment, just preview your page by clicking on the **Preview** button on the center right part of your browser.

We advise you to open your page in a new tab of your browser for a faster loading.

It should looks like this (the map basemap should be different depending on your domain settings) :

 .. image:: dashboard__add-a-map-view.png


Add a table view
~~~~~~~~~~~~~~~~

Now, go to the table view, ``widget``and simply copy and paste again below the map code.

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-map context="entreprisesimmatriculeesen2016" location="3,18.59479,25.24143" basemap="mapbox.light">
	            </ods-map>
	        </ods-dataset-context>

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-table context="entreprisesimmatriculeesen2016" 
	                       sort="date_d_immatriculation">
	            </ods-table>
	        </ods-dataset-context>

	    </div>
	</div>

Save, refresh, and see that we now have two data-vizualisation :

 .. image:: dashboard__add-a-table-view.png

Add a chart
~~~~~~~~~~~

Again, go to the chart view, select an X axis and Y axis, get the widget code, copy and paste.

An exemple of interesting chart for this documentation is to display the number of company by region.

X axis : ``Région`` (administrative area)
Y axis : count

 .. image:: dashboard__add-a-chart-setup.png

Save, refresh, it should looks like this : 

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-map context="entreprisesimmatriculeesen2016" location="2,18.59479,25.24143" basemap="mapbox.light">
	            </ods-map>
	        </ods-dataset-context>

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-table context="entreprisesimmatriculeesen2016" 
	                       sort="date_d_immatriculation">
	            </ods-table>
	        </ods-dataset-context>

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <ods-chart>
	                <ods-chart-query context="entreprisesimmatriculeesen2016" field-x="region">
	                    <ods-chart-serie expression-y="siren" chart-type="line" function-y="COUNT" color="#66c2a5" scientific-display="true">
	                    </ods-chart-serie>
	                </ods-chart-query>
	            </ods-chart>
	        </ods-dataset-context>

	    </div>
	</div>

 .. image:: dashboard__add-a-chart.png

Link them all together ! 
~~~~~~~~~~~~~~~~~~~~~~~~

If we draw a circle, or polygon on the map, we can filter the list of displayed items, we unfortunatly see that only the map reacts and the table and chart just **ignores** our filter !

Most of the time, we want all widgets to be connected each others. To do this, the key is to use the same **context**.
The **context** is the pivot between each elements of your pages, all the widgets that should interact together must use the same **context**.

On the other hand, it's also the link between your widgets and the **dataset**, it's the way to define on witch dataset your widgets should work (queries, filters and display records)

Let's have a look to our code, each time we copied and pasted a bloc, we got too main elements, an ``ods-dataset-context`` first, and a widget : ``ods-map``, ``ods-table`` and ``ods-chart``.

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context context="entreprisesimmatriculeesen2016" >
	            <ods-map>
	            </ods-map>
	        </ods-dataset-context>

	        <ods-dataset-context context="entreprisesimmatriculeesen2016" >
	            <ods-table>
	            </ods-table>
	        </ods-dataset-context>

	        <ods-dataset-context context="entreprisesimmatriculeesen2016" >
	            <ods-chart>
	            </ods-chart>
	        </ods-dataset-context>

	    </div>
	</div>

This cleaned version of the code highlight that the 3 widgets have, each time, their own context ! 3 contexts, for 3 widgets.

The simple thing to do then is to keep only one, and move our widgets below this **unique** context !

	Here is the result :

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">

	            <ods-map context="entreprisesimmatriculeesen2016" location="2,18.59479,25.24143" basemap="mapbox.light">
	            </ods-map>

	            <ods-table context="entreprisesimmatriculeesen2016" 
	                       sort="date_d_immatriculation">
	            </ods-table>

	            <ods-chart>
	                <ods-chart-query context="entreprisesimmatriculeesen2016" field-x="region">
	                    <ods-chart-serie expression-y="siren" chart-type="line" function-y="COUNT" color="#66c2a5" scientific-display="true">
	                    </ods-chart-serie>
	                </ods-chart-query>
	            </ods-chart>

	        </ods-dataset-context>

	    </div>
	</div>

Now, any circle, rectangle or polygon drawn on the map will apply the a filter on the **context**, **shared** by all widgets, we then expect that the table and chart **dynamically reload** their display with the filtered results.

 .. image:: dashboard__link-them-all.png


Add a text search form
~~~~~~~~~~~~~~~~~~~~~~

Now that we have an unique context to work on, and all our widgets are linked together, we can add other advanced widget.
Let's start with a search bar !

Open a new tab with the full `widget documentation <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ to see the list of available widgets.

The search bar is called `odsTextSearch <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsTextSearch>`_.
It has several optionnal parameters and only one mandatory : the context !

Let's keep it simple for the moment and use it like this :

 .. code-block:: html

	<ods-text-search context="mycontext"></ods-text-search>

where
	``mycontext`` is the name of my context in my custom page.

Let's add a search bar at the top of our dashboard now :

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">

	            <ods-text-search context="entreprisesimmatriculeesen2016"></ods-text-search>
	            
	            <ods-map context="entreprisesimmatriculeesen2016" location="2,18.59479,25.24143" basemap="mapbox.light">
	            </ods-map>

	            <ods-table context="entreprisesimmatriculeesen2016" 
	                       sort="date_d_immatriculation">
	            </ods-table>

	            <ods-chart>
	                <ods-chart-query context="entreprisesimmatriculeesen2016" field-x="region">
	                    <ods-chart-serie expression-y="siren" chart-type="line" function-y="COUNT" color="#66c2a5" scientific-display="true">
	                    </ods-chart-serie>
	                </ods-chart-query>
	            </ods-chart>

	        </ods-dataset-context>

	    </div>
	</div>

Save, refresh, search !

	Let's search for sport club in the south of france :

 .. image:: dashboard__add-search-bar.png


Add some filters
~~~~~~~~~~~~~~~~

Like in the explore view, it's very interresting to have the dataset filters to narrow your search.
Ods filters widget is called `ods-facets <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsFacets>`_ 

The simplest way is to display all facets :

 .. code-block:: html

 	<ods-facets context="mycontext"></ods-facets>

 A smarter way is to pick only needed facets by specifying the field id (not the name !) :

 .. code-block:: html

 	<ods-facets context="mycontext">
	    <h3>First field</h3>
	    <ods-facet name="myfield"></ods-facet>
	 
	    <h3>Second field</h3>
	    <ods-facet name="mysecondfield"></ods-facet>
	</ods-facets>

 .. note::

 	To get the field id you need to be aware of the dataset schema. It's available in the information tab of the dataset.
 	The dataset schema shows every information on each field : name, description, id, type, and an exemple.
 	It's often convenient to know the type and the id of each field when using advanced widget parameters.

In our dashboard exemple, we will use 2 filters of our company dataset, the company activity sector, and the city !
Let's add this code near our search bar :

 .. code-block::html 

	<div class="container-fluid">
	    <div class="ods-box">

	        <ods-dataset-context context="entreprisesimmatriculeesen2016" ...>

	            <ods-text-search context="entreprisesimmatriculeesen2016"></ods-text-search>

	            <ods-facets context="entreprisesimmatriculeesen2016">
	                <h3>Activity</h3>
	                <ods-facet name="libelle"></ods-facet>

	                <h3>City</h3>
	                <ods-facet name="ville"></ods-facet>
	            </ods-facets>

	            <ods-map>

	            <ods-table>

	            <ods-chart>

	        </ods-dataset-context>

	    </div>
	</div>

Now we can easily search for sport club in Paris !

 .. image:: dashboard__add-filters.png


Discover CSS classes for easy responsive development
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Have a deeper look to the "context" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add a record counter
~~~~~~~~~~~~~~~~~~~~

Create some KPIs
~~~~~~~~~~~~~~~~

test

Going further - AngularJS and advanced used of Widgets
------------------------------------------------------

discover angular JS directives
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Play with them by creating dynamic view - ng-if
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Colorize your KPI - ng-class
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refine-on-click widgets
~~~~~~~~~~~~~~~~~~~~~~~


```