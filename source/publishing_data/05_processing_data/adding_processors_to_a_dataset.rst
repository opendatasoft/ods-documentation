Adding processors to a dataset
==============================

Processors are tools that can be used in order to modify, improve, or enrich the data of a dataset. In the Opendatasoft platform, processors are classified into 4 different categories:

* Processors for geographical mapping
* Processors for dates handling
* Processors for text transformations
* Processors for generic operations

To add a processor to a dataset:

1. In the Processing tab, click on the **Add a processor** button.
2. Choose the processor to add to the dataset.
3. Using the documentation of the chosen processor, fill in the right parameters to set the processor.
4. (optional) Click on the edition icon |icon-edit| to rename the processor. This step can especially be useful when a lot of processors are applied to a dataset, including multiple processors of the same type (for example, renaming the multiple Expression processors applied to a dataset to know more easily which one contains which expression).

.. admonition:: Note
   :class: note

   You may need to click outside the processor box once the parameters are configured to make sure the processor and the changes it triggers are taken into account and applied to the dataset.

.. admonition:: Note
   :class: note

   No matter the processor, always use the technical identifiers of the fields to process, never the labels.


Geographical processors
-----------------------

.. toctree::
  :hidden:

  processors/geo_distance
  processors/convert_degrees
  processors/create_geopoint
  processors/decode_google_polyline
  processors/geocode_with_arcgis
  processors/geocode_with_ban
  processors/geocode_with_pdok
  processors/geocode_with_census_bureau
  processors/geohash_to_geojson
  processors/geojoin
  processors/geomasking
  processors/get_coordinates_from_3_word_address
  processors/ip_address_to_geo_coordinates
  processors/nominatim_geocoder
  processors/normalize_projection_reference
  processors/polygon_filtering
  processors/retrieve_administrative_divisions
  processors/simplify_geo_shape
  processors/what3words
  processors/wkt_and_wkb_to_geojson

Geographical processors are divided into 4 categories, according to what is tried to being achieved:

- **Geocoders**: to convert a human-readable address into a geo point.
- **GeoJoin processor**: to retrieve geoshapes from normalized codes for country-specific administrative divisions. The GeoJoin processor supports several countries, each of which features several indexing codes like postcode, state or region identifier, etc.
- **Retrieve Administrative Divisions processor**: to retrieve the name, code, and geoshape of country-specific administrative divisions enclosing a geopoint.
- **Converters & Functions**: to simplify, convert or normalize geographical data, or run computations based on them.

Geocoders
~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Geocode with ArcGIS<processors/geocode_with_arcgis>`
    * Geocode full-text addresses by using the ArcGIS geocoding API
    * Default
  * * :doc:`Geocode with BAN (France)<processors/geocode_with_ban>`
    * Geocode addresses in France by using the Base d'Adresses Nationale (BAN) service
    * Default
  * * :doc:`Geocode with PDOK<processors/geocode_with_pdok>`
    * Geocode addresses in the Netherlands by using the PDOK service
    * On demand
  * * :doc:`Geocode with the Census Bureau (USA)<processors/geocode_with_census_bureau>`
    * Geocode addresses in the USA by using the Census Bureau
    * On demand
  * * :doc:`Get coordinates from a 3 word address<processors/get_coordinates_from_3_word_address>`
    * Convert a 3 word address into geographical coordinates
    * On demand
  * * :doc:`IP address to geo coordinates<processors/ip_address_to_geo_coordinates>`
    * Geocode an IP address
    * Default
  * * :doc:`Nominatim geocoder <processors/nominatim_geocoder>`
    * Geocode full-text addresses using OpenStreetMap data
    * On demand
  * * :doc:`what3words<processors/what3words>`
    * Produce a 3 word address with geographical coordinates
    * On demand


The GeoJoin processor
~~~~~~~~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Geojoin<processors/geojoin>`
    * Retrieve administrative divisions geo shapes for a specified country and referential
    * Default


The Retrieve administrative divisions processor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Retrieve administrative divisions<processors/retrieve_administrative_divisions>`
    * Retrieve administrative divisions information with a geo point
    * Default


Converters & Functions
~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Compute geo distance<processors/geo_distance>`
    * Compute the distance between 2 coordinates
    * Default
  * * :doc:`Convert degrees<processors/convert_degrees>`
    * Convert a degrees, minutes, seconds geo coordinate to WGS84 coordinates
    * Default
  * * :doc:`Create geo point<processors/create_geopoint>`
    * Create a geopoint field from a latitude field and a longitude field
    * Default
  * * :doc:`Decode a Google polyline <processors/decode_google_polyline>`
    * Transform an encoded Google polyline into a GeoJSON LineString
    * On demand
  * * :doc:`GeoHash to GeoJSON <processors/geohash_to_geojson>`
    * Convert GeoHash values to GeoJSON
    * On demand
  * * :doc:`Geomasking<processors/geomasking>`
    * Provides privacy protection by approximating a geographical location within a specific radius
    * Default
  * * :doc:`Normalize projection reference<processors/normalize_projection_reference>`
    * Replace a geopoint with its WGS84 representation
    * Default
  * * :doc:`Polygon filtering <processors/polygon_filtering>`
    * Remove points that are not in a polygon
    * On demand
  * * :doc:`Simplify geo shape<processors/simplify_geo_shape>`
    * Simplify a geo shape to reduce processing time and dataset size
    * Default
  * * :doc:`WKT and WKB to GeoJSON<processors/wkt_and_wkb_to_geojson>`
    * Convert vector geometry object represented in WKT or WKB into a GeoJson object
    * On demand



