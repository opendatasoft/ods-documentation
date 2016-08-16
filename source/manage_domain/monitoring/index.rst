Monitoring a Domain
===================

Analyzing audience
------------------

There are three main views to analyze your domain, trying to answer three different questions:

- Users: who are the people using your data and with which intensity?
- Data: what is the distribution of the popularity among your datasets?
- Actions: what are people looking to do with your data?

In each view, you can select a period (default is the last month) and a dataset via a search bar.

If the default KPIs and analyzis are not enough for your needs, you can click on the "See data" link. It allows you to get the whole dataset and do your own analyzis.
Note that the data will be filtered with the period and dataset you may have chosen.

**API Call.** The key measure of the monitoring is the API call. An API call is one request to the data. It can be made directly via the API or when using one of our services like displaying a map or an analysis. For example when you search for a keyword on a dataset, it generate one request, hence it count as one API call.

Analyzing users usage
~~~~~~~~~~~~~~~~~~~~~

Go to the *Domain > Analytics > Users* page.

There are seven indicators :

1. **Activity**: daily API calls. It may allow you to understand better who are the people using your data (for example if you mostly have calls during week days). You can also link your activity to some events (a new dataset, a new communication campaign).

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-1-en.jpg
        :alt: Users Usages Activity Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-1-fr.jpg
        :alt: Usage Utilisateur Indicateur Activité

2. **Total API Calls**: Number of API calls over the period.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-2-en.jpg
        :alt: Users Usages Total API Calls Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-2-fr.jpg
        :alt: Usage Utilisateur Indicateur Total Appels API

3. **API Calls per User**: on average API calls per users.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-3-en.jpg
        :alt: Users Usages API Calls per User Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-3-fr.jpg
        :alt: Usage Utilisateur Indicateur Appels API par Utilisateurs

4. **Anonymous**: If your domain is open, you may have a lot of anonymous users, that's normal, that's the whole thing about Open Data. Not anonymous people are those who have an OpenDataSoft account and that are logged when they use your data.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-4-en.jpg
        :alt: Users Usages Anonymous Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-4-fr.jpg
        :alt: Usage Utilisateur Indicateur Anonymes

5. **Mobile Users**: Part of your activity coming from smartphones or tablets.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-5-en.jpg
        :alt: Users Usages Mobile Users Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-5-fr.jpg
        :alt: Usage Utilisateur Indicateur Utilisateurs Mobiles

6. **Top 5 Users**: The people who use your API or your data the most. Keep in mind that if somebody downloads a dataset and develops something on his laptop, you wont be able to know it and it won't appear here.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-6-en.jpg
        :alt: Users Usages Top 5 Users Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-6-fr.jpg
        :alt: Usage Utilisateur Indicateur Top 5 Utilisateurs

7. **Map of API Calls**: The map is based on the geolocation of IP addresses. It gives a good idea of the geographical distribution of usage. Yet it can be quite imprecise and may yield false geolocations.

.. ifconfig:: language == 'en'

    .. image:: usage__users-usage-7-en.jpg
        :alt: Users Usages Map of API Calls Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__users-usage-7-fr.jpg
        :alt: Usage Utilisateur Indicateur Carte des Appels API


Analyzing data usage
~~~~~~~~~~~~~~~~~~~~

Go to the *Domain > Analytics > Data* page.

There are seven indicators :

1. **Popularity**: Number of downloads and API calls per dataset during the period.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-1-en.jpg
        :alt: Data Usages Popularity Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-1-fr.jpg
        :alt: Usage Data Indicateur Popularité

2. **Total Datasets**: Number of datasets created/updated.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-2-en.jpg
        :alt: Data Usages Total Datasets Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-2-fr.jpg
        :alt: Usage Data Indicateur Total Jeux de données

3. **Total Records**: Number of records created/updated.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-3-en.jpg
        :alt: Data Usages Total Records Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-3-fr.jpg
        :alt: Usage Data Indicateur Total Enregistrements

4. **Top Datasets**: The 3 datasets with most API calls. Those are the datasets that drive the usage on your portal.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-4-en.jpg
        :alt: Data Usages Top Datasets Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-4-fr.jpg
        :alt: Usage Data Indicateur Top Jeux de données

