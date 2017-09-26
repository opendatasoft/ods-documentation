Setting up the Gallica exporter
===============================

The OpenDataSoft platform allows for single datasets to be exposed in the OAI-PMH format in order to be harvested by Gallica. This documents sums up how to set up the Gallica export.

General configuration
---------------------

All configuration is to be input in the export tab of the dataset publication interface, under the ``Gallica`` title.

In order to get started with the Gallica exporter, the ``Admin email`` must be entered and must contain an email address where the person responsible for the dataset can be reached. In addition the optional ``Repository name`` field can be entered to provide a name for the OAIPMH repository. If this field is not set, the name of the OAIPMH repository will be the dataset id.

Fields mapping
--------------

Gallica expects up to 15 attributes, or terms, incuding 8 mandatory ones to be defined for each record in the dataset. Each of these terms are `Dublin Core Metadata Terms <http://dublincore.org/documents/dcmi-terms/>`_, specified by the `DCMI <http://dublincore.org/about/>`_. In addition some of these terms are given extra meaning by Gallica, and are expected to follow a specific format. Dublin Core specifies that all terms may be repeated any number of time.

Mapping a term means assigning either a constant value or the value of a field for each record. Any terms can have as many mapping as needed, of either type. The terms will simply be repeated to satisfy all the mappings. In addition, if the term is mapped to a multivalued field, the term will be repeated with every value of that field.

Field mapping format
^^^^^^^^^^^^^^^^^^^^

To map a term to a field, the field name must be entered in the text input corresponding to the term mapping. To map a term to a constant value, the value must be entered, surrounded by backticks (`).

Standard terms
^^^^^^^^^^^^^^

The Metadata Terms defined by the DCMI and that can be mapped as-is are the following:

.. list-table::

    * * dc:title
      * dc:creator
      * dc:contributor
      * dc:publisher
    * * dc:date
      * dc:language
      * dc:description
      * dc:coverage
    * * dc:subject
      * dc:format
      * dc:identifier
      * dc:relation
    * * dc:source
      * dc:rights
      *
      *

For more details about the semantic of these terms please refer to Gallica's OAI-PMH interoperability guide

Speciald terms and mappings
^^^^^^^^^^^^^^^^^^^^^^^^^^^

In order to account for Gallica-specific formatting for the thumbnail image and the dc:type semantics, some additional mappable terms have been created.

Thumbnail
"""""""""

Gallica expect the Thumbnail to be in the format "vignette : <url>" as a separate dc:relation. Since it would not be convenient to create a field in the dataset just to accomodate this format, this mapping takes the values of the field or fields containing the thumbnail(s), prepends the "vignette: " part, and exposes it as a new repetition of the dc:relation term. 

Type
""""

Gallica expects the dc:type to be strictly DCMI complient, and defines 2 additional levels of type precision on top of it, in both french and english. In order to accomodate those, there is 3 separate mappings for the dc:type term: one for the DCMI complient type, one for the english 2nd and 3rd level of precision, and one for the french 2nd and 3rd level of precision.

Configuration example
---------------------

Here is an minimal (incomplete) example to illustrate the different concepts. Let's imagine we have a dataset with the following records:

+-------------------+-------------+--------------+-----------------+----------------+-------------+--------------+-------------+----------------------------------+----------------------------+
| title             | author      | contributors | original_format | digital_format | simple_type | precise_type | type_precis | thumb                            | link                       |
+===================+=============+==============+=================+================+=============+==============+=============+==================================+============================+
| The Milky Way     | H.R. Botha  | - C\. West   | A3 paper        | image/png      | image       | - drawing    | - dessin    | http://example.com/tmw-16x16.png | http://example.com/tmw.png |
|                   |             | - N\. Moore  |                 |                |             | - diagram    | - diagramme |                                  |                            |
+-------------------+-------------+--------------+-----------------+----------------+-------------+--------------+-------------+----------------------------------+----------------------------+
| Celestial objects | C\. West    |              | A4 paper        | image/png      | image       | - drawing    | - dessin    | http://example.com/co-16x16.png  | http://example.com/co.png  |
|                   |             |              |                 |                |             | - diagram    | - diagramme |                                  |                            |
+-------------------+-------------+--------------+-----------------+----------------+-------------+--------------+-------------+----------------------------------+----------------------------+

A mapping link this could be used:

.. list-table::
    :header-rows: 1

    * * Term
      * Mapping
    * * dc:title
      * ``title``
    * * dc:creator
      * ``author``
    * * dc:contributor
      * ``contributors``
    * * dc:format
      * ``original_format`` and ``digital format``
    * * dc:identifier
      * ``link``
    * * dc:rights
      * ```public domain``` (notice the backticks)
    * * dc:type (DCMI)
      * ``simple_type``
    * * dc:type (english)
      * ``precise_type``
    * * dc:type (french)
      * ``type_precis``
    * * thumbnail
      * ``thumb``

And would produce 2 OAI-PMH records with the following metadata:

.. code-block:: XML

    <dc:title>The Milky Way</dc:title>
    <dc:creator>H. R. Botha</dc:creator>
    <dc:contributor>C. West</dc:contributor>
    <dc:contributor>N. Moore</dc:contributor>
    <dc:format>A3 paper</dc:format>
    <dc:format>image/png</dc:format>
    <dc:type>image</dc:type>
    <dc:type xml:lang="eng">drawing</dc:type>
    <dc:type xml:lang="eng">diagram</dc:type>
    <dc:type xml:lang="fre">dessin</dc:type>
    <dc:type xml:lang="fre">diagramme</dc:type>
    <dc:relation>vignette : http://example.com/tmw-16x16.png</dc:relation>
    <dc:identifier>http://example.com/tmw.png</dc:identifier>
    <dc:rights>public domain</dc:rights>

and 

.. code-block:: XML

    <dc:title>Celestial objects</dc:title>
    <dc:creator>C. West</dc:creator>
    <dc:format>A4 paper</dc:format>
    <dc:format>image/png</dc:format>
    <dc:type>image</dc:type>
    <dc:type xml:lang="eng">drawing</dc:type>
    <dc:type xml:lang="eng">diagram</dc:type>
    <dc:type xml:lang="fre">dessin</dc:type>
    <dc:type xml:lang="fre">diagramme</dc:type>
    <dc:relation>vignette : http://example.com/co-16x16.png</dc:relation>
    <dc:identifier>http://example.com/co.png</dc:identifier>
    <dc:rights>public domain</dc:rights>
