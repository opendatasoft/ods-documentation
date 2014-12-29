
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

    
> GET /$metadata

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
        </Schema>
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

Le service supporte les formats ATOM et JSON. Pour le format JSON les niveaux de métadonnées minimal et full sont supportés. Une requête demandant le niveau de métadonnées none ne sera pas honorée, et le niveau minimal de métadonnées sera retourné à la place, en concordance avec la spécification en vigueur.

Il existe deux façons de demander un format de réponse : d'une part, on peut en faire la demande dans le header `Accept`, et d'autre part, en tant que paramètre REST `$format`.

Le paramètre décrivant le format peut être les abréviations JSON, XML, et ATOM, ou le type MIME précis. Pour obtenir différents niveaux de métadonnées en JSON, il faut utiliser le type MIME précis et y ajouter `;odata.metadata=<NIVEAU>` pour la version 4.0 du protocole et `odata=<NIVEAU>metadata` pour la version 3.0 du protocole.


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

A partir du chapitre suivant, tous les exemples seront au format JSON, par souci de simplicité, mais tous les points évoqués fonctionnent aussi bien en XML qu'en JSON.


## Catalogue

Pour accéder au catalogue de jeux de données du service, il convient de se rendre sur la racine du service.


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


## Jeux de données

Pour accéder aux enregistrements d'un jeu de données, il suffit de se rendre sur `/<IDENTIFIANT DU JEU DE DONNÉES>`.

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


## Pagination

Pour demander une pagination des résultats, on peut utiliser les paramètres REST `$top`, représentant le nombre de résultats à retourner et `$skip`, représentant le nombre de résultats à ignorer à partir du début. Lorsque les résultats sont paginés, et que le résultat partiel n'est pas le dernier, la réponse contient un lien vers les résultats suivants.

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

Pour faire une recherche dans les données, on peut spécifier le paramètre `$search`.

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



## Selection

Pour faire une sélection dans les champs retournés, on peut spécifier le paramètre $filter. Les opérateurs supportés par la plateforme OpenDataSoft sont `eq` et `ne`, pour spécifier une égalité (resp. une inégalité), `le` et `lt` pour spécifier que le champ de gauche doit être inférieur (resp. strictement inférieur) au champ de droite, et enfin `ge` et `gt` pour spécifier que le champ de gauche doit être supérieur (resp. strictement supérieur) au champ de droite. Plusieurs sélections peuvent se combiner avec les opérateurs logiques `and` et `or`, dans leurs sémantiques respectives habituelles. Une expression ainsi formée peut être niée en utilisant l'opérateur logique unaire `not`.

> GET /liste_des_prenoms?$filter=prenom eq lou

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

## Compte

Il existe deux façons d'obtenir le nombre d'enregistrements dans un jeu de données. La première est d'utiliser le paramètre REST `$count` pour la version 4.0 et `$inlinecount` pour la version 3.0. L'autre façon est de naviguer sur `/<JEU DE DONNEES>/$count`. La première méthode permet d'ajouter le compte au résultat de la requête, et peut être utilisé avec les autres paramètres. Le compte sera le nombre de résultats retournés en prenant en compte les filtres et recherches demandées. La seconde méthode ne permet pas d'ajouter des paramètres ni d'obtenir d'autres résultats.


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

## Tri

Il est possible de trier les résultats selon un champ en utilisant le paramètre `$orderby`. On peut ajouter au nom du champ sur lequel faire le tri les mots clé `asc` et `desc` pour que le tri se fasse dans l'ordre ascendant (resp. descendant).

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


## Enregistrements

Pour accéder à un enregistrement unique, il convient de naviguer sur l'adresse du jeu de données auquel il appartient et d'ajouter à l'adresse son recordid entre parenthèses.

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

On peut faire une projection pour n'obtenir que un ou plusieurs champs en utilisant le paramètre `$select`. Lorsque l'on veut obtenir plusieurs champs, il convient de les séparer par une virgule et un espace optionnel. Ce paramètre est valide aussi bien pour les jeux de données que pour les enregistrements.

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