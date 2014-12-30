
# Using the OData API

In this article, you will learn how to use the OData API to query data from the OpenDataSoft platform.

## General points

### Service address

In this article, we will use the words "service root" or "service document" to refer to the base address of the OData service. For the OpenDataSoft platform, this URL can be found on the `/api/odata` path, relative to the platform hostname. Unless stated otherwise, all addresses in the rest of this article are relative to the service root.

### HTTP Method
The OpenDataSoft OData service currently is read only, hence the only allowed method is GET.

## Versions

The OpenDataSoft platform supports versions 3.0 and 4.0 of the OData protocol. Versions requirements can be communicated to the service via the following six headers: 

* OData-Version

    * This header informs the server which version of the protocol is used by the client.

* DataServiceVersion

    * This header specifies which protocol version the service should use.

* OData-MinVersion

    * This header specifies the minimum version supported by the client.

* minDataServiceVersion

    * This header specifies the minimum version the service should use.

* OData-MaxVersion

    * This header specifies the maximum version supported by the client.

* maxDataServiceVersion

    * This header specifies the maximum version the service should use.

From the next paragraph on, in order to keep things simple and relevant, all examples will illustrate protocol version 4.0. Keep in mind however that all described features work in both supported version. If version 3.0 use a specific syntax or needs special attention, it shall be described. 

## Metadata