5. **Down Datasets**: The 3 datasets with least API calls. Those datasets may have not met their audience yet.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-5-en.jpg
        :alt: Data Usages Down Datasets Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-5-fr.jpg
        :alt: Usage Data Indicateur Down Jeux de données

6. **Themes**: Distribution of popularity among themes. Allows you to understand what data your users look for.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-6-en.jpg
        :alt: Data Usages Themes Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-6-fr.jpg
        :alt: Usage Data Indicateur Themes

7. **Tags**: Distribution of popularity among tags. Allows you to understand what data your users look for.

.. ifconfig:: language == 'en'

    .. image:: usage__data-usage-7-en.jpg
        :alt: Data Usages Tags Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__data-usage-7-fr.jpg
        :alt: Usage Data Indicateur Tags

Analyzing actions usage
~~~~~~~~~~~~~~~~~~~~~~~

Go to the *Domain > Analytics > Actions* page.

There are eight indicators :

1. **Activity per type**: Distribution of the usage of your data between search, geo and analysis. Gives you precious information about what your users do and how to better serve them. Also remember that like with every charts on OpenDataSoft you can filter the variables displayed (Analyse, Geo or Search) by clicking on the legend.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-1-en.jpg
        :alt: Actions Usages Activity per type Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-1-fr.jpg
        :alt: Usage Actions Indicateur Activité par type

2. **Total Searchs**: Number of time somebody search for a dataset from the catalog, or search into a dataset.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-2-en.jpg
        :alt: Actions Usages Total Searchs Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-2-fr.jpg
        :alt: Usage Actions Indicateur Total recherches

3. **Search without results**: Number of searches that return no results.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-3-en.jpg
        :alt: Actions Usages Search without results Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-3-fr.jpg
        :alt: Usage Actions Indicateur Recherches sans résultat

4. **Actions per Page**: Distribution of where in your portal the actions are

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-4-en.jpg
        :alt: Actions Usages Actions per Page Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-4-fr.jpg
        :alt: Usage Actions Indicateur Actions par page

5. **Text searched without result**: Basically thoses may be the data users expect to find on your portal.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-5-en.jpg
        :alt: Actions Usages Text searched without result Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-5-fr.jpg
        :alt: Usage Actions Indicateur Textes de recherche sans résultat

6. **Federated Activity**: Percentage of API calls made on datasets added on other portals.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-6-en.jpg
        :alt: Actions Usages Federated Activity Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-6-fr.jpg
        :alt: Usage Actions Indicateur Activité fédérée

7. **Bot Activity**: Percentage of API calls made by bot. Keep in mind that bots are often useful and can help make your data known to the world.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-7-en.jpg
        :alt: Actions Usages Bot Activity Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-7-fr.jpg
        :alt: Usage Actions Indicateur Activité robots

8. **Requests in error**: Distribution and type calls ending in errors.

.. ifconfig:: language == 'en'

    .. image:: usage__actions-usage-8-en.jpg
        :alt: Actions Usages Requests in error Indicator

.. ifconfig:: language == 'fr'

    .. image:: usage__actions-usage-8-fr.jpg
        :alt: Usage Actions Indicateur Requetes en erreur


API calls Errors
~~~~~~~~~~~~~~~~

In most cases you won't be able to do anything. Anyway we want to be transparent on your users' usage.

.. list-table::
   :header-rows: 1

   * * Error name
     * Error Description
   * * DatastoreError
     * This is a server error, we monitor it real time on our side to avoid it.
   * * InvalidPolygon
     * The defined polygon filter on a geo-query is malformed. For example it can be a self-crossing polygon like an hourglass.
   * * HTTPError
     * It comes from a federated dataset. It may happen when you change the schema of a dataset when it is already federated on another portal. Always be careful when you update a dataset's schema.
   * * MissingParameters
     * It may happen when you forget the dataset_id in the API console.
   * * UnkownDataset
     * The dataset_id on the URL doesn't exist or someone has tried to access a dataset without having the right.
   * * ResultWindowTooHigh
     * The search API is paginated with an offset and a response size. You can't access more than ~10k results. If you want more than 10k results you'll probably want to use the download API.


APIs Monitoring Data
~~~~~~~~~~~~~~~~~~~~

You'll find below the list of fields available in the API monitoring dataset.

