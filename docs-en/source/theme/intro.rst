Introduction to OpenDataSoft's theme management
===============================================

OpenDataSoft's theme management interface can be found in the domain back-office. You can access it either by clicking
on the ``theme`` link in the header or the ``Update the portal's theme`` button in the back-office landing page.

.. note::
    In order to access the theme page, you'll need to be able to edit domain properties.
    See `Managing the Security of your Domain <manage_domain/security>`_ for more details.

.. image:: intro__access-interface.png

Using the various forms available in this page, you'll be able to customize every aspect of your portal, from basic
colors to making major changes in its layout.

.. image:: intro__interface.png


Versioning
----------

Before diving into the many ways to customize the portal's theme, it is very important to stress that everything you
will do on this page is versioned. This is to say that your work has a version number assigned to it and you can at any
moment create a new version. You'll always be working on the latest version (think of it as your working draft), but can
make any version live (that is, apply it to your portal). Were you to make the latest version live, a new one would be
created and would become your new working draft. Only the latest version can be edited; all previous ones are read-only.

While working on the latest version, you can preview your changes by clicking the ``Preview`` button. This will open a
new window containing your portal with the current version of the theme applied to it.

.. note::
    Only users able to edit the domain properties can preview the latest theme version. If you were to share the URL of
    the preview with other users, they won't see any difference in the live version.

.. note::
    You can preview the latest version of the theme at any moment and on any given page on the portal's
    front-office by adding the ``stage_theme=true`` parameter to the URL.

.. image:: intro__versioning.png

The version selector will tell you explicitly if you're working on the latest version or rather viewing a previous one,
as well as which version is live.

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

If changing colors is not enough and you'd like make deeper changes, you'll have to write your own CSS. Luckily this tab
enables you to input you own style rules. These will be applied on top of OpenDataSoft's default rules and have
precedence over them.

.. image:: intro__stylesheet.png

If your customization uses specific images and fonts, you can upload them to the platform using the
`assets management page <assets>`_. You'll then be able to copy the assets URLs and paste them in your CSS code.

.. important::
    All of OpenDataSoft's CSS code is written following the `BEM methodology <http://getbem.com/introduction/>`_ and
    prefixed with `ods-` so that they won't conflict with your own styles and can easily be overridden.
    You'll find a great introduction to this methodology on the ever-useful
    `CSS Tricks website <https://css-tricks.com/bem-101/>`_.

    In short, class names are written as *block, element, modifier* (hence the BEM)
    `.ods-block[--blockmodifier][__element][--elementmodifier]`. The hierarchy tree is at most 2 selectors deep. Also,
    the relevant style is as close to the element as possible.

    As a result, if you wanted to change the style of an element, you would only have to find the element's class and
    change the desired CSS property. It won't have any side-effect (limited to this single class name) and is guaranteed
    to work (since the hierarchy tree is mostly flat).


Header and footer
~~~~~~~~~~~~~~~~~

While both header and footer can already be branded using the domain's customization section and color selection panel,
organisations usually want to further customize the layout and content of these areas.

.. image:: intro__header.png

Both header and footer are wrapped within independent AngularJS applications, which means you can use `ng-if`,
`ng-class`, `ng-show`, `ng-hide` and all of Angular's standard directives to make the areas more dynamic. One common
request is to collapse the header into a *click-to-expand* side menu below a certain viewport width. For this purpose we
provide the `ods-responsive-menu` directive. See `the dedicated page <responsive-menus>`_ for more information.

We also provide placeholders that will be replaced with the content specified in the domain customization options such
as menu items, language selectors and logos. The full list is displayed right above the code area.

.. note::
    While you can take advantage of Angular within the header and footer, standard JS is still forbidden for security
    reasons.

Catalog card
~~~~~~~~~~~~

On the catalog page of your domain, each dataset is represented by a single *catalog card*. This card elements features
a few standard elements but you may want to radically change the way it looks, add new links or implement new
behaviours.

Here are a few examples of catalog cards:

.. image:: intro__catalog-card-example--central.png
.. image:: intro__catalog-card-example--datacorsica.png
.. image:: intro__catalog-card-example--toulouse.png

We provide handy directives to easily retrieve and include any information relative to a dataset. These directives also
come with a standard style that you can override using the *Stylesheet* tab.

.. image:: intro__catalog-card.png

The directives are:

* `ods-catalog-card` must wrap the whole catalog card for the other directives to work.
* `ods-catalog-card-theme-icon` will retrieve the dataset's theme and include the relevant icon.
* `ods-catalog-card-body` provides useful style and behaviour handling edge cases (datasets without records, API
  proxy...).
* `ods-catalog-card-title`, `ods-catalog-card-description` and `ods-catalog-card-keywords` are self-explanatory.
* `ods-catalog-card-metadata-item` takes an `item-key` and an `item-title` attributes, retrieve a metadata
  property matching the `item-key` from the dataset and includes in in the page using `item-title` as its label. It
  should be wrapped by a `.ods-catalog-card__metadata` element for better styling but with no obligation.

.. list-table:: Metadata item keys
   :header-rows: 1

   * * Item key
     * Item title
   * * License
     * License (will be rendered as a link if possible)
   * * Language
     * Content language
   * * Modified
     * Date of last modification
   * * Publisher
     * Publisher's name
   * * References
     * Link to the original source of the data
   * * odi_certificate_url
     * Link to the ODI certificate
   * * records_count
     * Number of records in the dataset (regardless of filters)
   * * Attributions
     * Names of the data owner
   * * source_domain
     * For federated datasets only, the name of the domain the dataset comes from
   * * source_domain_title
     * For federated datasets only, the original title of the dataset on its source domain
   * * source_dataset
     * For federated datasets only, the original identifier of the dataset on its source domain
   * * explore.download_count
     * Number of data downloads for this dataset

Offline development
-------------------

We've seen in the previous section that you can write detailed CSS rules that will override the portal's default theme.
However, writing it all in the browser can become tedious, especially for seasoned developers used to powerful text
editors. Since it only accepts pure CSS, you will have to manually ensure that your rules are correctly vendor-prefixed
and won't be able to use the features frontend developers are accustomed to with pre-processors such as variables and
nesting.

For all these reasons, we've created an API enabling users with sufficient rights and the theme API key to locally
write their style rules using all the tools they want, and to just push the resulting CSS code to the platform. We've
packaged a client to this API along with common tools (less preprocessor and autoprefixer) in the
`OpenDataSoft Portal Development Kit <https://github.com/opendatasoft/ods-portal-devkit>`_.

This ODS Portal DevKit is an open source project distributed for free on Github, feel free to download it and taylor it
to your development workflow.

Theme API key
~~~~~~~~~~~~~

You can find the theme API key on the portal theme customization page. Just expand the *API key for offline development*
section and copy the key.

.. image:: intro__offline-dev.png

.. warning::
    By generating a new key, you'll also be revoking previous ones. As a result, developers using an old key won't be
    able to push their work to the platform. Just remember to forward the new key to each developer working on your
    portal's theme to ensure that development goes uninterrupted.
