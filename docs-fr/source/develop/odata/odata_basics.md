# Utilisation de l'API OData


Dans cet article, nous allons voir comment utiliser les fonctionnalités offertes par l'API OData pour récupérer des données de la plateforme OpenDataSoft.

## Généralités

### Adresse du service
Dans le présent article, nous parlerons de "root", "racine", "/" ou "adresse du service" pour désigner l'adresse de base du service OData. Celle ci, pour la plateforme OpenDataSoft, peut se localiser en ajoutant à l'URL d'un domaine de la plateforme la chaîne de caractères `/api/odata/`.

### Méthodes de requêtes
Le service OData d'OpenDataSoft étant en lecture seule, il ne supporte que la méthode GET.

## Versions

Le service OData de OpenDataSoft supporte les versions 3.0 et 4.0 du protocole OData.
Une version spécifique ou des exigences de version peuvent accompagner toute requête grâce aux six headers suivants:

* OData-Version

    * Ce header spécifie la version du protocole utilisée par le client.
    
* DataServiceVersion

    * Ce header spécifie la version du protocole à utiliser pour le service.
    
* OData-MinVersion

    * Ce header spécifie la version  minimale du protocole comprise par le client.
    
* minDataServiceVersion

    * Ce header spécifie la version  minimale du protocole à utiliser pour le service.
    
* OData-MaxVersion

    * Ce header spécifie la version  maximale du protocole comprise par le client.
    
* maxDataServiceVersion

    * Ce header spécifie la version  maximale du protocole à utiliser pour le service.

A partir du paragraphe suivant, tous les exemples seront tirés de la version 4.0 du service par souci de simplicité, mais tous les points évoqués fonctionnent dans les deux versions supportées. Si une variante d'un paramètre ou d'un point particulier existe pour la version 3.0, elle sera évoquée.

## Métadonnées

L'accès au document de métadonnées se fait en navigant à `/$metadata` suivi de n'importe quelle séquence de caractères arbitraires.

Le document de métadonnées spécifie d'abord les types complexes utilisés par le service de données, puis les types d'entités existant, les ensembles d'entités proposés, et enfin des annotations sur les ensembles d'entités.

    
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

Le service supporte les formats ATOM et JSON. Pour le format JSON les niveaux de métadonnées minimal et full sont supportés. Une requête demandant le niveau de métadonnées none ne sera pas honorée, et le niveau minimal de métadonnées sera retourné à la place, en concordance avec la spécification en vigueur.

Il existe deux façons de demander un format de réponse : d'une part, on peut en faire la demande dans le header `Accept`, et d'autre part, en tant que paramètre REST `$format`.

Le paramètre décrivant le format peut être les abréviations JSON, XML, et ATOM, ou le type MIME précis. Pour obtenir différents niveaux de métadonnées en JSON, il faut utiliser le type MIME précis et y ajouter `;odata.metadata=<NIVEAU>` pour la version 4.0 du protocole et `odata=<NIVEAU>metadata` pour la version 3.0 du protocole.

> GET [/error?$format=json](http://public.opendatasoft.com/api/odata/error?$format=json)

```json
{
    "error": {
        "message": "Resource not found for the segment 'error'",
        "code": 404
    }
}
```

> GET [/error?$format=xml](http://public.opendatasoft.com/api/odata/error?$format=xml)

```json
<m:error xmlns:m="http://docs.oasis-open.org/odata/ns/metadata">
    <m:code>404</m:code>
    <m:message>Resource not found for the segment 'error'</m:message>
</m:error>
```

A partir du chapitre suivant, tous les exemples seront au format JSON, par souci de simplicité, mais tous les points évoqués fonctionnent aussi bien en XML qu'en JSON.

## Catalogue

Pour accéder au catalogue de jeux de données du service, il convient de se rendre sur la racine du service.

> GET [/?$format=json](http://public.opendatasoft.com/api/odata/?$format=json)

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

## Jeux de données

Pour accéder aux enregistrements d'un jeu de données, il suffit de se rendre sur `/<IDENTIFIANT DU JEU DE DONNÉES>`.

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

## Pagination

Pour demander une pagination des résultats, on peut utiliser les paramètres REST `$top`, représentant le nombre de résultats à retourner et `$skip`, représentant le nombre de résultats à ignorer à partir du début. Lorsque les résultats sont paginés, et que le résultat partiel n'est pas le dernier, la réponse contient un lien vers les résultats suivants.

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

Pour faire une recherche dans les données, on peut spécifier le paramètre `$search`.

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


## Selection

Pour faire une sélection dans les champs retournés, on peut spécifier le paramètre $filter. Les opérateurs supportés par la plateforme OpenDataSoft sont `eq` et `ne`, pour spécifier une égalité (resp. une inégalité), `le` et `lt` pour spécifier que le champ de gauche doit être inférieur (resp. strictement inférieur) au champ de droite, et enfin `ge` et `gt` pour spécifier que le champ de gauche doit être supérieur (resp. strictement supérieur) au champ de droite. Plusieurs sélections peuvent se combiner avec les opérateurs logiques `and` et `or`, dans leurs sémantiques respectives habituelles. Une expression ainsi formée peut être niée en utilisant l'opérateur logique unaire `not`.

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

## Compte

Il existe deux façons d'obtenir le nombre d'enregistrements dans un jeu de données. La première est d'utiliser le paramètre REST `$count` pour la version 4.0 et `$inlinecount` pour la version 3.0. L'autre façon est de naviguer sur `/<JEU DE DONNEES>/$count`. La première méthode permet d'ajouter le compte au résultat de la requête, et peut être utilisé avec les autres paramètres. Le compte sera le nombre de résultats retournés en prenant en compte les filtres et recherches demandées. La seconde méthode ne permet pas d'ajouter des paramètres ni d'obtenir d'autres résultats.

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

## Tri

Il est possible de trier les résultats selon un champ en utilisant le paramètre `$orderby`. On peut ajouter au nom du champ sur lequel faire le tri les mots clé `asc` et `desc` pour que le tri se fasse dans l'ordre ascendant (resp. descendant).

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

## Enregistrements

Pour accéder à un enregistrement unique, il convient de naviguer sur l'adresse du jeu de données auquel il appartient et d'ajouter à l'adresse son recordid entre parenthèses.

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

On peut faire une projection pour n'obtenir que un ou plusieurs champs en utilisant le paramètre `$select`. Lorsque l'on veut obtenir plusieurs champs, il convient de les séparer par une virgule et un espace optionnel. Ce paramètre est valide aussi bien pour les jeux de données que pour les enregistrements.

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