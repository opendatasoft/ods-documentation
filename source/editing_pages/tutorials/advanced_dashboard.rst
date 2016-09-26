Going further with advanced widgets
===================================

Charts, Maps, tables, calendar are default views. Lot of additionnal parameters are waiting for you in the documentation. 
In the mean time, a lot of other widgets are as insterested as the main ones.


 - iterate over records : `odsResultEnumerator <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsResultEnumerator>`_
 - iterate over values in a filter : `odsFacetResults <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsFacetResults>`_
 - get computed values of a chart analysis : `odsAnalysis <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsAnalysis>`_
 - compute an aggregation (SUM, AVG, MIN, MAX of a field) : `odsAggregation <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsAggregation>`_ 
 - a gauge chart to display speed'o'meter like gauge : `odsGauge <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsGauge>`_ 
 - and more...

Pick up a dataset
~~~~~~~~~~~~~~~~~

To illustrate metrics, KPI, advanced map tooltips and more, we will use a dataset that contains all regularity reports from the French Railway Society since 2011.
This dataset contains, for each TGV (High speed train) line (100 lines), the number of scheduled train per month, the number of trains that didn't leave the station, and the number of trains in late.

Dataset id : regularite-mensuelle-tgv
You can search for it on `<data.opendatasoft.com>`_
Then add this dataset to your domain (New dataset, Add a source from OpenDataSoft network, pick the dataset, save, publish)


Create some KPIs
~~~~~~~~~~~~~~~~

To create metrics / KPI, we use **odsAggregation**, to compute the sum, average, min, max of a data field. 
Based on the context, the metric will update dynamically all along the user navigation (queries, filters).

Starting from a new page, let's start by getting a context from this dataset.
The simplest way is to go to the explore/catalog page, go to the dataset, then in the table view, copy and paste de widget code from the share links below :

 .. code-blocks:: html

	<ods-dataset-context  
		context="regularitemensuelletgv" 
		regularitemensuelletgv-dataset="regularite-mensuelle-tgv">

	    	<ods-table context="regularitemensuelletgv"></ods-table>

	</ods-dataset-context>

On top of the table view, we will add a counter based on the ``nombre_de_trains_programmes`` field (number of scheduled train).
Let's get the number of trains scheduled since 2011 in France.

With odsAggregation, the parameters are :
 - the name of the variable that will store aggregation result
 - the context to work on
 - the function
 - the expression (the name of the field)

With a ``number`` filter to display it correctly in an HTML ``span`` you should have something similar to this :

 .. code-block:: html

	<div class="container">

	    <ods-dataset-context 
	                         context="regularitemensuelletgv" 
	                         regularitemensuelletgv-dataset="regularite-mensuelle-tgv">

	        <div ods-aggregation="myvar"
	             ods-aggregation-context="regularitemensuelletgv"
	             ods-aggregation-function="SUM"
	             ods-aggregation-expression="nombre_de_trains_programmes">

	                <span>Scheduled train : {{ myvar | number }}</span>

	        </div>

	        <br/>

	        <ods-table context="regularitemensuelletgv"></ods-table>

	    </ods-dataset-context>

	</div>

It displays a number (approx. 1.7 millions) at the beginning of the page that already need some CSS to be highlighted.
Metric are often rounded in a box, with an important font size and weight.

Add this CSS code to your page :

 .. code-block:: css

	.kpi {
	    padding: 2px 30px; /* Give some air to the digits */
	    border: 1.5px solid #010201; /* the border */
	    border-radius: 5px; /* rounded corners */
	    font-size: 2em; /* bigger font */
	    font-weight: 500; /* thicker font */
	    margin: 10px 5px; /* give some air around the KPI */
	}

And add ``kpi`` class to your ``span`` tag.

Save, refresh, and see that it's a bit better.