.. list-table::
   :header-rows: 1

   * * Field name
     * Field Description
     * Facet
   * * timestamp
     * Timestamp of the event
     * no
   * * user_ip_addr
     * Remote IP address
     * no
   * * hostname
     * HTTP request host name
     * yes
   * * user_id
     *  User identifier
     * yes
   * * dataset_id
     * Dataset identifier
     * yes
   * * domain_id
     * Domain identifier
     * yes
   * * api
     * API name (see below)
     * yes
   * * api_type
     * API type (ods_v1, ods_v2 or odata)
     * yes
   * * query_string
     * HTTP request query string
     * no
   * * custom_attributes
     * HTTP request custom headers (see below)
     * yes
   * * format
     * HTTP response format
     * yes
   * * size_res
     * Response content size
     * no
   * * nhits
     * Number of results
     * no
   * * exec_time
     * Full processing time
     * no
   * * request_aborted
     * If the request was aborted
     * yes
   * * facet
     *  List of facets used
     * yes
   * * in_error
     * If the request processing generated an error
     * yes
   * * error
     * Error message
     * no
   * * attachment_id
     * Attachment identifier
     * no
   * * image_id
     * Image identifier
     * no
   * * user_agent
     * HTTP request user agent
     * no
   * * referer
     * HTTP request referer
     * no
   * * embed_type
     * Embed type (see below)
     * no
   * * embed_referer
     * Embed referer
     * no
   * * geo_coordinates
     * Geo coordinates (geoip on field user_ip_addr)
     * no
   * * query_field
     * List of fields used in a full text query
     * no
   * * query_text
     * Free text in a full text query
     * no
   * * bot
     * If the query was used by a bot
     * yes


API names for OpenDataSoft APIv1
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


The **api** field for OpenDataSoft APIv1 (ods_v1) contains one of the following values.

.. list-table::
   :header-rows: 1

   * * API name
     * Description
     * URL template
   * * search_datasets
     * Search catalog query
     * api/datasets/1.0/search
   * * lookup_dataset
     * Lookup dataset query
     * api/datasets/1.0/<dataset_id>
   * * dataset_list_snapshots
     * List dataset snapshots query
     * api/datasets/1.0/<dataset_id>/snapshots/
   * * search_dataset_records
     * Search query on dataset records
     * api/datasets/1.0/<dataset_id>/records/
   * * lookup_record
     * Lookup record query
     * api/datasets/1.0/<dataset_id>/records/<record_id>
   * * dowload_dataset
     * Download dataset records from explore tab in explore
     * explore/dataset/<dataset_id>/download/
   * * download_dataset_records
     * Download dataset records from API (total dataset download count = dowload_dataset + download_dataset_records)
     * api/datasets/1.0/<dataset_id>/records/download/
   * * download_dataset_attachment
     * Download dataset attachment
     * api/datasets/1.0/<dataset_id>/attachments/<attachment_id>/
   * * get_bbox_clusters
     * Bounding box query.
     * api/datasets/1.0/<dataset_id>/records/boundingbox/
   * * analyze_records
     * Analyze records query. Called by analyze tab in explore
     * api/datasets/1.0/<dataset_id>/records/analyze/
   * * get_geo_clusters
     * Geo cluster query. Called by map tab in explore for geo_point
     * api/datasets/1.0/<dataset_id>/records/geocluster/
   * * get_geo_clusters_polygon
     * Geo clusters polygon query. Called by map tab in explore for shapes
     * api/datasets/1.0/<dataset_id>/records/geopolygon/
   * * download_image
     * Download image. Called by image tab in explore
     * explore/dataset/<dataset_id>/images/<image_id>/download/


API names for ODATA API
^^^^^^^^^^^^^^^^^^^^^^^

The **api** field for ODATA API contains one of the following values.

.. list-table::
   :header-rows: 1

   * * API name
     * Description
     * URL template
   * * odata_service_root_doc
     * Root ODATA API
     * api/odata/
   * * odata_entity
     * list of records in a dataset
     * api/odata/<dataset_id>/
   * * odata_property_value
     * plain text value of a specific field of a specific record from a dataset
     * api/odata/<dataset_id>('<record_id>')/<field>/$value
   * * odata_entity_key_predicate
     * specific record from a dataset
     * api/odata/<dataset_id>('<record_id>')/
   * * record_with_id
     * specific record from a dataset (without quote in API call)
     * api/odata/<dataset_id>(<record_id>)/
   * * odata_metadata_doc
     * metadata call
     * api/odata/$metadata/
   * * odata_record_count
     * number of records in a dataset
     * api/odata/<dataset_id>/$count/

