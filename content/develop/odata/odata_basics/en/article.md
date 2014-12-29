
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

    
> GET /$metadata

```xml
<edmx:Edmx xmlns:edmx="http://docs.oasis-open.org/odata/ns/edmx" Version="4.0">
    <edmx:DataServices
        xmlns:m="http://docs.oasis-open.org/odata/ns/metadata"
        m:MaxDataServiceVersion="4.0"
        m:DataServiceVersion="4.0">

        <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Alias="Ods"
            Namespace="com.opendatasoft.odata.types">

        <ComplexType Name="GeoPoint2D">
            <Property Type="Edm.Double" Name="latitude"/>
            <Property Type="Edm.Double" Name="longitude"/>
        </ComplexType>
        <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Namespace="parisdata.detail_du_bati">
            <EntityType Name="detail_du_bati">
                <Key>
                    <PropertyRef Name="recordid"/>
                </Key>
                <Property Type="Edm.String" Name="recordid" Nullable="false"/>
                <Property Type="com.opendatasoft.odata.types.GeoPoint2D
                    Name="geom_x_y"/>
                <Property Type="Edm.Geometry" Name="geom"/>
                <Property Type="Edm.String" Name="info"/>
                <Property Type="Edm.String" Name="libelle"/>
            </EntityType>
        </Schema>
        <Schema xmlns="http://docs.oasis-open.org/odata/ns/edm"
            Namespace="parisdata.datasets">
            <EntityContainer m:IsDefaultEntityContainer="true"
                Name="parisdataContainer">
                <EntitySet EntityType="parisdata.detail_du_bati.detail_du_bati"
                    Name="detail_du_bati"/>
            </EntityContainer>
            <Annotations Target="parisdata.detail_du_bati.detail_du_bati">
                <ValueAnnotation Term="Org.OData.Publication.V1.PublisherName"
                    String="Ville de Paris"/>
                <ValueAnnotation Term="Org.OData.Publication.V1.LastModified"
                    String="2013-05-30T01:51:54+00:00"/>
                <ValueAnnotation Term="Org.OData.Publication.V1.Keywords"
                    String="bati, detail, acces, rampe, escalier exterieur, terrasse, marche, ascenseur"/>
                <ValueAnnotation Term="Org.OData.Display.V1.DisplayName"
                    String="Detail du Bati"/>
            </Annotations>
        </Schema>
    </edmx:DataServices>
</edmx:Edmx>
```


## Formats

The service supports ATOM and JSON formats. For the JSON formats, the "minimal" and "full" metadata levels are supported. Any request for a metadata level of "none" will be responded to with the "minimal" metadata level, as per the standard.

There are two main ways of requesting a specific format: in the `Accept` header and in the `\$format` REST parameter.

The format parameter, be it in the headers or in the query string, can be either the abbreviations JSON, XML or ATOM, or the exact MIME type requested. For the JSON format, different metadata levels can be requested by using the full MIME type followed by `;odata.metadata=<LEVEL>` for protocol version 4.0 and `;odata=<LEVEL>metadata` for protocol version 3.0.


> GET /error?$format=application/JSON

```json
{
    "error": {
        "message": "Resource not found for the segment 'error'",
        "code": 404
    }
}
```

> GET /error?$format=XML

```json
<m:error xmlns:m="http://docs.oasis-open.org/odata/ns/metadata">
    <m:code>404</m:code>
    <m:message>Resource not found for the segment 'error'</m:message>
</m:error>
```

To keep things simple, the rest of this article will feature examples with the JSON format, which is the default, but keep in mind that everything will work the same in the ATOM format.


## Catalog

The service root document displays the catalog of all datasets available through the service.


