![Geo Processors](processors-geo-en.jpg)

### Normalize Projection Reference
This processor can be used to handle a **Geo Point 2D** with a projection system different from [WGS84](http://en.wikipedia.org/wiki/WGS_84) field. It takes as a parameter the name of the field as well as the [EPSG](http://spatialreference.org/ref/epsg/) code of the source coordinates system. The field's value is replaced with its WGS84 representation.

For instance, if you set the EPSG code to `27572`, the processor will consider that the original geo field contains coordinates expressed in [Lambert Zone II](http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/).

Note that the input must be expressed with the same logic as a WGS84 geo coordinate: `Y,X`.

### Country Code to Geo Coordinates
This processor uses a country [ISO code](http://en.wikipedia.org/wiki/ISO_3166-1) to produce a geo coordinate.

### Zip Code to Geo Coordinates
This processor uses a post code to produce a geo coordinate. It is currently only implemented for French post codes.

### INSEE Code to Geo Coordinates
This processor uses French INSEE code to produce a geo coordinate.

### Convert Degrees
This processor converts a degrees, minutes, seconds geo coordinate to a standard geo coordinate.

The following formats can be converted:

Format |
---------- |
48° 51′ 24″ Nord2° 21′ 07″ Est |
48° 51′ 24″N 2° 21′ 07″ E |
48° 51′ 24″ 2° 21′ 07″ |
+48° 51′ 24″ +2° 21′ 07″ |
N48° 51′ 24″ E2° 21′ 07″ |
48°;2° |

The signs can be:

Type | Signs
---- | -----
North/South | +, -, N, S, Nord, North, Sud, South
East/West | +, -, E, O, W, Est, East, Ouest, West
Coordinate separator | ' ', ';', '/'
Degree mark | '°', '^', '*'
Minute mark | "'", '′'
Second mark | '"', '″'

### IP Address to Geo Coordinates
This processors allows you to geocode an IP address. It uses the [GeoIP](http://geolite.maxmind.com) database.

### Geo distance
This processor allows you to compute the distance between two geometries. Geometries can be geojson format or coordinates. The input parameters must be in WGS 84 format. 

### Geocode with Google
This processor allows you to geocode full text addresses by using the Google geocoding API. You need to possess a Google API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if you plan to use it.

### Geocode with ArcGIS
This processor allows you to geocode full text addresses by using the ArcGIS geocoding API. You need to possess an ArcGIS API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if you plan to use it.