API names for OpenDataSoft APIv2
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The **api** field for OpenDataSoft APIv2 (ods_v2) contains one of the following values.

.. list-table::
  :header-rows: 1

  * * API name
    * Description
    * URL template
  * * api_root
    * Call to API v2 root
    * /v2
  * * api_source
    * Call to source path (catalog, monitoring, opendatasoft)
    * /v2/<source>
  * * datasets_index
    * Search on datasets catalog (can be an export if ``export_as`` parameter is used)
    * /v2/<source>/datasets
  * * dataset_lookup
    * Dataset lookup call
    * /v2/<source>/datasets/<dataset_id>
  * * aggregate_datasets
    * Aggregation call on catalog
    * /v2/<source>/aggregates
  * * records_index
    * Search on dataset records (can be an export if ``export_as`` parameter is used)
    * /v2/<source>/datasets/<dataset_id>/records
  * * record_lookup
    * Record lookup call
    * /v2/<source>/datasets/<dataset_id>/records/<record_id>
  * * aggregate_records
    * Aggregation call on dataset records
    * /v2/<source>/datasets/<dataset_id>/aggregates
  * * attachments_index
    * Call to dataset attachments
    * /v2/<source>/datasets/<dataset_id>/attachments
  * * attachment_lookup
    * Call to attachment lookup
    * /v2/<source>/datasets/<dataset_id>/attachments/<attachment_id>
  * * metadata_template_types_index
    * Return metadata template types
    * /v2/<source>/metadata_templates
  * * metadata_template_type_lookup
    * Metadata template type lookup
    * /v2/<source>/metadata_templates/<template_type>
  * * metadata_template_lookup
    * Metadata template lookup
    * /v2/<source>/metadata_templates/<template_type>/<template_name>


A custom header **ODS-API-Analytics-App** can be sent along with the HTTP request. The header value is processed by our
monitoring layer and made available in the field **custom_attributes**.

The **embed type** field describes the type of embed which generated the query, when relevant.

.. list-table::
   :header-rows: 1

   * * Embed type
     * Description
   * * cartograph
     * Cartograph embed
   * * chartbuilder
     * Advanced chart embed
   * * explore-analyze
     * Analyze tab embed
   * * explore-map
     * Map tab embed
   * * explore-table
     * Explore tab embed
   * * explore-images
     * Images tab embed

Google Analytics
----------------

When OpenDataSoft allows you to monitor the data and API usage, the Google Analytics integration allows you to track the visits on your domain.

You can monitor the usage of your domain by configuring a Google Analytics integration.

Simply go to the *Domain > Configuration > Tracking* page and fill in you Google Analytics ID.

.. ifconfig:: language == 'en'

    .. image:: usage__google-analytics-integration--en.jpg
        :alt: Google Analytics ID configuration

.. ifconfig:: language == 'fr'

    .. image:: usage__google-analytics-integration--fr.jpg
        :alt: Configuration de l'ID Google Analytics

OpenDataSoft's Google Analytics integration tracks the following views:

* Datasets catalog page
* Dataset explore page


Analyzing domain activity
=========================

Backoffice
----------

The activity log allows the domain administrator to monitor domain configuration activity.

To access the activity log, simply go to the *Domain > Monitoring > Activity log* page.

.. ifconfig:: language == 'en'

    .. image:: activity-log-en.jpg
        :alt: Backoffice

.. ifconfig:: language == 'fr'

    .. image:: activity-log-fr.jpg
        :alt: Backoffice

As in the API monitoring page, you can access the full activity log dataset by hitting the upper right link
**See more**.

The activity log dataset contains the following fields.

.. list-table::
   :header-rows: 1

   * * Field name
     * Description
   * * timestamp
     * Action timestamp
   * * dataset_id
     * Id of the dataset if the action is relative to a specific dataset
   * * user_id
     * Identifier of the event owner
   * * action
     * Action name (one of **publish_dataset**, **add_dataset**, **edit_dataset**, **delete_dataset**)

Quotas
------
