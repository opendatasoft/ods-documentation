Customize a content page with HTML and CSS
==========================================

Once you have created a simple page using one of the predefined templates, you may want to go further. Maybe you want to add
a new block below, or add a large centered header at the top?

Switching to the **expert mode** lets you edit directly the underlying language behind the page, which is the HTML and CSS code.

HTML and CSS are the languages behind every web page; you can do very advanced things with it, but at their core, they are designed
to be expressive and easy to learn. After playing with it a bit, you usually can do simple things like changing the layout of your page,
changing the size of your text...

In this article, we'll walk you through a few basic changes to a standard page template. We do not aim to teach HTML and CSS, as other resources
will do this much better than us; however, these are examples that you can start from and expand upon.

First, let's create a new page based on the "Main block + right column" template, as seen in the :doc:`Creating a simple content page <create>` article.
Then, switch to **expert mode** using the link in the top right of the interface. You now have two "CSS" and "HTML" tabs, containing the code behing the page.

The CSS tab is empty for now, as there is no specific CSS code. However, the HTML of the page is here:

.. code-block:: html

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8"><div class="ods-box"></div></div>
            <div class="col-md-4"><div class="ods-box"></div></div>
        </div>
    </div>

Adding a new row
----------------

Each ``<div>`` tag represents a block in the page; the class attached to each block defines its appearance, like its width.

More precisely:
    - ``<div class="container-fluid">`` is the block around the entire page, making sure it takes all the available width in the browser
    - ``<div class="row">`` represents a row, which in turns contains other blocks. By reasoning using "rows", we make sure our blocks
      don't mix up if one is larger than the others.
    - ``<div class="col-md-8">`` and ``<div class="col-md-4">`` are two blocks containing the "real" content (text for example).
      The idea with the classes ``col-md-8`` and ``col-md-4`` is to think of the available space in each row as a grid of 12 "cells";
      your blocks inside this row can take a total amount of 12 cells, and each blocks uses ``col-md-X`` where X is the amount of cells it
      will take. So, here we wanted one blocks taking two thirds of the space, and another block taking one third, so we used 8 and 4 to divide
      the available 12 cells. All this logic (named "grid" logic) is detailed in the :doc:`Designing a responsive portal </customizing_look_and_feel/07_designing_responsive_portal/responsive>` article.
    - ``<div class="ods-box">`` just creates a visual block with a border and a background, more suitable to contain text.

Now we want to add a new line of three blocks, each taking a third of the space. Following our previous logic, we add a new row, and three
blocks taking each 4 cells.

.. code-block:: html

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8"><div class="ods-box"></div></div>
            <div class="col-md-4"><div class="ods-box"></div></div>
        </div>
        <div class="row">
            <div class="col-md-4"><div class="ods-box"></div></div>
            <div class="col-md-4"><div class="ods-box"></div></div>
            <div class="col-md-4"><div class="ods-box"></div></div>
        </div>
    </div>

Our preview now looks like this:

.. ifconfig:: language == 'en'

   .. image:: images/new-row-preview--en.png

.. ifconfig:: language == 'fr'

   .. image:: images/new-row-preview--fr.png

Setting a basic style
---------------------

CSS code can be used to change the way your content is displayed: you can change the size of the text, add a colored background, borders,
change the color...

There are multiple ways to apply CSS "rules" to an element of your page, but a good practice to keep in mind is to always use "classes":
by adding `class="myclass"` to an element in your page, you attach a "class" to your element, and then you can write rules for that class
in your CSS style. This way, you can apply the same class to various elements, and if you change your page, the rules will still apply
to your element.

Let's assume we want to make some text larger than usual. First, you need to add a class to the element containing the text,
here, "Hello world!":

.. code-block:: html

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="ods-box">
                    <span class="larger-text">Hello world!</span>
                </div>
            </div>
            <div class="col-md-4">
                <div class="ods-box"></div>
            </div>
        </div>
    </div>

Then, we just need to add a rules in the CSS code, stating that the class "larger-text" should have a bigger text size:

.. code-block:: css

    .larger-text {
        font-size: 24px;
    }

There are many CSS rules you can add, to any of your elements.