> GET /?$format=JSON

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata",
    "value": [{
        "name": "detail_du_bati",
        "url": "detail_du_bati"
    }, {
        "name": "liste_des_prenoms",
        "url": "liste_des_prenoms"
    }]
}
```


## Datasets

The records of a dataset can be browsed on the `/<DATASET ID>` page. It is easy to navigate from the service root document to a dataset by following the URL attribute of the catalog items.

> GET /liste_des_prenoms

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "5bbe53204e72f7ab39feb5d354135248af48c63f",
        "nombre": 6,
        "prenom": "Dario"
    },
    {
        "recordid": "ac7e71a5b2cec35fabfcd3d904bb50e9ee09401f",
        "nombre": 6,
        "prenom": "Demba"
    },
    {
        "recordid": "c1f948009db0463c6819cda2cf6991f557a0032e",
        "nombre": 6,
        "prenom": "Fabio"
    },
    {
        "recordid": "c0f71b08631403a93caba187d6059e98569f1a68",
        "nombre": 6,
        "prenom": "Hassan"
    },
    {
        "recordid": "43c3f85ab76c458211240e086b80485228236ae9",
        "nombre": 6,
        "prenom": "Hedi"
    },
    {
        "recordid": "e1b9187f3ea82a5b0b2c4e1090f955bc4262a3ff",
        "nombre": 6,
        "prenom": "Killian"
    },
    {
        "recordid": "aa1eb2c092a965ffe76c450b2d194acb14f97c0e",
        "nombre": 6,
        "prenom": "Louison"
    }, ... ]
}
```


## Paging

Client-driven paging can be requested with the `\$top` REST parameter to limit the size of the response, and the `\$skip` REST parameter to define the first result to display. The server will ignore `\$skip` results and then return the first `$top` items. When paging is applied, a link to the next results will be added at the end of the payload.

> GET /liste_des_prenoms?$top=2

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "5bbe53204e72f7ab39feb5d354135248af48c63f",
        "nombre": 6,
        "prenom": "Dario"
    },
    {
        "recordid": "ac7e71a5b2cec35fabfcd3d904bb50e9ee09401f",
        "nombre": 6,
        "prenom": "Demba"
    }],
    "@odata.nextLink": "http://opendata.paris.fr/api/odata/liste_des_prenoms?$skiptoken=2"
}
```


> GET /liste_des_prenoms?$skip=1\&$top=2

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "ac7e71a5b2cec35fabfcd3d904bb50e9ee09401f",
        "nombre": 6,
        "prenom": "Demba"
    }, {
        "recordid": "c1f948009db0463c6819cda2cf6991f557a0032e",
        "nombre": 6,
        "prenom": "Fabio"
    }],
    "@odata.nextLink": "http://opendata.paris.fr/api/odata/liste_des_prenoms?$skiptoken=3"
}
```

## Recherche

The `\$search` parameter can be used to search data.

> GET /liste_des_prenoms?$search=lou

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "aa1eb2c092a965ffe76c450b2d194acb14f97c0e",
        "nombre": 6,
        "prenom": "Louison"
    }, {
        "recordid": "63ee0fce665b84e81f04a4a67e00125023e4c46e",
        "nombre": 8,
        "prenom": "Lou"
    }, {
        "recordid": "0ad427154db2a250d6f8be8881e9276157a5736e",
        "nombre": 6,
        "prenom": "Loup"
    }, {
        "recordid": "8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717",
        "nombre": 277,
        "prenom": "Louis"
    }, {
        "recordid": "3043e9238dd2117934a6b248a9a4d6ef7814fd68",
        "nombre": 6,
        "prenom": "Louka"
    }]
}
```



## Restriction

The `\$filter` parameter can be used to apply a restriction on results. Supported restriction operators are `eq` and `ne` for equality and inequality, `lt` and `gt` for strict inequalities and `le` and `ge` for non strict inequalities. Multiple restriction expessions can be combined into bigger expressions with the logical operators `and` and `or`. Expression can be negated with the `not` operator.

> GET /liste_des_prenoms?$filter=prenom eq Lou

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "63ee0fce665b84e81f04a4a67e00125023e4c46e",
        "nombre": 8,
        "prenom": "Lou"
    }]
}
```
> GET /liste_des_prenoms?$filter=nombre gt 277 and not nombre ge 340

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "08685a079b47b08d4a9f37b694de06e235c3de55",
        "nombre": 299,
        "prenom": "Arthur"
    }]
}
```

## Count

There are two ways of obtaining the number of records in a dataset. The first way is to use the `\$count` REST parameter (`\$inlinecount` for protocol version 3.0). The other way is to navigate to the count document for a resource. This is achieved by querying `/<DATASET ID>/\$count`. These two methods have slightly different semantics: the first one returns the count relative to the payload, taking all operations into account, except for paging and is returned along with the payload, while the second one returns the absolute resource count, irrespective of anything other than the number of records present on the server and only returns the number, without any other information.


> GET /liste_des_prenoms?$filter=nombre lt 8\&$top=1\&$count=true

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "@odata.count": 218,
    "value": [{
        "recordid": "5bbe53204e72f7ab39feb5d354135248af48c63f",
        "nombre": 6,
        "prenom": "Dario"
    }],
    "@odata.nextLink": "http://opendata.paris.fr/api/odata/liste_des_prenoms?
        $skiptoken=1&$filter=nombre%20lt%208&$count=true"
}
```

