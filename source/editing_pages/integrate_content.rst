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
