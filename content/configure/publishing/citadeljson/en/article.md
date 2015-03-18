**CitadelJSON** is a POI (Point Of Interest) format designed by the [CitadelOnTheMove](http://www.citadelonthemove.eu/) project; a CitadelJSON file
can be used with [a variety of tools](http://www.citadelonthemove.eu/en-us/createanapp/developerpage.aspx) to build applications around geolocalized data. You can configure each of your dataset to be exportable
as a CitadelJSON file, if it contains geographical data.

**Note:** by default, you won't have the CitadelJSON configuration form in your interface; contact us (using the support form for example) to have it activated.

The CitadelJSON format is strongly structured, which
means it requires very specific information in very specific places; as it can't
really know by itself which field is what you consider the "description" of the "categories", you need to configure by yourself which field plays which role. The following information is expected for each record:

- a title (the name of a school...)
- a description (a longer description of the point of interest; can be left empty although it is not recommended)
- one or more categories
- a localisation (automatically filled by OpenDataSoft, no need for configuration)
- an address, a postal code, and a city, in three separate fields

In the publish console of your dataset, at the bottom of the "Informations" tab, you will find a "CitadelJSON" tab. There, you will be able to configure the required
information by filling the name (not the label!) of the field that contains this information for each record.

![Configuration](configuration.png)

Once saved and published, your users will be able to download the dataset as CitadelJSON.

![Download](download-en.png)