> GET /liste_des_prenoms/$count

```
645
```

## Sort

Results returned by the service can be sorted by a field using the `\$orderby` parameter. The field name can be followed by the `asc` and `desc` keywords to specify the sort order (default is ascendant).


> GET /liste_des_prenoms?$search=lou\&$orderby=nombre

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "aa1eb2c092a965ffe76c450b2d194acb14f97c0e",
        "nombre": 6,
        "prenom": "Louison"
    }, {
        "recordid": "0ad427154db2a250d6f8be8881e9276157a5736e",
        "nombre": 6,
        "prenom": "Loup"
    }, {
        "recordid": "3043e9238dd2117934a6b248a9a4d6ef7814fd68",
        "nombre": 6,
        "prenom": "Louka"
    }, {
        "recordid": "63ee0fce665b84e81f04a4a67e00125023e4c46e",
        "nombre": 8,
        "prenom": "Lou"
    }, {
        "recordid": "8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717",
        "nombre": 277,
        "prenom": "Louis"
    }]
}
```

> GET /liste_des_prenoms?$search=lou\&$orderby=nombre desc

```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms",
    "value": [{
        "recordid": "8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717",
        "nombre": 277,
        "prenom": "Louis"
    }, {
        "recordid": "63ee0fce665b84e81f04a4a67e00125023e4c46e",
        "nombre": 8,
        "prenom": "Lou"
    }, {
        "recordid": "aa1eb2c092a965ffe76c450b2d194acb14f97c0e",
        "nombre": 6,
        "prenom": "Louison"
    }, {
        "recordid": "0ad427154db2a250d6f8be8881e9276157a5736e",
        "nombre": 6,
        "prenom": "Loup"
    }, {
        "recordid": "3043e9238dd2117934a6b248a9a4d6ef7814fd68",
        "nombre": 6,
        "prenom": "Louka"
    }]
}
```


## Specific record

To access a specific record, its record id surrounded by parenthesis, can be appended to the dataset address.

> GET /liste_des_prenoms(8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717)


```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#liste_des_prenoms/$entity",
    "recordid": "8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717",
    "nombre": 277,
    "prenom": "Louis"
}
```

## Projection

Results can be projected over specific fields using the `\$select` parameter. For multiple fields to be subject of the projection, their names must be separated by a comma and an optional space. This parameter can be used with datasets and specific records.

> GET /liste_des_prenoms?$search=lou\&$select=prenom, nombre


```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#
        liste_des_prenoms_par_sexe_en_2012(prenom,nombre)",
    "value": [{
        "nombre": 6,
        "prenom": "Louison"
    }, {
        "nombre": 8,
        "prenom": "Lou"
    }, {
        "nombre": 277,
        "prenom": "Louis"
    }, {
        "nombre": 6,
        "prenom": "Loup"
    }, {
        "nombre": 6,
        "prenom": "Louka"
    }]
}
```

> GET /liste_des_prenoms(8b33bcd6a2f141d4e6dd09c619d65df6a1fdb717)?$select=prenom


```json
{
    "@odata.context": "http://opendata.paris.fr/api/odata/$metadata#
        liste_des_prenoms_par_sexe_en_2012(prenom)/$entity",
    "prenom": "Louis"
}
```