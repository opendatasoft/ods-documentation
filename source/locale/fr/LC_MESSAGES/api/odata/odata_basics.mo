��    0      �                     ^  %     �     �     �     �  $  �     �     �  U  �  f   D     �     �     �     �     �  
   �  	   �             �   	     �	     �	     �	  \   
  �   `
  �    5   �  m  �  �   P  �   @  ]   �  �   ]  x   O  �  �  S   {  B   �  A     B   T  A   �  D   �  m     �   �     F     Z     c     y  �  �  	   Y  v  c     �     �     �       1       ?     N  %  e  �   �     *     8     I     Z  
   h  
   s  	   ~  	   �  :  �  �   �     �      �      �   \   �   �   O!  �  "  Y    %  X  Z%  s  �&  y   '(  m   �(  @  )  �   P*  Z  +  D   c-  M   �-  R   �-  M   I.  R   �.  H   �.  �   3/  �   �/     �0     �0     �0     �0   Catalog Client-driven paging can be requested with the ``$top`` REST parameter to limit the size of the response, and the ``$skip`` REST parameter to define the first result to display. The server will ignore `$skip` results and then return the first ``$top`` items. When paging is applied, a link to the next results will be added at the end of the payload. Count DataServiceVersion Datasets Formats From the next paragraph on, in order to keep things simple and relevant, all examples will illustrate protocol version 4.0. Keep in mind however that all described features work in both supported version. If version 3.0 use a specific syntax or needs special attention, it shall be described. General points HTTP Method In this article, we will use the words "service root" or "service document" to refer to the base address of the OData service. For the OpenDataSoft platform, this URL can be found on the `/api/odata` path, relative to the platform hostname. Unless stated otherwise, all addresses in the rest of this article are relative to the service root. In this article, you will learn how to use the OData API to query data from the OpenDataSoft platform. Metadata OData-MaxVersion OData-MinVersion OData-Version Paging Projection Recherche Restriction Results can be projected over specific fields using the `$select` parameter. For multiple fields to be subject of the projection, their names must be separated by a comma and an optional space. This parameter can be used with datasets and specific records. Results returned by the service can be sorted by a field using the ``$orderby`` parameter. The field name can be followed by the ``asc`` and ``desc`` keywords to specify the sort order (default is ascendant). Service address Sort Specific record The OpenDataSoft OData service currently is read only, hence the only allowed method is GET. The OpenDataSoft platform supports versions 3.0 and 4.0 of the OData protocol. Versions requirements can be communicated to the service via the following six headers: The ``$filter`` parameter can be used to apply a restriction on results. Supported restriction operators are ``eq`` and ``ne`` for equality and inequality, ``lt`` and ``gt`` for strict inequalities and ``le`` and ``ge`` for non strict inequalities. Multiple restriction expessions can be combined into bigger expressions with the logical operators ``and`` and ``or``. Expression can be negated with the ``not`` operator. The ``$search`` parameter can be used to search data. The format parameter, be it in the headers or in the query string, can be either the abbreviations JSON, XML or ATOM, or the exact MIME type requested. For the JSON format, different metadata levels can be requested by using the full MIME type followed by ``;odata.metadata=<LEVEL>`` for protocol version 4.0 and ``;odata=<LEVEL>metadata`` for protocol version 3.0. The metadata document is located on `/$metadata`. This documents determines the complex types used by the service, then the entity types found on the platform, the entity sets offered, and finally a set of annotation about the entity sets. The records of a dataset can be browsed on the ``/<DATASET ID>`` page. It is easy to navigate from the service root document to a dataset by following the URL attribute of the catalog items. The service root document displays the catalog of all datasets available through the service. The service supports ATOM and JSON formats. For the JSON formats, the "minimal" and "full" metadata levels are supported. Any request for a metadata level of "none" will be responded to with the "minimal" metadata level, as per the standard. There are two main ways of requesting a specific format: in the ``Accept`` header and in the ``$format`` REST parameter. There are two ways of obtaining the number of records in a dataset. The first way is to use the ``$count`` REST parameter (``$inlinecount`` for protocol version 3.0). The other way is to navigate to the count document for a resource. This is achieved by querying ``/<DATASET ID>/$count``. These two methods have slightly different semantics: the first one returns the count relative to the payload, taking all operations into account, except for paging and is returned along with the payload, while the second one returns the absolute resource count, irrespective of anything other than the number of records present on the server and only returns the number, without any other information. This header informs the server which version of the protocol is used by the client. This header specifies the maximum version supported by the client. This header specifies the maximum version the service should use. This header specifies the minimum version supported by the client. This header specifies the minimum version the service should use. This header specifies which protocol version the service should use. To access a specific record, its record id surrounded by parenthesis, can be appended to the dataset address. To keep things simple, the rest of this article will feature examples with the JSON format, which is the default, but keep in mind that everything will work the same in the ATOM format. Using the OData API Versions maxDataServiceVersion minDataServiceVersion Project-Id-Version:  Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-15 15:12+0100
PO-Revision-Date: 2015-12-15 10:16+0000
Last-Translator: Jérémy Morel <morel.jeremy@gmail.com>
Language: fr
Language-Team: French (http://www.transifex.com/opendatasoft/documentation-5/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 Catalogue Pour demander une pagination des résultats, on peut utiliser les paramètres REST ``$top``, représentant le nombre de résultats à retourner et ``$skip``, représentant le nombre de résultats à ignorer à partir du début. Lorsque les résultats sont paginés, et que le résultat partiel n'est pas le dernier, la réponse contient un lien vers les résultats suivants. Compte DataServiceVersion Jeux de données Formats A partir du paragraphe suivant, tous les exemples seront tirés de la version 4.0 du service par souci de simplicité, mais tous les points évoqués fonctionnent dans les deux versions supportées. Si une variante d'un paramètre ou d'un point particulier existe pour la version 3.0, elle sera évoquée. Généralités Méthodes de requêtes Dans le présent article, nous parlerons de "root", "racine", "/" ou "adresse du service" pour désigner l'adresse de base du service OData. Celle ci, pour la plateforme OpenDataSoft, peut se localiser en ajoutant à l'URL d'un domaine de la plateforme la chaîne de caractères `/api/odata/`. Dans cet article, nous allons voir comment utiliser les fonctionnalités offertes par l'API OData pour récupérer des données de la plateforme OpenDataSoft. Métadonnées OData-MaxVersion OData-MinVersion OData-Version Pagination Projection Recherche Selection On peut faire une projection pour n'obtenir que un ou plusieurs champs en utilisant le paramètre ``$select``. Lorsque l'on veut obtenir plusieurs champs, il convient de les séparer par une virgule et un espace optionnel. Ce paramètre est valide aussi bien pour les jeux de données que pour les enregistrements. Il est possible de trier les résultats selon un champ en utilisant le paramètre ``$orderby``. On peut ajouter au nom du champ sur lequel faire le tri les mots clé ``asc`` et ``desc`` pour que le tri se fasse dans l'ordre ascendant (resp. descendant). Adresse du service Tri Enregistrements Le service OData d'OpenDataSoft étant en lecture seule, il ne supporte que la méthode GET. Le service OData de OpenDataSoft supporte les versions 3.0 et 4.0 du protocole OData. Une version spécifique ou des exigences de version peuvent accompagner toute requête grâce aux six headers suivants: Pour faire une sélection dans les champs retournés, on peut spécifier le paramètre ``$filter``. Les opérateurs supportés par la plateforme OpenDataSoft sont ``eq`` et ``ne``, pour spécifier une égalité (resp. une inégalité), ``le`` et ``lt`` pour spécifier que le champ de gauche doit être inférieur (resp. strictement inférieur) au champ de droite, et enfin ``ge`` et ``gt`` pour spécifier que le champ de gauche doit être supérieur (resp. strictement supérieur) au champ de droite. Plusieurs sélections peuvent se combiner avec les opérateurs logiques ``and`` et ``or``, dans leurs sémantiques respectives habituelles. Une expression ainsi formée peut être niée en utilisant l'opérateur logique unaire ``not``. Pour faire une recherche dans les données, on peut spécifier le paramètre ``$search``. Le paramètre décrivant le format peut être les abréviations JSON, XML, et ATOM, ou le type MIME précis. Pour obtenir différents niveaux de métadonnées en JSON, il faut utiliser le type MIME précis et y ajouter ``;odata.metadata=<NIVEAU>`` pour la version 4.0 du protocole et ``odata=<NIVEAU>metadata`` pour la version 3.0 du protocole. L'accès au document de métadonnées se fait en navigant à ``/$metadata`` suivi de n'importe quelle séquence de caractères arbitraires. Le document de métadonnées spécifie d'abord les types complexes utilisés par le service de données, puis les types d'entités existant, les ensembles d'entités proposés, et enfin des annotations sur les ensembles d'entités. Pour accéder aux enregistrements d'un jeu de données, il suffit de se rendre sur ``/<IDENTIFIANT DU JEU DE DONNÉES>``. Pour accéder au catalogue de jeux de données du service, il convient de se rendre sur la racine du service. Le service supporte les formats ATOM et JSON. Pour le format JSON les niveaux de métadonnées minimal et full sont supportés. Une requête demandant le niveau de métadonnées none ne sera pas honorée, et le niveau minimal de métadonnées sera retourné à la place, en concordance avec la spécification en vigueur. Il existe deux façons de demander un format de réponse : d'une part, on peut en faire la demande dans le header ``Accept``, et d'autre part, en tant que paramètre REST ``$format``. Il existe deux façons d'obtenir le nombre d'enregistrements dans un jeu de données. La première est d'utiliser le paramètre REST ``$count`` pour la version 4.0 et ``$inlinecount`` pour la version 3.0. L'autre façon est de naviguer sur ``/<JEU DE DONNEES>/$count``. La première méthode permet d'ajouter le compte au résultat de la requête, et peut être utilisé avec les autres paramètres. Le compte sera le nombre de résultats retournés en prenant en compte les filtres et recherches demandées. La seconde méthode ne permet pas d'ajouter des paramètres ni d'obtenir d'autres résultats. Ce header spécifie la version du protocole utilisée par le client. Ce header spécifie la version  maximale du protocole comprise par le client. Ce header spécifie la version  maximale du protocole à utiliser pour le service. Ce header spécifie la version  minimale du protocole comprise par le client. Ce header spécifie la version  minimale du protocole à utiliser pour le service. Ce header spécifie la version du protocole à utiliser pour le service. Pour accéder à un enregistrement unique, il convient de naviguer sur l'adresse du jeu de données auquel il appartient et d'ajouter à l'adresse son recordid entre parenthèses. A partir du chapitre suivant, tous les exemples seront au format JSON, par souci de simplicité, mais tous les points évoqués fonctionnent aussi bien en XML qu'en JSON. Utilisation de l'API OData Versions maxDataServiceVersion minDataServiceVersion 