Date processors
---------------

.. toctree::
  :hidden:

  processors/normalize_date
  processors/set_timezone

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Normalize date<processors/normalize_date>`
    * Normalize a date format not automatically understood by the platform
    * Default
  * * :doc:`Set timezone<processors/set_timezone>`
    * Define a timezone for a datetime field
    * Default


Text processors
---------------

.. toctree::
  :hidden:

  processors/concatenate_text
  processors/decode_html_entities
  processors/extract_html
  processors/extract_text
  processors/extract_url
  processors/normalize_unicode_values
  processors/normalize_url
  processors/replace_text
  processors/replace_via_regexp
  processors/split_text

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Concatenate text<processors/concatenate_text>`
    * Concatenate 2 fields
    * Default
  * * :doc:`Decode HTML entities<processors/decode_html_entities>`
    * Decode HTML entities from a text, to transform them into valid HTML
    * Default
  * * :doc:`Extract HTML<processors/extract_html>`
    * Extract HTML from an HTML tag to only keep textual content
    * Default
  * * :doc:`Extract text<processors/extract_text>`
    * Extract part of a field value using a regular expression
    * Default
  * * :doc:`Extract URLs<processors/extract_url>`
    * Extract URLs from HTML or text contents
    * Default
  * * :doc:`Normalize Unicode values<processors/normalize_unicode_values>`
    * Normalize Unicode content using the Normalization Form Canonical Composition (NFC)
    * Default
  * * :doc:`Normalize URL<processors/normalize_url>`
    * Normalize a field value to obtain a valid URL
    * Default
  * * :doc:`Replace text<processors/replace_text>`
    * Replace a textual field value with a chosen text
    * Default
  * * :doc:`Replace via regular expression<processors/replace_via_regexp>`
    * Replace a remove part of a field value using a regular expression
    * Default
  * * :doc:`Split text<processors/split_text>`
    * Split a field value and extract part of it in a new field
    * Default


Generic processors
------------------

.. toctree::
  :hidden:

  processors/add_field
  processors/copy_field
  processors/deduplicate_multivalued_fields
  processors/delete_record_by_id
  processors/expand_json_array
  processors/expand_multivalued_field
  processors/expression
  processors/extract_bit_range
  processors/extract_from_json
  processors/file
  processors/join_dataset
  processors/json_array_to_multivalued
  processors/meta_expression
  processors/skip_records
  processors/transform_boolean_columns_to_multivalued_field
  processors/transpose_fields


.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Availability
  * * :doc:`Add a field<processors/add_field>`
    * Add a new empty field in a dataset
    * Default
  * * :doc:`Copy a field<processors/copy_field>`
    * Copy a field value from a field to another
    * Default
  * * :doc:`Deduplicate multivalued fields <processors/deduplicate_multivalued_fields>`
    * Remove duplicated values in a multivalued field
    * Default
  * * :doc:`Delete record by ID<processors/delete_record_by_id>`
    * Remove an existing record, based on its unique ID, from a dataset
    * Default
  * * :doc:`Expand JSON array<processors/expand_json_array>`
    * Transpose rows containing a JSON array into several rows
    * Default
  * * :doc:`Expand multivalued field<processors/expand_multivalued_field>`
    * Transform the values contained in a multivalued field into several records
    * Default
  * * :doc:`Expression<processors/expression>`
    * Write complex expression patterns using field values
    * Default
  * * :doc:`Extract bit range<processors/extract_bit_range>`
    * Extract an arbitrary bit range from an hexadecimal or binary content
    * On demand
  * * :doc:`Extract from JSON<processors/extract_from_json>`
    * Extract values from a field containing a JSON object
    * Default
  * * :doc:`File<processors/file>`
    * Retrieve images from URLs
    * Default
  * * :doc:`Join datasets<processors/join_dataset>`
    * Join 2 datasets together to retrieve a specified field in a dataset
    * Default
  * * :doc:`JSON array to multivalued<processors/json_array_to_multivalued>`
    * Extract multiple values from a JSON array and concatenates them into a multivalued field
    * Default
  * * :doc:`Meta expression <processors/meta_expression>`
    * Apply an expression on multiple fields
    * On demand
  * * :doc:`Skip records<processors/skip_records>`
    * Skip records from a dataset
    * Default
  * * :doc:`Transform boolean columns to multivalued field<processors/transform_boolean_columns_to_multivalued_field>`
    * Transform true values from boolean fields into a multivalued field
    * Default
  * * :doc:`Transpose columns to rows<processors/transpose_fields>`
    * Transform labels into field values
    * Default





.. |icon-edit| image:: icons/edit.png
    :width: 20px
    :height: 17px
