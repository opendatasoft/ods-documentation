Designing responsive header menus
=================================

.. important::
   The theme customization is not available on freemium domains (created through the
   `Try it for free <https://www.opendatasoft.com/discover-opendatasoft-demo/>`_ page on
   `OpenDataSoft's website <https://www.opendatasoft.com>`_).
   If your domain is a freemium domain and would like to get this theme feature, `email us! <sales@opendatasoft.com>`_

.. warning::

    This page explores in length the customization of the platform responsive menu directive. This entails a fair amount
    of HTML and CSS code to be written and explained. You'll need working knowledge of both these technologies to
    understand the content of this page.

    For basic customization needs, check out :doc:`customizing your portal's theme <theme>`.


One very common pattern in graphic design is to have the header menu hidden on small screens and replaced by a single
toggle button, which usually features the famous *hamburger icon* |hamburger|.

.. |hamburger| image:: responsive-menus__hamburger.png

Clicking this button opens or closes a drawer containing all menu items. This behaviour can be seen on
`OpenDataSoft's central data repository <https://data.opendatasoft.com/page/home/>`_ and on all new portals.

.. figure:: responsive-menus__data-collapsed.png
    :align: left

    Closed drawer

.. figure:: responsive-menus__data-expanded.png
    :align: right

    Open drawer

Implementation
--------------

Implementing this behaviour usually means resorting heavily to *media queries*, that is CSS rules applied only for a
given screen width. To facilitate this work, OpenDataSoft's provides a handy directive called ``ods-responsive-menu``
that you should use within the header as follow.

.. code-block:: html

    <nav class="ods-front-header" ods-responsive-menu breakpoint="1000">
        <ods-responsive-menu-placeholder>
            <!-- content displayed only below the 1000px breakpoint -->
        </ods-responsive-menu-placeholder>
        <ods-responsive-menu-collapsible>
            <!-- content displayed normally above the 1000px breakpoint -->
            <!-- and collapsed within the drawer below the 1000px breakpoint -->
        </ods-responsive-menu-collapsible>
    </nav>

This directive is actually an ensemble of 3 directives:

* ``ods-responsive-menu`` (attribute directive, used as an attribute of another html tag)

  Used to specify (through the ``breakpoint`` attribute) the screen width (in px) under which the drawer should
  appear and over which things should be displayed normally.

* ``ods-responsive-menu-placeholder`` (element directive used as an html tag)

  Wraps the content that will be invisible unless we are below the breakpoint.

* ``ods-responsive-menu-collapsible`` (element directive)

  Wraps the content that will be displayed normally over the breakpoint but collapsed within the drawer below.

Writing styles for the collapsed header content
-----------------------------------------------

Going from an horizontal layout to a vertical layouts entails quite a few graphical changes, as demonstrated by the
platform's default header.

.. figure:: responsive-menus__header-desktop.png
    :align: center

    Desktop header.

.. figure:: responsive-menus__header-mobile.png
    :align: center

    Mobile header.

In order for you to change the style accordingly, the ``ods-responsive-menu-collapsible`` element will wrap its content
with the ``.ods-responsive-menu-collapsible--collapsed`` when (and only when) the screen is smaller than the breakpoint.
This enables you to clearly separate the style for the two layout-styles (horizontal and vertical).

.. code-block:: css

    .my-menu-class {
        /* horizontal style */
    }
    .ods-responsive-menu-collapsible--collapsed .my-menu-class {
        /* vertical style */
    }


Writing styles for the drawer
-----------------------------

If you'd like to customize the overall look of the drawer, you will need to know the name of the classes applied to
elements created by the 3 directives. The code sample we saw earlier will render as:

.. code-block:: html

    <nav class="ods-front-header" ods-responsive-menu breakpoint="1000">
        <div class="ods-responsive-menu-placeholder">
            <!-- content displayed only below the 1000px breakpoint -->
        </div>
        <div class="ods-responsive-menu-collapsible">
            <div class="ods-responsive-menu-collapsible__backdrop"></div>
            <div class="ods-responsive-menu-collapsible__container">
                <div class="ods-responsive-menu-collapsible__toggle">
                    <button class="ods-responsive-menu-collapsible__toggle-button">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <div class="ods-responsive-menu-collapsible__content">
                    <!-- content displayed normally above the 1000px breakpoint -->
                    <!-- and collapsed within the drawer below the 1000px breakpoint -->
                </div>
            </div>
        </div>
    </nav>

On top of that, the ``.ods-responsive-menu-collapsible`` element will get the class
``.ods-responsive-menu-collapsible--collapsed`` as soon as the screen width falls below the breakpoint and the class
``.ods-responsive-menu-collapsible--expanded`` to mark whenever the user wants the menu to be displayed.
