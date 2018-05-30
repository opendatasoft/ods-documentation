Pages list
==========

These 2 widgets list all the portal's content pages. While the first one only provides an iterator, leaving to you
the actual display of the list, the second one generate a list containing a link to the page alongside the page
description.

* ``odsPageEnumerator``

  Usage

  .. code-block:: html

     <ods-page-enumerator>
         <a href="{{ page.slug }}">{{ page.title.en || page.slug }}</a> - {{ page.description }}
     </ods-page-enumerator>

  Result

  .. image:: images/integrate_content__ods-page-enumerator--en.png
     :alt: The list generated with the above use of odsPageEnumerator

* ``odsPagesList``

  Usage

  .. code-block:: html

     <ods-pages-list></ods-pages-list>

  Result

  .. image:: images/integrate_content__ods-pages-list--en.png
     :alt: The list generated with the above use of odsPagesList
