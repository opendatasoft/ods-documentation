### Qu'est-ce qu'OpenDataSoft ?
OpenDataSoft est une plateforme SaaS clé en main conçue pour permettre à des utilisateurs métiers de simplement publier, partager et réutiliser des données structurées. OpenDataSoft est également le nom de la société qui commercialise la plateforme du même nom.

### Est-ce qu'OpenDataSoft est Open Source ?
OpenDataSoft n'est pas Open Source.

La société OpenDataSoft vend un service clé en mains, pas un logiciel. Néanmoins, une partie des composants de la plateforme est Open Source.

La librairie de composants graphiques réutilisables est Open Source et accessible à l'adresse suivante: [https://github.com/opendatasoft/ods-widgets](https://github.com/opendatasoft/ods-widgets).

OpenDataSoft contribue également à l'écosystème [Elasticsearch](http://www.elasticsearch.org/) et a publié plusieurs plugins Elasticsearch en Open Source (plus de détais [ici](https://github.com/opendatasoft)).

### Est-ce que la société OpenDataSoft gère les données de ses clients ?
Non. 

OpenDataSoft vend une plateforme clé en main. Les clients d'OpenDataSoft gèrent leurs données eux-mêmes sur la plateforme. L'équipe support d'OpenDataSoft est disponible pour répondre à toute question relative à la gestion des données.

### Je représente une administration publique. Mon pays a déjà mis en place une initiative Open Data, pour quelles raisons devrais-je avoir mon propre portail Open Data ?
Un des objectifs de l'Open Data est de mettre à disposition des citoyens les données produites par l'administration publique. La plateforme OpenDataSoft permet d'aller plus loin que la simple mise à disposition de données brutes:

* Contextualiser la donnée, enrichir sa valeur
* Rendre la donnée simple à comprendre pour les citoyens
* Fournir des services à un écosystème de développeurs / réutilisateurs

Pour cela, l'utilisation d'un outil de gestion de données structurées est indispensable. Et les données produites localement peuvent bien entendu être référencées par un portail national.

### Si je dépose un jeu de données sur la plateforme OpenDataSoft, sera-t'il automatiquement en accès libre sur Internet ?
Non.

La plateforme OpenDataSoft peut être utilisée pour gérer de manière simultanée des données publiques et privées. Le controle d'accés peut être géré par jeu de données.

### Quels sont les formats de fichiers supportés par OpenDataSoft.

OpenDataSoft supporte en standard de nombreux formats de fichiers:

* CSV
* GeoJSON
* JSON
* KML
* OSM (OpenStreetMap)
* Shapefile
* MapInfo
* Excel
* Open Document Spreadsheet
* Des fichiers stockés sur des serveurs distants accessibles en HTTP ou FTP.

Des parseurs spécifiques peuvent également être mis à disposition par OpenDataSoft pour des besoins spécifiques. Il est également possible de demander le développement de connecteurs qui se conncteraientt directement à un système d'information exposant des données via une API propriétaire.

### Quels standards de métadonnées sont supportés par OpenDataSoft ?
OpenDataSoft utilise en standard un sous ensemble de [DCAT](http://www.w3.org/TR/vocab-dcat/) pour décrire les jeux de données. Les métadonnées suivantes sont disponibles: **titre**, **description**, **langue**, **theme**, **mots clés**, **licence**, **producteur**, **références**.

Il est également possible d'activer le template DCAT complet, permettant d'ajouter les métadonnées suivantes: **date de création**, **date de publication**, **créateur**, **contributeur**, **fréquence de mise à jour**, **emplacement**, **période de temps**, **granularité**, **qualité des données**.

OpenDataSoft supporte également le modèle de métadonnées [INSPIRE](http://inspire.ec.europa.eu/index.cfm/pageid/101), activable à la demande.

La création d'un modèle de métadonnée complètement spécifique est également possible.

### Combien de jeux de données puis-je créer ?
Vous pouvez créer autant de jeu de données que votre licence le permet.

### Comment puis-je modifier l'apparence de mon portail OpenDataSoft ?
En temps qu'administrateur du domaine, vous pouvez modifier simplement la palette de couleurs utilisées ainsi que différentes images: logo de la page de connexion, logo du site et favicon. OpenDataSoft donnera bientôt la possibilité à ses clients d'éditer l'intégralité de la feuille de style du portail (CSS).

### Plusieurs utilisateurs peuvent-ils participer à la configuration du même jeu de données ?
Oui, il suffit de donner des droits d'accès en écriture sur le jeu de données à d'autres utilisateurs. Ces utilisateurs doivent avoir accès au domaine pour pouvoir accéder au jeu de données.

### Comment puis-je transformer et enrichir mon jeu de données ?
De nombreuses fonctions d'enrichissement et de transformation des données sont disponibles. Il vous suffit de cliquer sur le bouton **Ajouter un processeur** pour y accéder.

### Est-ce que les processeurs peuvent me permettre de géocoder une adresse ?
Oui.

OpenDataSoft supporte les services de géocodage d'ESRI et de Google. L'administrateur du domaine doit configurer les clés d'API à utiliser pour ces services dans les écrans de configuration du domaine.

Les géocodeurs ne sont pas accessibles par défaut, si vous souhaitez les utiliser, merci de contacter le support d'OpenDataSoft <support@opendatasoft.com>.

### Mon jeu de données contient des géocodes mais ma carte n'affiche rien. Que faire ?
Rappelez-vous que pour proposer une visualisation cartographique, votre jeu de données doit contenir un champ de type **Geo Point** ou **Geo Shape**. 

* Geo Point: `latitude,longitude` en WGS84, par exemple: `48.2567,3.7689`.
* Geo Shape: toute géométrie Geo JSON valide en WGS84.

### Qu'est-ce qu'une facette ?

Les facettes sont à la base d'un grand nombre de fonctionnalités proposées par la plateforme OpenDataSoft. Une facette est simplement un champ auquel ont été attribuées des capacités d'agrégation et de filtrage.

![Facet configuration](facet-configuration-en.jpg)

Dans l'exemple ci-dessus, les champs **country** et **year** ont été définis comme facettes (notez le bouton **Facette** en surbrillance à côté du nom du champ).

Les facettes peuvent être assimilées au dimensions des jeux de données. Les facettes peuvent être définies sur les types de champs suivants: **date**, **datetime**, **texte**, **entier**, **décimal**.

Les facettes ne doivent être utilisées que sur des champs disciminants.

Les facettes sont à la base de nombreuses fonctionnalités.

Filtrer les enregistrements dans la console d'exploration des jeux de données.

![Refine on facets](facet-explore-en.jpg)

En tant que dimensions, les facettes peuvent porter des agrégations. Ainsi, vous pouvez les utiliser pour construire des graphiques élaborés comme dans l'exemple ci-dessous.

![Build charts with facets](facet-chart-en.jpg)


### J'utilise l'environnement de test d'OpenDataSoft (playground). Comment puis-je disposer de mon propre portail ?
Merci d'envoyer un message à <contact@opendatasoft.com>. 

Nous serons heureux de discuter de vos besoins et de vous proposer l'abonnement approprié.
