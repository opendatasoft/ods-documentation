Integrating content
===================

Sharing content
---------------

Embedding content
-----------------

It is possible to embed an OpenDataSoft content page as you would do with any OpenDataSoft data visualization. Just set
the HTTP parameter **headless** to **true** in your page URL. For instance:
`<http://mydomain.opendatasoft.com/page/mypage/?headless=true>`_.

Using widgets
-------------

When editing your page content in expert mode, you may want to use the ods-widgets library, which is a high level
abstraction allowing you to natively integrate data visualizations in your page code.

This overcomes classic IFrames limitations:

* IFrames generate a high load browser side
* IFrames cannot interact together

The ods-widgets library is an Open Source, AngularJS based framework developed and maintainted by OpenDataSoft on
`GitHub <https://github.com/opendatasoft/ods-widgets>`_. It comes with a complete and comprehenseive
`online documentation <https://opendatasoft.github.io/ods-widgets/docs/>`_.

It can be used directly in your domain's content pages (without having to load / initialize the library as this is
already done by the platform) or in third pary Web sites, as a standalone toolkit.

On top of all the widgets offered by the `ods-widgets <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ library,
a few additional directives are available for use within the content pages on the platform. Contrary to the widgets,
these cannot be used on third-party websites for they are tightly coupled with the platform.

Contact form
^^^^^^^^^^^^

This directive inserts a form that users can use to contact the domain's administrators. It uses reCaptcha to make sure
anonymous users cannot spam the administrators.

.. ifconfig:: language == 'en'

   .. image:: integrate_content__contact-form--en.png
     :alt: Contact form

.. ifconfig:: language == 'fr'

   .. image:: integrate_content__contact-form--fr.png
     :alt: Formulaire de contact

.. list-table::
     :header-rows: 1

   * * Parameter
     * Type
     * Description
   * * ``page-id`` **required**
     * string
     * The slug of the current page so that administrators know where the request came from.
   * * ``form-disabled``
     * boolean (default: false)
     * Specify whether to disable (that is prevent data input and submission) the contact form or not.
   * * ``logged-in``
     * boolean (default: autodetected)
     * Specify whether the current user is logged in or not. If true, the recaptcha is not displayed.
   * * ``name-label``
     * string (default: `Your name`)
     * Specify the label displayed in front of the name field.
   * * ``email-label``
     * string (default: `Email`)
     * Specify the label displayed in front of the email field.
   * * ``message-label``
     * string (default: `Message`)
     * Specify the label displayed in front of the message field.

Pages list
^^^^^^^^^^

These 2 directives list all the portal's content pages. While the first one only provides an iterator, leaving to you
the actual display of the list, the second one generate a list containing a link to the page alongside the page
description.

* ``odsPageEnumerator``

  Usage

  .. code-block:: html

     <ods-page-enumerator>
         <a href="{{ page.slug }}">{{ page.title.en || page.slug }}</a> - {{ page.description }}
     </ods-page-enumerator>

  Result

  .. image:: integrate_content__ods-page-enumerator--en.png
     :alt: The list generated with the above use of odsPageEnumerator

* ``odsPagesList``

  Usage

  .. code-block:: html

     <ods-pages-list></ods-pages-list>

  Result

  .. image:: integrate_content__ods-pages-list--en.png
     :alt: The list generated with the above use of odsPagesList

Configuring the contact form
----------------------------

Listing all pages
-----------------
