Creating content with the Studio
================================

The Opendatasoft platform offers a new way of creating pages.
You can now use a graphic editor, the Studio, to easily create and edit pages that meet `WCAG 2.0 Level AA <https://www.w3.org/WAI/WCAG21/quickref/?currentsidebar=%23col_customize&versions=2.0&levels=a%2Caaa>`__ conformance:

- You can configure the page information (title, URL, and description) and access policy.
- You can configure the page layout using sections and blocks.
- Within sections, you can configure the blocks that define the text and other visualizations such as images, charts, or KPIs.

.. localizedimage:: images/studio-overview.png
     :alt: Overview of the Studio

.. list-table::
   :header-rows: 1
   :widths: 20 30 50

   * * Annotation
     * Name
     * Description
   * * 1
     * Side pane
     * | Displays properties of the page and components and lets you edit them.
       | Also displays save status and notifications.
   * * 2
     * Preview pane
     * | Displays a live preview of the sections and blocks included in your page.
       | Also displays a preview of the first 20 records of the input dataset when configuring a visualization.
   * * 3
     * Toolbar
     * Allows you to

       - |arrow-icon| return to the back office
       - |edit-layout-icon| edit the page layout
       - |preview-icon| preview your page
       - publish your page

Pages can be in one of the following statuses:

- Draft
- Published
- Unpublished

.. warning::
    There is no page versioning in the Studio.
    After you delete a page, it cannot be recovered.

.. toctree::
   :maxdepth: 2

   adding-page
   editing-page-layout
   configuring_blocks/index
   configuring-page-information
   managing-page-access
   previewing-page
   publishing-page

.. |arrow-icon| raw:: html

    <i class="fa fa-arrow-left" aria-hidden="true"></i>

.. |edit-layout-icon| raw:: html

    <i class="fa fa-th-large" aria-hidden="true"></i>

.. |preview-icon| raw:: html

    <i class="fa fa-play" aria-hidden="true"></i>
