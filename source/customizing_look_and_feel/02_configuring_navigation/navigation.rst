Configuring the navigation
==========================

Users generally start their discovery of an Opendatasoft domain with the root page and then navigate to other available pages using the header located at the top of any interface in the front office. Both are configurable via the **Look and feel > Navigation** subsection of the back office.


Choosing a root page
--------------------

.. image:: images/navigation_root-page.png

The root page is the default page on which a user lands when accessing the portal via its main URL (for example, ``domainname.opendatasoft.com``). By default, the root page is the Explore page, which displays the catalog of datasets of the portal. It can be replaced with any other page available within the domain, such as a home page build with HTML & CSS using the Pages section of the back office (see :doc:`Creating content </creating_content/index>`).

To change the root page:

1. In the **Navigation** configuration interface, look for the **Root page** configuration.
2. Click on the drop-down menu to choose a page among the list.
3. Click on the Save button in the top right corner.

.. admonition:: Important
   :class: important

   All available pages are displayed in the drop-down list, but private pages are grayed out. Only public pages can indeed be chosen as the root page.


Configuring the navigation header
---------------------------------

.. image:: images/navigation_header.png

The navigation header located at the very top of any page of the front office contains items that link to either chosen pages of the portal or external websites. The default menu items of the navigation header are:

- Data, with a link to the Explore page
- Maps, with a link to the Map Builder
- Charts, with a link to the Chart Builder
- API, with a link to the Search API console
- Documentation, with a link to the Opendatasoft Help Hub

.. admonition:: Important
   :class: important

   We highly advise to keep in the navigation header the link to the Explore page that contains the datasets catalog of the portal.

To configure the navigation header, look for the **Header** configuration in the **Navigation** configuration interface.

Adding a new menu item
^^^^^^^^^^^^^^^^^^^^^^

1. Click on the + Add menu item button.
2. In the textbox of the Page URL column, write or paste the link to the new item. External links must start with ``http://`` or ``https://``
3. (optional) If the link is an external one, tick the *Open link in a new tab/window* option box for it to do so.
4. In the textbox(es) of the Label column, write the label of the menu item that will be displayed in the navigation header. There should be one label per language available on the portal.
5. (optional) Click on the reordering icon |icon-reorder| to place the menu item in a chosen position among the other menu items.

Deleting a menu item
^^^^^^^^^^^^^^^^^^^^

1. Click on the trash icon |icon-trash| to delete a menu item.
2. Click on the Save button in the top right corner.





.. |icon-reorder| image:: images/icon_reorder.png
    :width: 17px
    :height: 17px

.. |icon-trash| image:: images/icon_trash.png
    :width: 14px
    :height: 15px
