Analyzing Source Data
=====================

You'll find below the list of fields available in the API monitoring dataset.

.. list-table::
   :header-rows: 1

   * * Field name
     * Field Description
     * Facet
   * * ``timestamp``
     * Timestamp of the event
     * no
   * * ``user_ip_addr``
     * Remote IP address
     * no
   * * ``hostname``
     * HTTP request host name
     * yes
   * * ``user_id``
     * User identifier
     * yes
   * * ``dataset_id``
     * Dataset identifier
     * yes
   * * ``domain_id``
     * Domain identifier
     * yes
   * * ``api``
     * API name (see below)
     * yes
   * * ``api_type``
     * API type (ods_v1, ods_v2 or odata)
     * yes
   * * ``query_string``
     * HTTP request query string
     * no
   * * ``custom_attributes``
     * HTTP request custom headers (see below)
     * yes
   * * ``format``
     * HTTP response format
     * yes
   * * ``size_res``
     * Response content size
     * no
   * * ``nhits``
     * Number of results
     * no
   * * ``exec_time``
     * Full processing time
     * no
   * * ``request_aborted``
     * If the request was aborted
     * yes
   * * ``facet``
     * List of facets used
     * yes
   * * ``in_error``
     * If the request processing generated an error
     * yes
   * * ``error``
     * Error message
     * no
   * * ``attachment_id``
     * Attachment identifier
     * no
   * * ``image_id``
     * Image identifier
     * no
   * * ``user_agent``
     * HTTP request user agent
     * no
   * * ``referer``
     * HTTP request referer
     * no
   * * ``embed_type``
     * Embed type (see below)
     * no
   * * ``embed_referer``
     * Embed referer
     * no
   * * ``geo_coordinates``
     * Geo coordinates (geoip on field user_ip_addr)
     * no
   * * ``query_field``
     * List of fields used in a full text query
     * no
   * * ``query_text``
     * Free text in a full text query
     * no
   * * ``bot``
     * If the query was used by a bot
     * yes


API names for OpenDataSoft APIv1
--------------------------------

The **api** field for OpenDataSoft APIv1 (ods_v1) contains one of the following values.

.. list-table::
   :header-rows: 1

   * * API name
     * Description
     * URL template

   * * ``search_datasets``
     * Search catalog query
     * api/datasets/1.0/search
   * * ``lookup_dataset``
     * Lookup dataset query
     * api/datasets/1.0/<dataset_id>
   * * ``download_dataset``
     * Download dataset records from the export tab
     * explore/dataset/<dataset_id>/download/
   * * ``download_dataset_alternative_export``
     * Download dataset in an alternative export format
     * api/datasets/1.0/<dataset_id>/alternative_exports/<export_id>/
   * * ``download_dataset_attachment``
     * Download dataset attachment from the information tab
     * api/datasets/1.0/<dataset_id>/attachments/<attachment_id>/
   * * ``dataset_list_snapshots``
     * List dataset snapshots
     * api/datasets/1.0/<dataset_id>/snapshots/
   * * ``dataset_download_snapshot``
     * Download a dataset snapshot
     * api/datasets/1.0/<dataset_id>/snapshots/<snapshot_id>/
   * * ``search_dataset_records``
     * Search query on dataset records
     * api/datasets/1.0/<dataset_id>/records/
   * * ``lookup_record``
     * Lookup record query
     * api/datasets/1.0/<dataset_id>/records/<record_id>
   * * ``download_dataset_records``
     * Download dataset records from API (total dataset download count = dowload_dataset + download_dataset_records)
     * api/datasets/1.0/<dataset_id>/records/download/
   * * ``analyze_records``
     * Analyze records query. Called by analyze tab in explore
     * api/datasets/1.0/<dataset_id>/records/analyze/
   * * ``get_bbox_clusters``
     * Bounding box query.
     * api/datasets/1.0/<dataset_id>/records/boundingbox/
   * * ``get_geo_clusters``
     * Geo cluster query. Called by map tab in explore for geo_point
     * api/datasets/1.0/<dataset_id>/records/geocluster/
   * * ``get_geo_clusters_polygon``
     * Geo clusters polygon query. Called by map tab in explore for shapes
     * api/datasets/1.0/<dataset_id>/records/geopolygon/
   * * ``get_geoshapes_preview``
     * Preview a geoshape
     * api/datasets/1.0/<dataset_id>/records/geopreview/
   * * ``download_image``
     * Download image. Called by image tab in explore
     * explore/dataset/<dataset_id>/images/<image_id>/download/
   * * ``images``
     * Access images through the API
     * api/datasets/1.0/<dataset_id>/images/<image_id>/, api/datasets/1.0/<dataset_id>/images/<image_id>/<thumbnail_size>
   * * ``files``
     * Access files through the API
     * api/datasets/1.0/<dataset_id>/files/<file_id>/, api/datasets/1.0/<dataset_id>/files/<file_id>/<thumbnail_size>
   * * ``list_dataset_entry_points``
     * List available entry points for an API Proxy
     * api/datasets/1.0/<dataset_id>/services/
   * * ``metadata_templates``
     * List metadata templates via the API
     * api/metadata/1.0/<template_type>/, api/metadata/1.0/<template_type>/<template_name>/

