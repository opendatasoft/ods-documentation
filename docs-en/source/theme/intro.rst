Introduction to OpenDataSoft's theme management
===============================================

OpenDataSoft's theme management interface can be found in the domain backoffice. You can access it either by clicking on
the ``theme`` link in the header or the ``Update the portal's theme``button in the backoffice landing page.

.. note::
    In order to access the theme page, you'll need to be able to edit domain properties.
    See `Managing the Security of your Domain <manage_domain/security>`_ for more details.

.. image:: intro__access-interface.png

Using the various forms available in this page, you'll be able to customize every aspect of your portal, from the basic
colors to major changes in the layout.

.. image:: intro__interface.png


Versioning
----------

Before diving in the many ways of customizing the portal's theme, it is very important to stress out that everything you
will do on this page is versioned. That is to say your work has a version number assigned to it and you can at any
moment create a new version. You'll always be working on the latest version (think of it as your working draft), but can
make any version live (that is, apply it to your portal). Were you to make the latest version live, a new one would be
created and would become your new working draft. The latest version only is editable, all previous ones are read-only.

While working on the latest version, you can preview your changes by clicking the ``Preview`` button. This will open a
new window containing your portal with the current version of the theme applied to it.

.. note::
    Only users able to edit domain properties are able to preview the latest theme version. If you were to share with
    other users the URL of the preview, they wouldn't see any difference with the live version.

.. note::
    You can also preview the latest version of the theme at any moment and on any given page on the portal's
    frontoffice by adding the ``stage_theme=true`` parameter to the URL.

.. image:: intro__versioning.png

The version selector will tell you explicitly if you're working on the latest version or rather simply viewing a
previous one and which version is the live one.

Customization options
---------------------

Layout options
~~~~~~~~~~~~~~

The portal layout relies on a 12-column grid system largely inherited from the
`Bootstrap CSS framework <http://getbootstrap.com/css/#grid>`_ and as such has a few internal variables used throughout
its CSS. This tab allows you to set the value of some of these variables.

The variables that can currently be overridden are the gutter width and the responsive breakpoints.

.. image:: intro__layout-options.png

The gutter width is the space between columns, rows and adjacent boxes.

The responsive breakpoints are the screen widths (in pixels) at which the layout will change to better accommodate the
available space. There are 4 modes available: extra-small , small , medium and large which means that there are 3
breakpoints: extra-small to small, small to medium and medium to large. The modes are also commonly referred to as
*mobile*, *tablet*, *desktop* and *large desktop*.

.. note::
    Bear in mind though that *mobile mode* doesn't mean that the user is actually using a mobile device, but rather that
    the browser on the device only offers a small display area.

In order to reset any of the variable to its default value, just click on the clear button next to it.

Colors
~~~~~~

As with layout options, the OpenDataSoft platform relies on a handful of color variables for the style of the portal
elements. You can use the color inputs on this tab to set some of theme. This way with just a few clicks you can brand
your portal to your colors.

.. image:: intro__colors.png

.. note::
    These variables will override the default theme's colors. The custom style rules you can write in the stylesheet tab
    will however have precedence over these colors. Which means that your color choices may not be visible if you wrote
    more specific CSS rules.

Stylesheet
~~~~~~~~~~

TODO: assets, BEM, avoid inheritance


Header and footer
~~~~~~~~~~~~~~~~~


Catalog card
~~~~~~~~~~~~


Offline development
-------------------

We've seen in the previous section that you can write detailed CSS rules that will override the portal's default theme.
However writing it all in the browser can become tedious, especially for seasoned developers used to powerful text
editors. Since it only accepts pure CSS, you will have to manually ensure that your rules are correctly vendor-prefixed
and won't be able to use the features frontend developers are accustomed to with pre-processors such as variables and
nesting.

For all these reasons, we've created an API enabling users with sufficient rights and the theme API key to locally
write their style rules using all the tools they want and just push the resulting CSS code to the platform. We've
packaged a client to this API alongside common tools (less preprocessor and autoprefixer) in the
`OpenDataSoft Portal Development Kit <https://github.com/opendatasoft/ods-portal-devkit>`_.

This ODS Portal DevKit is an open source project distributed freely on Github, feel free to download it and taylor it to
your development workflow.

Theme API key
~~~~~~~~~~~~~

You can find the theme API key on the portal theme customization page, just expand the *API key for offline development*
section and copy the key.

.. image:: intro__offline-dev.png

.. warning::
    By generating a new key, you'll also be revoking previous ones. As a result, developers using an old key won't be
    able to push their work to the platform. Just remember to forward the new key to each developer working on your
    portal's theme to ensure that development goes uninterrupted.
