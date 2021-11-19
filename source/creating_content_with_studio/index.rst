Creating content with the Studio
================================

The Studio is the new no-code editor that helps create and edit pages.
It contains all the features required, from the creation to the publishing of your page.

- You can configure the page information (title, URL, and description) and access policy.
- You can arrange your own page layout using sections and blocks.
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
     * Toolbar
     * Allows you to

       - |preview-icon| preview your page
       - return to the back office
       - publish your page
   * * 3
     * Preview pane
     * | Displays a live preview of the sections and blocks included in your page.
       | Also displays a preview of the first 20 records of the input dataset when configuring a visualization.


Once created, the page status changes according to the actions you perform:

- Draft: this tag indicates that you, or another editor, has edited the page without publishing it. The tag appears as soon as you perform one of the following kind of action: edit a block, edit the page layout, add or edit the page information. The tag disappears after you publish the page, until you edit the page again. 
- Published: this status means that the page is currently online and anyone with the right access can visit it. The status is permanent, until you choose to unpublish or delete the page.
- Not published: this status means that the page is not online. By default, a page is not published when you create it; you must explicitely choose to publish it. You have the possibilty to unpublish your page to take it offline, in such circumstance, the status changes from Published to Not Published.

Published and Not Published are incompatible statuses, a page cannot be both online and offline at the same time. However, a page can be tagged as a Draft after being published.

Example:

Paul creates a new page. Creation is the first step of editing, therefore the page is immediately tagged Draft. As Paul has not published the page yet, its status is Not Published.
Once Paul has finished editing the page, he publishes it. The page is now Published and the Draft tag disappears.

Several months later, Paul comes back to this page because he wants to change a KPI inside. The page status remains Published, since it has not been taken offline. 
However, it is now tagged Draft again, because editing the KPI created a new version of the page, which is different from the version currently online. 
The tag will remain, to remind Paul that the page within the Studio is different from the one he previously published. When he clicks on Publish again, the previously published version will be replaced and the Draft tag will disappear.

Two years later, the page has become obsolete. Paul decides to unpublish it. The page now has a Not Published status, and a Draft tag. 

.. warning::
    There is no page versioning in the Studio. The following actions are irreversible:

    - After you delete a page, it cannot be recovered.
    - If you publish a page that already has the status Published, the new published version will replace the previous one. 

.. toctree::
   :maxdepth: 2

   adding-page
   editing-page-layout
   configuring_blocks/index
   configuring-page-information
   managing-page-access
   previewing-page
   publishing-page

.. |preview-icon| raw:: html

    <i class="fa fa-play" aria-hidden="true"></i>
