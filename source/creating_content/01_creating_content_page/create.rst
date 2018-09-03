Creating a content page
=======================

The OpenDataSoft platform allows to publish and explore datasets, but also to use it to build fully customized content pages, mixing editorial content as well as data visualizations built from the datasets published in the domain.

Content pages can be used to:

* Complement and organize the portal by configuring a home page and by creating pages on specific topics (the project, the data license...)
* Write editorial content directly on the platform and share it, as a direct link or through an embed
* Build advanced dashboards with dynamic visualizations on the portal, and share them

Writing the page
----------------

We want to create a very simple page, containing information about our portal, and a side bar to talk a bit about our city.

Let's start by going into the Back office, and clicking on the *Page > New page* link in the menu.

.. ifconfig:: language == 'en'

  .. image:: images/create__list--en.png
    :alt: Create a content page

.. ifconfig:: language == 'fr'

  .. image:: images/create__list--en.png
    :alt: Create a content page

This brings you into the interface to edit your new blank page.

.. ifconfig:: language == 'en'

  .. image:: images/create__edit--en.png
    :alt: Edit a content page

.. ifconfig:: language == 'fr'

  .. image:: images/create__edit--fr.png
    :alt: Edit a content page

For now the page isn't really created yet; you need to save it first. Before doing this you need to configure
the page **slug** (*page1* in the example above), which is both the page's unique identifier, and the last part of the page's URL
(address in the browser).

.. admonition:: Note
   :class: note

   If the domain is configured for multiple user interface languages, you need to configure the page's content (title, description and page text itself) for all the configured languages.

The template selector shows predefined templates that you can directly use. These templates range from very simple layout, with text zones that you can
edit directly, to portal homepages presenting the content of the catalog.

You can also choose to edit the page in **expert mode**,
which gives you a direct access to the page's HTML and CSS, allowing you to :doc:`further customize the style of your page <style>`, or to :doc:`build very advanced pages using our OpenDataSoft widgets <../tutorials/dashboard/dashboard>`.
You can switch to expert mode from any template, meaning you can use these templates as starting points for dashboards or advanced pages.
But once you've switched to expert mode, you cannot go back.

.. ifconfig:: language == 'en'

  .. image:: images/create__expert--en.png
    :alt: Content page expert mode

.. ifconfig:: language == 'fr'

  .. image:: images/create__expert--fr.png
    :alt: Content page expert mode

Since the stated goal is to create a simple content page with a side bar, the "Main block + right column" template seems like a perfect fit.

Once the template is chosen, you can see the two blocks of texts, and you can edit and format the text inside them using a text editor.
For example you can type a few paragraphs about your portal in the center block, including headers and parts in bold using the editor.
Then a few lines about your city in the right side bar.

On the right part of the interface, you can see a little *Preview* button, which toggle a preview of the page as your users would see it
on the portal, without having to save the page first.

After editing the page, having a look at the preview, maybe editing and previewing again a few times, you'll reach a point where you are happy
with your page, and you'll be able to save it.

Making the page accessible to your users
----------------------------------------

Once the page is created and saved, it is accessible using its page URL; you can share the URL to anyone you want, but you may want
to make the page accessible through your portal's menu, or even make it your new portal homepage. This is all done through
the *Look & feel > Navigation* page.

.. ifconfig:: language == 'en'

  .. image:: images/navigation--en.png
    :alt: Navigation page

.. ifconfig:: language == 'fr'

  .. image:: images/navigation--fr.png
    :alt: Navigation page

From here, you can add your page in the header menu, or set it as the homepage.