The metadata document is located on `/$metadata`. This documents determines the complex types used by the service, then the entity types found on the platform, the entity sets offered, and finally a set of annotation about the entity sets.

    
> GET [/$metadata](http://public.opendatasoft.com/api/odata/$metadata)

```xml
<edmx:Edmx xmlns:edmx="http://docs.oasis-open.org/odata/ns/edmx" Version="4.0">
  <edmx:DataServices xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
                     m:MaxDataServiceVersion="4.0" m:DataServiceVersion="4.0">
    <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Alias="Ods" Namespace="com.opendatasoft.odata.types">
      <ComplexType Name="GeoPoint2D">
        <Property Type="Edm.Double" Name="latitude"/>
        <Property Type="Edm.Double" Name="longitude"/>
      </ComplexType>
      <!-- ... -->
    </Schema>
    <!-- ... -->
    <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Namespace="public.baby_names_nc_2013">
      <EntityType Name="baby_names_nc_2013">
        <Key>
          <PropertyRef Name="recordid"/>
        </Key>
        <Property Type="Edm.String" Name="recordid" Nullable="false"/>
        <Property Type="Edm.String" Name="state"/>
        <Property Type="Edm.String" Name="gender"/>
        <Property Type="Edm.String" Name="year"/>
        <Property Type="Edm.String" Name="name"/>
        <Property Type="Edm.Int32" Name="number"/>
      </EntityType>
    </Schema>
    <!-- ... -->
    <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Namespace="public.datasets">
      <EntityContainer m:IsDefaultEntityContainer="true"
                       Name="publicContainer">
        <!-- ... -->
        <EntitySet EntityType="public.baby_names_nc_2013.baby_names_nc_2013"
                   Name="baby_names_nc_2013"/>
      <!-- ... -->
      </EntityContainer>
      <!-- ... -->
      <Annotations Target="public.baby_names_nc_2013.baby_names_nc_2013">
        <ValueAnnotation Term="Org.OData.Publication.V1.PublisherName"
                         String="Social Security Administration"/>
        <ValueAnnotation Term="Org.OData.Publication.V1.LastModified"
                         String="2013-07-10T14:42:42Z"/>
        <ValueAnnotation Term="Org.OData.Publication.V1.Keywords"
                         String="names, North Carolina, babies, birth"/>
        <ValueAnnotation Term="Org.OData.Display.V1.DisplayName"
                         String="Baby names in North Carolina (2013)"/>
      </Annotations>
      <!-- ... -->
    </Schema>
  </edmx:DataServices>
</edmx:Edmx>
```

## Formats

The service supports ATOM and JSON formats. For the JSON formats, the "minimal" and "full" metadata levels are supported. Any request for a metadata level of "none" will be responded to with the "minimal" metadata level, as per the standard.

There are two main ways of requesting a specific format: in the `Accept` header and in the `$format` REST parameter.

The format parameter, be it in the headers or in the query string, can be either the abbreviations JSON, XML or ATOM, or the exact MIME type requested. For the JSON format, different metadata levels can be requested by using the full MIME type followed by `;odata.metadata=<LEVEL>` for protocol version 4.0 and `;odata=<LEVEL>metadata` for protocol version 3.0.

> GET [/error?$format=application/JSON](http://public.opendatasoft.com/api/odata/error?$format=application/JSON)

```json
{
    "error": {
        "message": "Resource not found for the segment 'error'",
        "code": 404
    }
}
```

> GET [/error?$format=XML](http://public.opendatasoft.com/api/odata/error?$format=XML)

```json
<m:error xmlns:m="http://docs.oasis-open.org/odata/ns/metadata">
    <m:code>404</m:code>
    <m:message>Resource not found for the segment 'error'</m:message>
</m:error>
```

To keep things simple, the rest of this article will feature examples with the JSON format, which is the default, but keep in mind that everything will work the same in the ATOM format.

## Catalog

The service root document displays the catalog of all datasets available through the service.

> GET [/?$format=JSON](http://public.opendatasoft.com/api/odata/?$format=JSON)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata",
    "value": [
        {
            "name": "baby_names_nc_2013",
            "url": "baby_names_nc_2013"
        },
        {
            "name": "boston-public-schools-map",
            "url": "boston-public-schools-map"
        },
        {
            "name": "nyc-parking-spots",
            "url": "nyc-parking-spots"
        }, ...
    ]
}
```

## Datasets

The records of a dataset can be browsed on the `/<DATASET ID>` page. It is easy to navigate from the service root document to a dataset by following the URL attribute of the catalog items.

> GET [/baby_names_nc_2013](http://public.opendatasoft.com/api/odata/baby_names_nc_2013)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "6767d8330abd8b38d0207cef113dcb94e50ebfd6",
            "gender": "F",
            "state": "NC",
            "number": 645,
            "name": "Emma",
            "year": "2013"
        },
        {
            "recordid": "c7faeb25c4bfeb820c4e80864c7861192508d0d2",
            "gender": "F",
            "state": "NC",
            "number": 272,
            "name": "Ella",
            "year": "2013"
        },
        {
            "recordid": "d5fd82cf69691db575de6cfe207d105caa10f68c",
            "gender": "F",
            "state": "NC",
            "number": 263,
            "name": "Natalie",
            "year": "2013"
        }, ...
    ]
}
```

## Paging

Client-driven paging can be requested with the `$top` REST parameter to limit the size of the response, and the `$skip` REST parameter to define the first result to display. The server will ignore `$skip` results and then return the first `$top` items. When paging is applied, a link to the next results will be added at the end of the payload.

> GET [/baby_names_nc_2013?$top=2](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$top=2)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "6767d8330abd8b38d0207cef113dcb94e50ebfd6",
            "gender": "F",
            "state": "NC",
            "number": 645,
            "name": "Emma",
            "year": "2013"
        },
        {
            "recordid": "c7faeb25c4bfeb820c4e80864c7861192508d0d2",
            "gender": "F",
            "state": "NC",
            "number": 272,
            "name": "Ella",
            "year": "2013"
        }
    ],
    "@odata.nextLink": "https://public.opendatasoft.com/api/odata/baby_names_nc_2013?$skiptoken=2"
}
```

> GET [/baby_names_nc_2013?$skip=1&$top=2](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$skip=1&$top=2)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "c7faeb25c4bfeb820c4e80864c7861192508d0d2",
            "gender": "F",
            "state": "NC",
            "number": 272,
            "name": "Ella",
            "year": "2013"
        },
        {
            "recordid": "d5fd82cf69691db575de6cfe207d105caa10f68c",
            "gender": "F",
            "state": "NC",
            "number": 263,
            "name": "Natalie",
            "year": "2013"
        }
    ],
    "@odata.nextLink": "https://public.opendatasoft.com/api/odata/baby_names_nc_2013?$skiptoken=3"
}
```

