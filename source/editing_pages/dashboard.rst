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
 - add a download link
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

Now, go to the table view, ``widget`` and simply copy and paste again below the map code.

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

This dashboard starts to be nice but every widgets are in the same column, one after another without any style tuning.

.. note:: 

	At this point you need to be aware of the platform possibilities about CSS and HTML Style.
	Please read carrefully the `responsive grid layout managment /look_and_feel/grid-layouts.html` documentation. 


We will split the screen into two main areas : on the left a navigation bar, on the right the main content.
The navigation bar will carry the search bar and filters, the content will carry the table, map and chart.

It will looks like this : 

 .. image:: dashboard__css-responsive-layout-1.png

Bootsrap (the grid layout managment tool) split the page into 12 columns.
We will alloy 3 columns for the navigation bar and 9 for the content.
We will split the screen for devices starting from medium size. The CSS class is ``col-md-3`` and ``col-md-9``

Concerning the table and chart widget, we will split the area in two equal size, ie. 6 columns each. The CSS class is ``col-md-6``

One last detail: to use ``col-xx-yy`` CSS classes, they always need to be inside a ``row`` element !
So first, you define rows, then you split the rows !

 .. image:: dashboard__css-responsive-layout-2.png


The HTML block should then looks like this :

 .. code-block:: html

	<div class="container-fluid">

	    <div class="ods-box">

	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	    
	            <div class="row">

	                <!-- NAVIGATION BAR -->
	                <div class="col-md-3">
	                        <ods-text-search />
	                        <ods-facets />	                    
	                </div>

	                <!-- MAIN CONTENT -->            
	                <div class="col-md-9">
	                    
	                    <!-- ROW 1 : The Map -->
	                    <div class="row">
                            <ods-map />    
	                    </div>

	                    <!-- ROW 2 : Chart and table -->
	                    <div class="row">
	                        <div class="col-md-6">
                                <ods-table />
	                        </div>

	                        <div class="col-md-6">    
                                <ods-chart />
	                        </div>
	                    </div>

	                </div>
	            </div>
	        </ods-dataset-context>
	    </div>
	</div>

We now have a real dashboard, last detail will be to give some air of every element, they are still all sticked together.
It's a pure CSS aspect, and using ``margin`` and ``padding`` rules will easilly do the job.

But the platform also provide a CSS class called ``ods-box``. It encapsulate any element into a box with a thin rounded border.
We will use it to encapsulate the navigation bar, the map, the table and the chart.


The full HTML code is now : 

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">
	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            <div class="row">

	                <!-- NAVIGATION BAR -->
	                <div class="col-md-3">
	                    <div class="ods-box">
	                        <ods-text-search context="entreprisesimmatriculeesen2016"></ods-text-search>
	                        <ods-facets context="entreprisesimmatriculeesen2016">
	                            <h3>Activity</h3>
	                            <ods-facet name="libelle"></ods-facet>
	                            <h3>City</h3>
	                            <ods-facet name="ville"></ods-facet>
	                        </ods-facets>
	                    </div>
	                </div>

	                <!-- MAIN CONTENT -->            
	                <div class="col-md-9">

	                    <!-- ROW 1 : The Map -->
	                    <div class="row">
	                        <div class="ods-box">
	                            <ods-map context="entreprisesimmatriculeesen2016" location="2,18.59479,25.24143" basemap="mapbox.light">
	                            </ods-map>
	                        </div>
	                    </div>

	                    <!-- ROW 2 : Chart and table -->
	                    <div class="row">
	                        <div class="col-md-6">        
	                            <div class="ods-box">
	                                <ods-table context="entreprisesimmatriculeesen2016" 
	                                           sort="date_d_immatriculation">
	                                </ods-table>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="ods-box">
	                                <ods-chart>
	                                    <ods-chart-query context="entreprisesimmatriculeesen2016" field-x="region">
	                                        <ods-chart-serie expression-y="siren" chart-type="line" function-y="COUNT" color="#66c2a5" scientific-display="true">
	                                        </ods-chart-serie>
	                                    </ods-chart-query>
	                                </ods-chart>
	                            </div>
	                        </div>
	                    </div>
	                    
	                </div>
	            </div>
	        </ods-dataset-context>
	    </div>
	</div>


 .. image:: dashboard__css-responsive-layout-3.png


Have a deeper look to the "context" 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We now know that the context is the key between all widgets and the link between them and the data.
Some widgets consume/read it : the odsTable widget will use it to get records and display them.
Some widgets act/modify it : the odsTextSearch will query it by applying a search query or filter.
Some widgets do both : the odsFacets get filters, display it, and then allow to apply a filter on the context.

To go further it's now interresting to see how widget modify the context and what kind of information we can get from it.

 .. note::

	- As OpenDataSoft widgets library rely on **AngularJS** we will use it's syntax to read the **context**.
	- The **context** is an **AngularJS variable**.
	- The **context** can be seen like a simple **JSON object**, with brackets, key values lists etc...
	- To evaluate an expression in AngularJS we use this syntax : ``{{ action1 or variable1 }}``

