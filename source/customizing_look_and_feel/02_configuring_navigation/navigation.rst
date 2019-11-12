Configuring the navigation
==========================

The navigation in an Opendatasoft portal starts with the root page, that welcomes users, and is then mainly guided by the navigation header located at the top of any interface in the front office. Both are configurable via the Look and feel > Navigation interface.


Choosing a root page
--------------------

The root page is the default page on which a user lands when accessing the portal via its main URL (e.g. domainname.opendatasoft.com/). By default, the root page of the Explore page, which displays the catalog of datasets of the portal. It can be replaced with any other page build within the domain, such as a home page build with HTML & CSS using the Pages section of the back office (see Creating content).

To change the root page:

1. In the Root page area of the Navigation configuration interface, click on the drop-down menu.
2. Choose a page among the list.
3. Click on the Save button in the top right corner.


Configuring the navigation header
---------------------------------

The navigation header located at the very top of any page of the front office contains items that link to either chosen pages of the portal, or external websites. The default menu items of the navigation header are:

- Data, with a link to the Explore page
- Maps, with a link to the Map Builder
- Charts, with a link to the Chart Builder
- API, with a link to the Search API console
- Documentation, with a link to the Opendatasoft Help Hub

.. admonition:: Important
   :class: important

   We highly advise to keep in the navigation header the link to the Explore page that contains the datasets catalog of the portal.

Adding a new menu item
^^^^^^^^^^^^^^^^^^^^^^

1. In the Header menu area of the Navigation configuration interface, click on the Add menu item button.
2. In the textbox of the Page URL column, write or paste the link of the new item. External links must start with ``http://`` or ``https://``
3. (optional) If the link is an external one, click the "Open link in a new tab/window" for it to do so.
4. In the textbox(es) of the Label column, write the label of the menu item, that will be displayed in the navigation header. There should be one label per language available on the portal.
5. (optional) Click the reordering icon [icon] to place the menu item in a chosen position among the other menu items.

Deleting a menu item
^^^^^^^^^^^^^^^^^^^^

1. Click the trash icon [icon] to delete a menu item.
2. Click on the Save button in the top right corner.