## Recherche

The `$search` parameter can be used to search data.

> GET [/baby_names_nc_2013?$search=Cad](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$search=Cad)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "d060a6452d427b6e56ec0ed12307bda1a65ade4d",
            "gender": "F",
            "state": "NC",
            "number": 5,
            "name": "Cadance",
            "year": "2013"
        },
        {
            "recordid": "efc3e55da1dd591ba0c2bd42f0b0719e330f738f",
            "gender": "M",
            "state": "NC",
            "number": 79,
            "name": "Caden",
            "year": "2013"
        },
        {
            "recordid": "025f3eb0e7443f7ab7809f06685a06064cade230",
            "gender": "F",
            "state": "NC",
            "number": 41,
            "name": "Cadence",
            "year": "2013"
        },
        {
            "recordid": "67eab51bfaf034d88b5a98819bef98961084e449",
            "gender": "M",
            "state": "NC",
            "number": 30,
            "name": "Cade",
            "year": "2013"
        }
    ]
}
```


## Restriction

The `$filter` parameter can be used to apply a restriction on results. Supported restriction operators are `eq` and `ne` for equality and inequality, `lt` and `gt` for strict inequalities and `le` and `ge` for non strict inequalities. Multiple restriction expessions can be combined into bigger expressions with the logical operators `and` and `or`. Expression can be negated with the `not` operator.

> GET [/baby_names_nc_2013?$filter=name eq Caden](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$filter=name eq Caden)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "efc3e55da1dd591ba0c2bd42f0b0719e330f738f",
            "gender": "M",
            "state": "NC",
            "number": 79,
            "name": "Caden",
            "year": "2013"
        }
    ]
}
```
> GET [/baby_names_nc_2013?$filter=number gt 280 and not number ge 285](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$filter=number gt 280 and not number ge 285)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "5842808cd7f07f1e1ca733457605dfaadfcbc0a4",
            "gender": "M",
            "state": "NC",
            "number": 282,
            "name": "Isaac",
            "year": "2013"
        },
        {
            "recordid": "27676f39b6282bca2ab52e5e00468a269aabfbd0",
            "gender": "M",
            "state": "NC",
            "number": 281,
            "name": "Dylan",
            "year": "2013"
        }
    ]
}
```

## Count

There are two ways of obtaining the number of records in a dataset. The first way is to use the `$count` REST parameter (`$inlinecount` for protocol version 3.0). The other way is to navigate to the count document for a resource. This is achieved by querying `/<DATASET ID>/$count`. These two methods have slightly different semantics: the first one returns the count relative to the payload, taking all operations into account, except for paging and is returned along with the payload, while the second one returns the absolute resource count, irrespective of anything other than the number of records present on the server and only returns the number, without any other information.


> GET [/baby_names_nc_2013?$filter=number lt 8&$top=1&$count=true](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$filter=number lt 8&$top=1&$count=true)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "@odata.count": 966,
    "value": [
        {
            "recordid": "9acf1ee923cdd25b61027056d3bbde9bfa4681dd",
            "gender": "F",
            "state": "NC",
            "number": 7,
            "name": "Adah",
            "year": "2013"
        }
    ],
    "@odata.nextLink": "https://public.opendatasoft.com/api/odata/baby_names_nc_2013?$skiptoken=1&$filter=number%20lt%208&$count=true"
}
```