To conclude this note, to read the context, simply add this bunch of code in an empty space :

 .. code-block:: html

 	<div class="container-fluid">
	    <div class="ods-box">
	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
	            
	            {{ entreprisesimmatriculeesen2016 }}
	            
	            <div class="row">

	                <!-- NAVIGATION BAR -->
	    			. . . .


Save, refresh : you should see an ugly json at the top of your page, by pretty printing it in your favorite dev. environment (or with an online json pretty printer like the one from `CuriousConcept <https://jsonformatter.curiousconcept.com/>`_ ) you should see something like this :

 .. code-block:: js

	{  
	   "name":"entreprisesimmatriculeesen2016",
	   "type":"dataset",
	   "domainUrl":"",
	   "dataset":{  
	      "datasetid":"entreprises-immatriculees-en-2016",
	      "has_records":true,
	      "metas":{  
	         "publisher":"Infogreffe",
	         "domain":"fpassaniti",
	         "license":"Licence ouverte / Open Licence",
	         "description":"<p><strong>RCS - Liste des entreprises immatriculées en 2016</strong></p><hr/>\n<p>Liste des sociétés commerciales immatriculées au registre du commerce et des sociétés en 2016.</p>",
	         "language":"fr",
	         "records_count":114129,
	         "title":"Entreprises immatriculées en 2016",
	         "attributions":"Infogreffe",
	         "modified":"2016-09-14T15:16:33+02:00",
	         "theme":"Immatriculations",
	         "references":"Création, Immatriculation, Registre du commerce et des sociétés",
	         "visibility":"restricted",
	         "data_processed":"2016-09-14T10:30:30+02:00",
	         "metadata_processed":"2016-09-14T15:16:47+02:00",
	         "keyword":[  
	            "création",
	            "immatriculation",
	            "sociétés",
	            "entreprises"
	         ]
	      },
	      "features":[  
	         "geo",
	         "analyze",
	         "timeserie"
	      ],
	      . . .
	      "fields":         . . .,
	      "extra_metas":{  
	         "visualization":{  
	            "map_tooltip_fields": . . .
	            "calendar_enabled":false,
	            "map_tooltip_html_enabled":false,
	            "image_tooltip_html_enabled":false,
	            "map_tooltip_title":"denomination",
	            "table_default_sort_field":"date_d_immatriculation",
	            "table_fields": . . .
	            "map_marker_hidemarkershape":false,
	            "analyze_default":". . .",
	            "calendar_tooltip_html_enabled":false
	         },
	         "explore":{  
	            "download_count":0,
	            "feedback_enabled":false
	         },
	         "processing":{  
	            "processing_modified":"2016-06-14T12:25:59+02:00",
	            "records_size":0,
	            "security_last_modified":"2016-09-14T15:16:44+02:00"
	         },
	         "publishing":{  
	            "status":"processing_all_dataset_data",
	            "extractors":[  
	               "csvfile"
	            ],
	            "properties":[  
	               "scheduled"
	            ],
	            "last_modified_user":"olivier.ishacian",
	            "published":true
	         }
	      },
	      "billing_plans":[  

	      ]
	   },
	   "parameters":{  
	      "disjunctive.libelle":true,
	      "disjunctive.code_postal":true,
	      "disjunctive.ville":true,
	      "disjunctive.region":true,
	      "disjunctive.greffe":true,
	      "sort":"date_d_immatriculation"
	   },
	   "nhits":114559
	}

As it's a json, we can with AngularJS expression navigate into it's structure go get the value of any key.
For exemple, to get the dataset title, we go from the context, to the ``dataset`` list, then to the ``metas`` list, then we can reach the title value.
Encapsulated in a bug header html tag, it looks like this :

 .. code-block:: html

	<div class="container-fluid">
	    <div class="ods-box">
	        <ods-dataset-context  
	                             context="entreprisesimmatriculeesen2016" 
	                             entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
	                             entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">

	            <h1>
	                {{ entreprisesimmatriculeesen2016.dataset.metas.title }}
	            </h1>

	            <div class="row">

	                <!-- NAVIGATION BAR -->


 .. image:: dashboard__context-1.png


Now that we saw what the context is, we must have a look to how we can iniate it.
The `odsDatasetContext <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsDatasetContext>`_ is used to create a context, based on a datasetid and, optionnaly other parameters.

.. code-block:: html

    <ods-dataset-context  
        context="entreprisesimmatriculeesen2016" 
        entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016" 
        entreprisesimmatriculeesen2016-parameters="{'disjunctive.libelle':true,'disjunctive.code_postal':true,'disjunctive.ville':true,'disjunctive.region':true,'disjunctive.greffe':true,'sort':'date_d_immatriculation'}">
    </ods-dataset-context>

