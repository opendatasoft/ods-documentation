Integrating content
===================

When editing your page in **expert mode**, you are able to integrate other content directly in your page.


Embedding an OpenDataSoft visualization
---------------------------------------
When you are browsing a visualization on an OpenDataSoft portal (including your own), you can see below a few options
to share the content, including "Embed", which will provide you with a little HTML code that you can paste in your page.
By doing so, you will embed the visualization inside your page.

.. ifconfig:: language == 'en'

  .. image:: integrate_map--en.png

.. ifconfig:: language == 'fr'

  .. image:: integrate_map--fr.png


Embedding a Twitter timeline
----------------------------
If you have an account on Twitter, you can create Twitter "widgets" from your Twitter account page, which are designed to be
integrated in other websites (like a blog). When you create a widget, Twitter provides you with a little "code" to paste in your
HTML code. Due to security concerns, JavaScript is blocked in OpenDataSoft pages editor, so you can't directly use the code provided
by Twitter. However, we provide an OpenDataSoft widget to achieve this instead. 

First, you need to capture the "Widget ID", which is present in the first line of the code, in the ``data-widget-id`` attribute:

.. code-block:: html

    <a class="twitter-timeline" data-dnt="true" href="**https://twitter.com/hashtag/opendata**" data-widget-id="12341234123412341234">My tweets</a>

In this example, the Widget ID is "12341234123412341234".

Then, add this widget in your page, using your Widget ID in the ``widget-id`` attribute:

.. code-block:: html

    <ods-twitter-timeline widget-id=""12341234123412341234></ods-twitter-timeline>


Embedding other third-party content
-----------------------------------
Services like YouTube often provides ways to embed their content into other websites, under the form of a pastable code.
Due to security concerns, we don't allow users to write JavaScript into pages, and some of these embed codes may be done in JavaScript,
which would therefore not work on our pages; but most services provide a code based on "iframes" which is fine. Working embeds include YouTube,
Vimeo, or Dailymotion.



Using widgets
-------------

When editing your page content in expert mode, you may want to use the ODS-Widgets library, which is a set of components, 
available as HTML elements, allowing you to natively integrate data visualizations in your page code, and building interactive
pages by combining widgets together.

The ODS-Widgets library is an open source, AngularJS-based framework developed and maintained by OpenDataSoft on
`GitHub <https://github.com/opendatasoft/ods-widgets>`_. It comes with a complete and comprehenseive
`online documentation <https://opendatasoft.github.io/ods-widgets/docs/>`_.

It can be used directly in your domain's content pages, or in third party Web sites as a standalone toolkit.

.. note::
    Despite being based on AngularJS, the ODS-Widgets is designed to be used as a set of HTML elements, and are therefore entirely
    used in HTML code, with no JavaScript to write. It is therefore usable by anyone with a few notions of HTML, and doesn't require
    development skills. Moreover, many visualizations from OpenDataSoft provide the equivalent widgets code in real time when you use
    them from the portal, so you can learn by starting from the result of a visualization and iterate from there.

On top of all the widgets offered by the `ods-widgets <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ library,
a few additional directives are available for use within the content pages on the platform. Contrary to the widgets,
these cannot be used on third-party websites for they are tightly coupled with the platform.

Contact form
^^^^^^^^^^^^

This widget inserts a form that users can use to contact the domain's administrators. It uses reCaptcha to make sure
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

  .. image:: integrate_content__ods-page-enumerator--en.png
     :alt: The list generated with the above use of odsPageEnumerator

* ``odsPagesList``

  Usage

  .. code-block:: html

     <ods-pages-list></ods-pages-list>

  Result

  .. image:: integrate_content__ods-pages-list--en.png
     :alt: The list generated with the above use of odsPagesList
