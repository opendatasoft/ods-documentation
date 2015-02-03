Not only the OpenDataSoft platform allows you to browse and explore configured datasets. You can also use it to build fully customized content pages, mixing editorial content as well as data visualizations built from your domain's datasets.

Content pages can be used to:

* Complement and organize your data portal by configuring a home page and by adding topic specific pages.
* Build editorial content directly on the platform and publish it on the Web, as a direct link or through an embed.
* Build dynamic dashboards

### Creating a new content page

To create a new content page, go to the *Domain > Portal > Pages* section.

![Create a content page](page-list-en.jpg)

Simply hit the **New** button. Once created, the page edition window is displayed.

![Edit a content page](page-edit-en.jpg)

Before being able to save a page, you need to configure the page **slug** (*page1* in the example above).

Note that if your domain is configured for multiple user interface languages, you will have to configure your page content (title, description and page content itself) for all the configured languages.

The template selector lets you select ready to use templates. You can also choose to edit your page in expert mode, which gives you a very efficient and powerful way to define your page content.

Note that you can switch to expert mode from any template. But once you've switched to expert mode, you cannot go back.

![Content page expert mode](page-expert-en.jpg)

In expert mode, you can independently work on your page content (HTML5) and style (CSS). Javascript code is stripped from HTML content but as the OpenDataSoft UI framework is based on AngularJS, you can leverage AngularJS bindings directly in your page's code.

The preview button allows you to visualize the current content of your page, even if you didn't save it.

### About the ods-widgets library

When editing your page content in expert mode, you may want to use the ods-widgets library, which is a high level abstraction allowing you to natively integrate data visualizations in your page code. 

This overcomes classic IFrames limitations:

* IFrames generate a high load browser side
* IFrames cannot interact together

The ods-widgets library is an Open Source, AngularJS based framework developed and maintainted by OpenDataSoft on [GitHub](https://github.com/opendatasoft/ods-widgets). It comes with a complete and comprehenseive [online documentation](https://opendatasoft.github.io/ods-widgets/docs/).

It can be used directly in your domain's content pages (without having to load / initialize the library as this is already done by the platform) or in third pary Web sites, as a standalone toolkit.

### Updating your domain's menu

Once your page content has been fully defined, you might want to *plug* your page in your domain's menu. This can easily be done by editing the menu components in the *Domain > Portal > General settings* section.

![Domain menu](domain-menu-en.jpg)