As the documentation say, 2 parameters are mandatory : the context name, and the datasetid.
In our case, 1 additionnal parameter has been copied. ``mycontext-parameters`` is used to defined specific filters or query to the context.
Here, several disjunctive mode are set to true for 5 fields, and the last parameter is a sort on date_d_immatriculation.

 .. note::

 	Disjunctive mode set to ``true`` on a facet field activate the multiple choise filter mode. It allows the user to apply a filter, and still be able to see and/or select  other values

 We will remove this optional attribute and observe changes.

 .. code-block:: html

    <ods-dataset-context  
        context="entreprisesimmatriculeesen2016" 
        entreprisesimmatriculeesen2016-dataset="entreprises-immatriculees-en-2016">
    </ods-dataset-context>

First the context, if we display it, the json parameters block is now much smaller :

In your code add :

 .. code-block:: html

	{{ entreprisesimmatriculeesen2016.parameters }}
    
Save, refresh, and see :

 .. code-block:: js

	"parameters":{  
		"sort":"date_d_immatriculation"
    }

We still have a sort parameter, even if we deleted it from the context creation widget (odsDatasetContext), it's due to the dataset sort setting in the table view.

Last test : apply a filter on any facet and observe how the ``context.parameters`` object is updated.

 .. image:: dashboard__context-2.png

 .. note::

 	Also observe the 'standard' behavior of facets : when a value is selected, all others are hidden.


Add a record counter and last processing date
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now that we know what is a **context**, how to access it, we will get two interresting information for a dashboard: 

 - the total amount of records
 - the total number of hits matching the user query and/or filters
 - the last processing date of the dataset

 .. code-block:: js

	{  
	   "name":"entreprisesimmatriculeesen2016",
	   . . .
	   "dataset":{  
	      "datasetid":"entreprises-immatriculees-en-2016",
	      "has_records":true,
	      "metas":{  
	         . . .
	         "records_count":114129,
	         . . .
	         "data_processed":"2016-09-14T10:30:30+02:00",
	         . . .
	      },
	      . . .
	   },
	   "nhits":115055
	}

Then :

 - the total amount of records will be accessible by : ``{{  entreprisesimmatriculeesen2016.dataset.metas.records_count }}``
 - the total number of hits : ``{{  entreprisesimmatriculeesen2016.nhits }}``
 - the last processing date : ``{{  entreprisesimmatriculeesen2016.dataset.metas.data_processed }}``

To finish, we include these blocs into our HTML code, surrounded by HTML and CSS code to have a nice rendering.

Records and nhits on the top of the navigation bar, processing date at the bottom :

 .. code-block:: html

	<!-- NAVIGATION BAR -->
        <div class="col-md-3">
            <div class="ods-box">
                                        
                <h3>
                    {{  entreprisesimmatriculeesen2016.nhits }} records
                </h3>
                <h5>
                    <i>
                        out of a total of {{  entreprisesimmatriculeesen2016.dataset.metas.records_count }} records in the dataset
                    </i>
                </h5>
                
                <ods-text-search context="entreprisesimmatriculeesen2016"></ods-text-search>
                <ods-facets context="entreprisesimmatriculeesen2016">
                    <h3>Activity</h3>
                    <ods-facet name="libelle"></ods-facet>
                    <h3>City</h3>
                    <ods-facet name="ville"></ods-facet>
                </ods-facets>
                
                <h5>
                    <i>
                        Last modified date : {{  entreprisesimmatriculeesen2016.dataset.metas.data_processed }}                            
                    </i>
                </h5>
                
            </div>
        </div>	

Save, refresh, and see :

 .. image:: dashboard__add-counters.png

It's nice but, the numerical and date format is a bit harsh.
To fix that, we will introduce a pure **AngularJS** concept called **filters**. `Full documentation of AngularJS Filters here <https://docs.angularjs.org/api/ng/filter>`_

A filter is a function or operation that can be applied on a variable or value in an AngularJS expression.

In our case, we will use the ``number`` filter to pretty print numerical values (add a space or a comma every 3 digits depending on the country), and a ``date`` to transform the ISO technical format into an human readable format.

 .. code-block:: html

	<h3>
	    {{  entreprisesimmatriculeesen2016.nhits | number }} records
	</h3>
	<h5>
	    <i>
	        out of a total of {{  entreprisesimmatriculeesen2016.dataset.metas.records_count | number }} records in the dataset
	    </i>
	</h5>

	. . .

	<h5>
	    <i>
	        Last modified date : {{  entreprisesimmatriculeesen2016.dataset.metas.data_processed | date : 'medium' }}                            
	    </i>
	</h5>

 .. note::

 	To "call" a filter, use pipe '|' at the end of the expression.
 	Some filters accept specific parameters, date filter accept a date format or a date pattern.
 	Ex: ``expr. | date : 'M/d/yy'`` ``expr. | date : 'medium'``

Save, refresh, see :

 .. image:: dashboard__add-counters-ng-filter.png
 

Add a download link
~~~~~~~~~~~~~~~~~~~

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

