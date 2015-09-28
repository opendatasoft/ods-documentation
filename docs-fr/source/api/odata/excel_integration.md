# Intégration dans Microsoft Excel

Dans le présent article, nous allons voir comment récupérer les données d'un service OData OpenDataSoft dans Microsoft Excel. Pour cela, il existe 3 façons de faire.
Tout d'abord, pour la version 2013 de Microsoft Excel, il est possible d'utiliser l'intégration OData native pour récupérer les données. Ensuite, pour les versions 2010 et 2013, il est possible d'utiliser les extensions Microsoft PowerPivot et Microsoft PowerQuery pour récupérer ces données.

## Intégration native

Voici les étapes permettant d'importer des données à partir de l'intégration OData native de Microsoft Excel.

![La liste des sources de données suppportées.](data1.png)

* Pour importer des données depuis le service OData, ouvrez Microsoft Excel, et cliquez sur l'onglet nommé "DATA". Ceci fait, cliquez sur le bouton "From Other Source" pour voir la liste des sources de données supportées. Choisissez "From OData Feed".

![Formulaire d'entrée de service.](data2.png)

* Entrez ensuite l'adresse du service dans la barre d'adresse de la fenêtre qui s'est ouverte. Dans la plateforme OpenDataSoft, l'adresse relative du service OData est "/api/odata/".

![Fenêtre de selection de table.](data3.png)

* Choisissez ensuite la ou les tables qui serviront de source de données en cliquant sur le petit carré à gauche de l'identifiant du ou des jeu(x) de données qui vous intéresse(nt).

![Une table selectionnée pour utilisation comme source de données.](data4.png)

* Après validation, la fenêtre de sélection de destination s'ouvrira, cliquez sur "Ok".

![La fenêtre de selection de destination.](data5.png)

* Vos données apparaissent maintenant dans les cellules de Microsoft Excel.

![Exemple de données importées.](data6.png)


## PowerPivot

Voici les étapes permettant d'importer des données à partir de PowerPivot pour Microsoft Excel.

![L'onlet "Add-Ins" de la fenêtre d'options de Microsoft Excel.](ppivot1.png)

* Avant d'utiliser PowerPivot, il est nécessaire de l'activer. Pour cela, rendez vous dans les options de Microsoft Excel, dans l'onglet "Add-Ins". Dans la boîte de sélection multiple nommée "Manage", choisissez "COM Add-ins" et cliquez sur "Go...".

![La fenêtre de selection d'add-ins COM.](ppivot2.png)

* Dans la fenêtre qui s'ouvre, selectionnez "Microsoft PowerPivot for Excel 2013" si vous utilisez Microsoft Excel 2013, ou "Microsoft PowerPivot for Excel 2010" si vous utilisez Microsoft Excel 2010.

![La barre de menu PowerPivot.](ppivot3.png)

* De retour dans la fenêtre principale de Microsoft Excel, cliquez sur l'onglet "POWERPIVOT" pour afficher la barre de menu PowerPivot. Dans celui-ci, cliquez sur le bouton "Manage" pour afficher la fenêtre de gestion des sources de données PowerPivot.

![La fenêtre de gestion des sources de données PowerPivot.](ppivot4.png)

* Dans la fenêtre de gestion des sources de données PowerPivot, cliquez sur "Get External Data", puis, dans le menu qui apparaît, sur "From Data Service", et dans le deuxième menu qui apparaît, sur "From OData Data Feed".

![Fenêtre d'import de tables de PowerPivot.](ppivot5.png)

* Dans la fenêtre d'import qui s'ouvre, entrez l'adresse du service OData de OpenDataSoft dans la barre d'adresse.

![Fenêtre de selection de tables.](ppivot6.png)

* Dans la fenêtre de sélection de tables, sélectionnez la ou les jeu(x) de données qui vous intéressent en cliquant sur le carré à droite de l'identifiant de celle(s)-ci, et cliquez sur "Finish".

![La fenêtre de transfert de données.](ppivot7.png)

* Lorsque la fenêtre de transfert montre un indicateur de succès, fermez la en cliquant sur le bouton "Close" en bas à droite.

![L'aperçu des données dans la fenêtre de gestion des sources de données.](ppivot8.png)

* Vous pouvez vérifier l'intégrité de vos données dans la fenêtre de gestion des sources de données, qui montre maintenant les données importées du service OData OpenDataSoft.

![La liste des types d'import de données de PowerPivot.](ppivot10.png)

* Cliquez sur "PivotTable", puis, dans la liste qui apparaît, sur "PivotTable" pour afficher vos données dans la fenêtre principale de Microsoft Excel.

![La fenêtre de selection de destination.](ppivot11.png)

* Dans la fenêtre de sélection de destination qui apparaît, choisissez la feuille de calcul de destination dans laquelle importer vos données.

![Exemple d'agrégation de données dans Microsoft Excel en utilisant l'intégration PowerPivot.](ppivot12.png)


## Power Query

Voici les étapes permettant d'importer des données à partir de Power Query pour Microsoft Excel.


* Avant de pouvoir utiliser Microsoft Power Query pour Microsoft Excel, il est nécessaire de le télécharger et de l'activer. Son téléchargement peut être fait sur le site officiel de Microsoft à [cette adresse](http://www.microsoft.com/en-us/download/details.aspx?id=39379). Pour l'activation de l'add-in, veuillez suivre les instructions des points 1.2.1 et 1.2.2.

![La liste des sources de données supportées par Microsoft Power Query.](pquery1.png)

* Une fois l'add-in téléchargé et activé, retournez sur la fenêtre principale de Microsoft Excel, cliquez sur l'onglet "POWER QUERY" pour afficher la barre de menu Power Query. Dans celle-ci, cliquez sur le bouton "From Other Sources" pour afficher la liste des sources de données supportées dans Power Query.

![La fenêtre de selection du service de données OData.](pquery2.png)

* Dans la fenêtre qui s'affiche, entrez l'adresse du service OData d'OpenDataSoft et cliquez sur "OK".

![La fenêtre de navigation de Microsoft Power Query.](pquery3.png)

* Ceci fait, une fenêtre de navigation Power Query s'affiche sur la droite de la fenêtre principale de Microsoft. Dans celle ci, cliquez sur l'identifiant de la table qui vous intéresse.

![Exemple de données importées dans Microsoft Excel en utilisant Microsoft Power Query.](pquery4.png)

* Vos données apparaissent maintenant dans les cellules de Microsoft Excel.