Before going further with CSS and specially repsonsive code, let's add 2 more metrics : number of cancelled train (``nombre_de_trains_annules``) and number of delayed train (``nombre_de_trains_en_retard_a_l_arrivee``)

 .. code-block:: html

	<div ods-aggregation="myvar"
	     ods-aggregation-context="regularitemensuelletgv"
	     ods-aggregation-function="SUM"
	     ods-aggregation-expression="nombre_de_trains_programmes">
	        <span class="kpi">Scheduled train : {{ myvar | number }}</span>
	</div>

	<br/>

	<div ods-aggregation="myvar"
	     ods-aggregation-context="regularitemensuelletgv"
	     ods-aggregation-function="SUM"
	     ods-aggregation-expression="nombre_de_trains_annules">
	        <span class="kpi">Canceled train : {{ myvar | number }}</span>
	</div>

	<br/>

	<div ods-aggregation="myvar"
	     ods-aggregation-context="regularitemensuelletgv"
	     ods-aggregation-function="SUM"
	     ods-aggregation-expression="nombre_de_trains_en_retard_a_l_arrivee">
	        <span class="kpi">Delayed train : {{ myvar | number }}</span>
	</div>

	<br/>

	<ods-table context="regularitemensuelletgv"></ods-table>

Result :

 .. image:: advanced__kpi-1.png

It works but all metrics are independant. We can add filters to make them become dynamic depending on user filters etc... but we can't compute any thing from it.
It would be interesting to have the pourcentage of canceled or delayed train out of the total.

To do this, you must chain ods-aggregation with different variable names. 

It must looks like that :

 .. code-block:: html

	<div ods-aggregation="total"
         ods-aggregation-context="regularitemensuelletgv"
         ods-aggregation-function="SUM"
         ods-aggregation-expression="nombre_de_trains_programmes">
        <div ods-aggregation="canceled"
             ods-aggregation-context="regularitemensuelletgv"
             ods-aggregation-function="SUM"
             ods-aggregation-expression="nombre_de_trains_annules">
            <div ods-aggregation="delayed"
                 ods-aggregation-context="regularitemensuelletgv"
                 ods-aggregation-function="SUM"
                 ods-aggregation-expression="nombre_de_trains_en_retard_a_l_arrivee">
                    
                    <span class="kpi">Scheduled : {{ total | number }}</span>
                    <span class="kpi">Canceled : {{ canceled | number }}</span>
                    <span class="kpi">Delayed : {{ delayed | number }}</span>
            </div>
        </div>
    </div>

Then, it's now possible, with AngularJS expression, to compute pourcentages between each values :

 .. code-block:: html

    <span class="kpi">Scheduled : {{ total | number }}</span>
    <span class="kpi">Canceled : {{ canceled | number }}</span>
    <span class="kpi">Delayed : {{ delayed | number }}</span>
    <span class="kpi">% Canceled : {{ canceled / total * 100 | number : 2 }}%</span>
    <span class="kpi">% Delayed : {{ delayed / total * 100 | number : 2 }}%</span>
 
  .. note::

	``| number : 2`` is the AngularJS filter to pretty print numerical values. The optional parameter ``2`` is to limit to only 2 decimals