> GET [/baby_names_nc_2013/$count](http://public.opendatasoft.com/api/odata/baby_names_nc_2013/$count)

```
2841
```

## Sort

Results returned by the service can be sorted by a field using the `$orderby` parameter. The field name can be followed by the `asc` and `desc` keywords to specify the sort order (default is ascendant).


> GET [/baby_names_nc_2013?$search=Cad&$orderby=number](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$search=Cad&$orderby=number)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "d060a6452d427b6e56ec0ed12307bda1a65ade4d",
            "gender": "F",
            "state": "NC",
            "number": 5,
            "name": "Cadance",
            "year": "2013"
        },
        {
            "recordid": "67eab51bfaf034d88b5a98819bef98961084e449",
            "gender": "M",
            "state": "NC",
            "number": 30,
            "name": "Cade",
            "year": "2013"
        },
        {
            "recordid": "025f3eb0e7443f7ab7809f06685a06064cade230",
            "gender": "F",
            "state": "NC",
            "number": 41,
            "name": "Cadence",
            "year": "2013"
        },
        {
            "recordid": "efc3e55da1dd591ba0c2bd42f0b0719e330f738f",
            "gender": "M",
            "state": "NC",
            "number": 79,
            "name": "Caden",
            "year": "2013"
        }
    ]
}
```

> GET [/baby_names_nc_2013?$search=Cad&$orderby=number desc](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$search=Cad&$orderby=number desc)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013",
    "value": [
        {
            "recordid": "efc3e55da1dd591ba0c2bd42f0b0719e330f738f",
            "gender": "M",
            "state": "NC",
            "number": 79,
            "name": "Caden",
            "year": "2013"
        },
        {
            "recordid": "025f3eb0e7443f7ab7809f06685a06064cade230",
            "gender": "F",
            "state": "NC",
            "number": 41,
            "name": "Cadence",
            "year": "2013"
        },
        {
            "recordid": "67eab51bfaf034d88b5a98819bef98961084e449",
            "gender": "M",
            "state": "NC",
            "number": 30,
            "name": "Cade",
            "year": "2013"
        },
        {
            "recordid": "d060a6452d427b6e56ec0ed12307bda1a65ade4d",
            "gender": "F",
            "state": "NC",
            "number": 5,
            "name": "Cadance",
            "year": "2013"
        }
    ]
}
```

## Specific record

To access a specific record, its record id surrounded by parenthesis, can be appended to the dataset address.

> GET [/baby_names_nc_2013(efc3e55da1dd591ba0c2bd42f0b0719e330f738f)](http://public.opendatasoft.com/api/odata/baby_names_nc_2013(efc3e55da1dd591ba0c2bd42f0b0719e330f738f))

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013/$entity",
    "recordid": "efc3e55da1dd591ba0c2bd42f0b0719e330f738f",
    "gender": "M",
    "state": "NC",
    "number": 79,
    "name": "Caden",
    "year": "2013"
}
```

## Projection

Results can be projected over specific fields using the `$select` parameter. For multiple fields to be subject of the projection, their names must be separated by a comma and an optional space. This parameter can be used with datasets and specific records.

> GET [/baby_names_nc_2013?$search=Cad&$select=name, number](http://public.opendatasoft.com/api/odata/baby_names_nc_2013?$search=Cad&$select=name, number)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013(name,number)",
    "value": [
        {
            "number": 5,
            "name": "Cadance"
        },
        {
            "number": 79,
            "name": "Caden"
        },
        {
            "number": 41,
            "name": "Cadence"
        },
        {
            "number": 30,
            "name": "Cade"
        }
    ]
}
```

> GET [/baby_names_nc_2013(efc3e55da1dd591ba0c2bd42f0b0719e330f738f)?$select=name](http://public.opendatasoft.com/api/odata/baby_names_nc_2013(efc3e55da1dd591ba0c2bd42f0b0719e330f738f)?$select=name)

```json
{
    "@odata.context": "https://public.opendatasoft.com/api/odata/$metadata#baby_names_nc_2013(name)/$entity",
    "name": "Caden"
}
```