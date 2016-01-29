Writing Content Pages
=====================

Not only the OpenDataSoft platform allows you to browse and explore configured datasets. You can also use it to build 
fully customized content pages, mixing editorial content as well as data visualizations built from your domain's 
datasets.

Content pages can be used to:

* Complement and organize your data portal by configuring a home page and by adding topic specific pages.
* Build editorial content directly on the platform and publish it on the Web, as a direct link or through an embed.
* Build dynamic dashboards

Creating a new content page
---------------------------

To create a new content page, go to the *Domain > Portal > Pages* section.

.. ifconfig:: language == 'en'

  .. image:: publish_content__page-list--en.jpg
     :alt: Create a content page
     
.. ifconfig:: language == 'fr'

  .. image:: publish_content__page-list--en.jpg
     :alt: Create a content page

Simply hit the **New** button. Once created, the page edition window is displayed.

.. ifconfig:: language == 'en'

  .. image:: publish_content__page-edit--en.jpg
     :alt: Edit a content page
     
.. ifconfig:: language == 'fr'

  .. image:: publish_content__page-edit--fr.png
     :alt: Edit a content page

Before being able to save a page, you need to configure the page **slug** (*page1* in the example above).

Note that if your domain is configured for multiple user interface languages, you will have to configure your page 
content (title, description and page content itself) for all the configured languages.

The template selector lets you select ready to use templates. You can also choose to edit your page in expert mode, 
which gives you a very efficient and powerful way to define your page content.

Note that you can switch to expert mode from any template. But once you've switched to expert mode, you cannot go back.

.. ifconfig:: language == 'en'

  .. image:: publish_content__page-expert--en.jpg
     :alt: Content page expert mode
     
.. ifconfig:: language == 'fr'

  .. image:: publish_content__page-expert--fr.png
     :alt: Content page expert mode

In expert mode, you can independently work on your page content (HTML5) and style (CSS). Javascript code is stripped 
from HTML content but as the OpenDataSoft UI framework is based on AngularJS, you can leverage AngularJS bindings 
directly in your page's code.

The preview button allows you to visualize the current content of your page, even if you didn't save it.

About the ods-widgets library
-----------------------------

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

Embedding content pages
-----------------------

It is possible to embed an OpenDataSoft content page as you would do with any OpenDataSoft data visualization. Just set 
the HTTP parameter **headless** to **true** in your page URL. For instance: 
`<http://mydomain.opendatasoft.com/page/mypage/?headless=true>`_.

Updating your domain's menu
---------------------------

Once your page content has been fully defined, you might want to *plug* your page in your domain's menu. This can easily 
be done by editing the menu components in the *Domain > Portal > General settings* section.

.. ifconfig:: language == 'en'

  .. image:: publish_content__domain-menu--en.jpg
     :alt: Domain menu
     
.. ifconfig:: language == 'fr'

  .. image:: publish_content__domain-menu--fr.png
     :alt: Domain menu

Special directives
------------------

On top of all the widgets offered by the `ods-widgets <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ library,
a few additional directives are available for use within the content pages on the platform. Contrary to the widgets,
these cannot be used on third-party websites for they are tightly coupled with the platform.

Contact form
^^^^^^^^^^^^

This directive inserts a form that users can use to contact the domain's administrators. It uses reCaptcha to make sure
anonymous users cannot spam the administrators.

.. ifconfig:: language == 'en'

   .. image:: publish_content__contact-form--en.png
      :alt: Contact form

.. ifconfig:: language == 'fr'

   .. image:: publish_content__contact-form--fr.png
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