Before going further let's clean up the HTML code to be able to apply CSS for responsive display, different font size between the title and the value etc... :

 .. code-block:: html

	<div class="row">
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">
	            <div class="kpi-title">
	                Scheduled
	            </div>
	            <div class="kpi-value">
	                {{ total | number }}
	            </div>
	        </div>
	    </div>
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">
	            <div class="kpi-title">
	                Canceled
	            </div>
	            <div class="kpi-value">
	                {{ canceled | number }}
	            </div>
	        </div>
	    </div>
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">
	            <div class="kpi-title">
	                Delayed
	            </div>
	            <div class="kpi-value">
	                {{ delayed | number }}
	            </div>
	        </div>
	    </div>
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">
	            <div class="kpi-title">
	                % Canceled
	            </div>
	            <div class="kpi-value">
	                {{ canceled / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	            </div>
	        </div>
	    </div>
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">
	            <div class="kpi-title">
	                % Delayed

	            </div>
	            <div class="kpi-value">
	                {{ delayed / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	            </div>
	        </div>
	    </div>
	    <div class="col-md-2 col-sm-3 col-xs-4">
	        <div class="kpi">

	            <div class="kpi-title">
	                On time
	            </div>
	            <div class="kpi-value">
	                {{ total - delayed - canceled | number }}
	            </div>
	        </div>
	    </div>
	</div>

And replace the CSS :

 .. code-block:: css

	.kpis {
	    display: inline-flex;
	}

	.kpi {
	    text-align: center;

	    padding: 5px 0px;
	    margin-bottom: 10px;
	    height: 70px;
	    
	    border: 1.5px solid #010201; /* the border */
	    border-radius: 5px; /* rounded corners */
	}

	.kpi-title {
	    font-size: 1em; /* bigger font */
	    font-weight: 400; /* thicker font */
	}

	.kpi-value {
	    font-size: 2em; /* bigger font */
	    font-weight: 500; /* thicker font */
	}

	.kpi-value-unit {
	    font-size: 1.5rem; /* bigger font */
	    font-weight: 400; /* thicker font */
	}


Save, refresh, see : 

 .. image:: advanced__kpi-2.png



Colorize your KPI - ng-class
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``ng-class`` directive is very conveniant when an HTML element must be styled depending on a value, the context, an expression or all other dynamic things that can be used in AngularJS expression.

For exemple, to define a threshold on our metrics, green if the pourcentage of canceled trains is below 0,20% and red is it's bigger, add this to your element :

 .. code-block:: html

	<div class="col-md-2 col-sm-3 col-xs-4">
	    <div class="kpi" ng-class="{'good' : canceled / total * 100 < 0.2, 'bad' : canceled / total * 100 >= 0.2}">
	        <div class="kpi-title">
	            % Canceled
	        </div>
	        <div class="kpi-value">
	            {{ canceled / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	        </div>
	    </div>
	</div>


And this CSS :

 .. code-block:: css

	.good {
	    color: #55cd61;
	    border-color: #55cd61;
	}

	.medium {
	    color: #ff9c22;
	    border-color: #ff9c22;
	}

	.bad {
	    color: #e50000;
	    border-color: #e50000;
	}


Save, refresh, and see that our metrics is now red (the `bad` CSS class is used)

To clearly see the dynamic behavior, let's add some filters on the left of the table (on the second line). To do so :
 - add a ``div`` with the ``row`` class to surround the table
 - add a ``div`` with ``col-md-9`` around the table
 - add a ``ods-facets`` widgets with 2 ``ods-facet`` for filters ``date`` and ``depart``
 - surround ``ods-facets`` with a ``div`` styled with ``col-md-3``
 - optionnaly add some ``ods-box`` styled ``div`` to surround blocks with a white background

 It should looks like this :

 .. code-block:: html

	<div class="row">
	    <div class="col-md-3">
	        <div class="ods-box">
	            <ods-facets context="regularitemensuelletgv">
	                <h2>
	                    Date
	                </h2>
	                <ods-facet name="date"></ods-facet>
	                <h2>
	                    Origin station
	                </h2>
	                <ods-facet name="depart"></ods-facet>
	            </ods-facets>
	        </div>
	    </div>
	    <div class="col-md-9">
	        <div class="ods-box">
	            <ods-table context="regularitemensuelletgv"></ods-table>                
	        </div>
	    </div>
	</div>

Save, refresh, and see how it behave when filters are selected, In 2013, Paris EST Station had less than 0,20% of canceled train. Have it a look.

 .. image:: advanced__kpi-ngclass-1.png
 .. image:: advanced__kpi-ngclass-2.png

 .. note::

	``ng-class`` syntax is, surround by brackets, the CSS class in quotes followed by ``:`` then the AngularJS expression :
		``{ 'CSS class' : AngularJS expression, ... }``
	
	Several classes and expression can be specified, all the expressions will be tested, from left to right.


ng-class : Full / Filtered comparison : highlight differences with color
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It's interresting to compare the full dataset, and a filtered view by the user and see if the metrics (specially pourcentages) are differents, bigger or smaller.

The plan is to have 2 contexts, one that will represent the full dataset, and one that can be filtered by the user.
Once a filter is applied, if the metric is bigger or smaller that the full dataset metric, it will be highlighted by a color.

To do so, you will need :
 - a secondary context
 - plug ``ods-filters`` and ``ods-table`` on this secondary context
 - compute the same metrics for both contexts
 - add the secondary metric IF and ONLY IF a filter is selected
 - configure the ``ng-class`` to compare full and filtered metric

Let's go. 

Two contexts, one dataset :

 .. code-block:: html

    <ods-dataset-context 
                         context="regularitemensuelletgv,regularitemensuelletgvfiltered" 
                         regularitemensuelletgv-dataset="regularite-mensuelle-tgv"
                         regularitemensuelletgvfiltered-dataset="regularite-mensuelle-tgv">

Metrics full blocks should looks like this now :

 .. code-block:: html

	<div ods-aggregation="total"
	     ods-aggregation-context="regularitemensuelletgv"
	     ods-aggregation-function="SUM"
	     ods-aggregation-expression="nombre_de_trains_programmes">
	    <div ods-aggregation="canceled"
	         ods-aggregation-context="regularitemensuelletgv"
	         ods-aggregation-function="SUM"
	         ods-aggregation-expression="nombre_de_trains_annules">
	        <div ods-aggregation="delayed"
	             ods-aggregation-context="regularitemensuelletgv"
	             ods-aggregation-function="SUM"
	             ods-aggregation-expression="nombre_de_trains_en_retard_a_l_arrivee">

	            <div ods-aggregation="totalfiltered"
	                 ods-aggregation-context="regularitemensuelletgvfiltered"
	                 ods-aggregation-function="SUM"
	                 ods-aggregation-expression="nombre_de_trains_programmes">
	                <div ods-aggregation="canceledfiltered"
	                     ods-aggregation-context="regularitemensuelletgvfiltered"
	                     ods-aggregation-function="SUM"
	                     ods-aggregation-expression="nombre_de_trains_annules">
	                    <div ods-aggregation="delayedfiltered"
	                         ods-aggregation-context="regularitemensuelletgvfiltered"
	                         ods-aggregation-function="SUM"
	                         ods-aggregation-expression="nombre_de_trains_en_retard_a_l_arrivee">

	                        <div class="row">
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        Scheduled
	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ totalfiltered | number }}
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ total | number }})
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        Canceled
	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ canceledfiltered | number }}
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ canceled | number }})
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        Delayed
	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ delayedfiltered | number }}
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ delayed | number }})
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        % Canceled
	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ canceledfiltered / totalfiltered * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ canceled / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>)
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        % Delayed

	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ delayedfiltered / totalfiltered * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ delayed / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>)
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-2 col-sm-3 col-xs-4">
	                                <div class="kpi">
	                                    <div class="kpi-title">
	                                        On time
	                                    </div>
	                                    <div class="kpi-value">
	                                        {{ totalfiltered - delayedfiltered - canceledfiltered | number }}
	                                    </div>
	                                    <div class="kpi-value-reference">
	                                        ({{ total - delayed - canceled | number }})
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>