API names for ODATA API
-----------------------

The **api** field for ODATA API contains one of the following values.

.. list-table::
   :header-rows: 1

   * * API name
     * Description
     * URL template
   * * ``odata_service_root_doc``
     * Root ODATA API
     * api/odata/
   * * ``odata_entity``
     * list of records in a dataset
     * api/odata/<dataset_id>/
   * * ``odata_property_value``
     * plain text value of a specific field of a specific record from a dataset
     * api/odata/<dataset_id>('<record_id>')/<field>/$value
   * * ``odata_entity_key_predicate``
     * specific record from a dataset
     * api/odata/<dataset_id>('<record_id>')/
   * * ``record_with_id``
     * specific record from a dataset (without quote in API call)
     * api/odata/<dataset_id>(<record_id>)/
   * * ``odata_metadata_doc``
     * metadata call
     * api/odata/$metadata/
   * * ``odata_record_count``
     * number of records in a dataset
     * api/odata/<dataset_id>/$count/

API names for OpenDataSoft APIv2
--------------------------------

The **api** field for OpenDataSoft APIv2 (ods_v2) contains one of the following values.

.. list-table::
  :header-rows: 1

  * * API name
    * Description
    * URL template
  * * ``api_root``
    * Call to API v2 root
    * /v2
  * * ``api_source``
    * Call to source path (catalog, monitoring, opendatasoft)
    * /v2/<source>
  * * ``datasets_index``
    * Search on datasets catalog (can be an export if ``export_as`` parameter is used)
    * /v2/<source>/datasets
  * * ``dataset_lookup``
    * Dataset lookup call
    * /v2/<source>/datasets/<dataset_id>
  * * ``aggregate_datasets``
    * Aggregation call on catalog
    * /v2/<source>/aggregates
  * * ``records_index``
    * Search on dataset records (can be an export if ``export_as`` parameter is used)
    * /v2/<source>/datasets/<dataset_id>/records
  * * ``record_lookup``
    * Record lookup call
    * /v2/<source>/datasets/<dataset_id>/records/<record_id>
  * * ``aggregate_records``
    * Aggregation call on dataset records
    * /v2/<source>/datasets/<dataset_id>/aggregates
  * * ``attachments_index``
    * Call to dataset attachments
    * /v2/<source>/datasets/<dataset_id>/attachments
  * * ``attachment_lookup``
    * Call to attachment lookup
    * /v2/<source>/datasets/<dataset_id>/attachments/<attachment_id>
  * * ``metadata_template_types_index``
    * Return metadata template types
    * /v2/<source>/metadata_templates
  * * ``metadata_template_type_lookup``
    * Metadata template type lookup
    * /v2/<source>/metadata_templates/<template_type>
  * * ``metadata_template_lookup``
    * Metadata template lookup
    * /v2/<source>/metadata_templates/<template_type>/<template_name>


A custom header **ODS-API-Analytics-App** can be sent along with the HTTP request. The header value is processed by our
monitoring layer and made available in the field **custom_attributes**.

The **embed type** field describes the type of embed which generated the query, when relevant.

.. list-table::
   :header-rows: 1

   * * Embed type
     * Description
   * * ``cartograph``
     * Cartograph embed
   * * ``chartbuilder``
     * Advanced chart embed
   * * ``explore-analyze``
     * Analyze tab embed
   * * ``explore-map``
     * Map tab embed
   * * ``explore-table``
     * Explore tab embed
   * * ``explore-images``
     * Images tab embed
