### How can I display points on a map ?
For a geo data visualization to be available, your dataset needs to contain a **Geo Point 2D** field with content under the `latitude,longitude` form. For instance: `48.2567,3.7689`.

### In the table view, I have not been able to sort the results using a specific field; what went wrong ?
By default, only the numerical fields are sortable. That is **int**, **double**, **date** and **datetime**. **Text** fields are not sortable by default. The dataset owner may configure some text fields to be sortable. Sortable **text** fields can be identified through the API (`sortable` annotation).

### I published a dataset, but no categorie is displayed in the left column. What shall I do ?
Categories (facets) are built out of fields which have been defined as a **facet**. To set a field as a facet, simply click on the **filter** icon, in the field definition header in the publishing console.

### When I go to the analyze view, the displayed chart doesn't make any sense. How could I change this ?
The dataset owner can easily define the default analytical representation of the dataset using the **analyze tab** of the publishing console. End-users can also simply choose different settings and build their own analytical data visualization using the available controls.

### On some portals powered by OpenDataSoft, I have seen nice image galleries displayed as data visualizations. How could I do the same ?
The image support feature is still in beta version. Contact the OpenDataSoft support team if you would like to try it. This feature introduces a new data source which can handle compressed archives containing image files along with metadata.

### How can I embed a data visualization on my website ?
There are three ways to embed OpenDataSoft data visualizations on a website or any content management system:

* Copy-paste the embed code that can directly be found on the OpenDataSoft platform (usually located under the data visualization itself).
* Use [ODS Widgets, our open source widget library](https://github.com/opendatasoft/ods-widgets) to build content pages tailored to your needs with one or several data visualizations at once.
* Use our HTTP/REST APIs to develop your own widgets.

### What is "Cartograph" ?
Cartograph is a tool developed by OpenDataSoft to make it possible to build geo mashups out of datasets stored on the OpenDataSoft platform.