Adapt CSS by updating or adding these classes :

 .. code-block:: css

	.kpi {
	    ...
	    height: 90px;
	    ...
	}

	.kpi-value-reference {
	    font-size: 1em; /* bigger font */
	    font-weight: 400; /* thicker font */
	}

	.kpi-value-unit {
	    font-size: 0.7em; /* bigger font */
	    ...
	}


Finally, let's colorize % delayed and % canceled metrics, if the filtered result is bigger than the total average, show it in red, else, if it's smaller (better) show it in green.

 .. code-block:: html

	<div class="col-md-2 col-sm-3 col-xs-4">
	    <div class="kpi" ng-class="{
	                               'good': (canceledfiltered / totalfiltered * 100) < (canceled / total * 100),
	                               'bad': (canceledfiltered / totalfiltered * 100) > (canceled / total * 100),
	                               }">
	        <div class="kpi-title">
	            % Canceled
	        </div>
	        <div class="kpi-value">
	            {{ canceledfiltered / totalfiltered * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	        </div>
	        <div class="kpi-value-reference">
	            ({{ canceled / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>)
	        </div>
	    </div>
	</div>
	<div class="col-md-2 col-sm-3 col-xs-4">
	    <div class="kpi" ng-class="{
	                               'good': (delayedfiltered / totalfiltered * 100) < (delayed / total * 100),
	                               'bad': (delayedfiltered / totalfiltered * 100) > (delayed / total * 100),
	                               }">
	        <div class="kpi-title">
	            % Delayed

	        </div>
	        <div class="kpi-value">
	            {{ delayedfiltered / totalfiltered * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>
	        </div>
	        <div class="kpi-value-reference">
	            ({{ delayed / total * 100 | number : 2 }}<span class="kpi-value-unit"> %</span>)
	        </div>
	    </div>
	</div>

Save, refresh, and test with year 2015 :

 .. image:: advanced__kpi-ngclass-3.png


Create a data table
~~~~~~~~~~~~~~~~~~~

To write

Custom map tooltip
~~~~~~~~~~~~~~~~~~

To write

Refine-on-click widgets
~~~~~~~~~~~~~~~~~~~~~~~

To write

Overright Facet look
~~~~~~~~~~~~~~~~~~~~

