Monitoring a domain
===================

There are three main views to analyze your domain, trying to answer three different questions:

- Users: who are the people using your data and with which intensity?
- Data: what is the distribution of the popularity among your datasets?
- Actions: what are people looking to do with your data?

**API Call.** The key measure of the monitoring is the API call. An API call is one request to the data. It can be made directly via the API or when using one of our services like displaying a map or an analysis. For example when you search for a keyword on a dataset, it generates one request, hence it counts as one API call.

In the Users and Actions view, you can select a period (default is the last week).

.. admonition:: Note
   :class: note

   If the domain has subdomains, a feature allowing the monitoring of these subdomains through the main domain's Analytics can be activated on demand. When this feature is activated, a "Select domain" filter is displayed at the top of the dashboard. In this filter, tick "Subdomains" to take them into account in the monitoring dashboards. Note that the monitoring of subdomains can only be available for the Users, Actions and Backoffice monitoring dashboards.

If the default KPIs and analysis are not enough for your needs, you can click on the "See source data" link at the bottom of the page. It allows you to get the whole dataset and do your own analyzis. There is a :doc:`documentation page </managing_domain/03_analyzing_domain_usage/analyzing_source_data>` describing the data.

Please note that the dataset includes usage data for **at least** the **3 last months**. Older data are archived within the limits indicated by the law and our terms of use.

.. toctree::
   :maxdepth: 2

   analyzing_users_usage
   analyzing_data_usage
   analyzing_dataset_usage
   analyzing_actions_usage
   analyzing_domain_activity
   analyzing_source_data
