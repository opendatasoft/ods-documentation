**CitadelJSON** est un format POI (Point Of Interest) conçu par le projet [CitadelOnTheMove](http://www.citadelonthemove.eu/);
un fichier CitadelJSON peut être utilisé avec [différents outils](http://www.citadelonthemove.eu/en-us/createanapp/developerpage.aspx)
pour générer ou développer des applications à partir de données géolocalisées.
Vous pouvez configurer chacun de vos jeux de données pour être exportable sous format
CitadelJSON, à condition qu'il contienne des données géographiques.

**Note :** par défaut, le formulaire de configuration CitadelJSON ne sera pas visible
dans votre interface; vous pouvez nous contacter (par le formulaire de support par exemple)
afin que nous l'activions.

Le format CitadelJSON est fortement structuré, ce qui signifie qu'il nécessite
des informations spécifiques à des endroits spécifiques; étant donné qu'il est impossible de déduire automatiquement quel champ doit être considéré comme étant
une "description" ou une "catégorie", vous devez configurer manuellement quel champ
jouera quel rôle. Le format s'attend à déduire de chaque enregistrement les informations suivantes:
- un titre (le nom d'une école...)
- une description (une description plus longue du point d'intérêt; elle peut être vide
mais ce n'est pas recommandé)
- une ou plusieurs catégories
- une localisation (automatiquement fourni par OpenDataSoft, pas de configuration nécessaire)
- une adresse, un code postal, et une ville, dans 3 champs séparés

Dans la console de publication de votre jeu de données, au bas de l'onglet "Informations",
vous trouverez un onglet "CitadelJSON". Un formulaire vous permettra de configurer
les informations nécessaires en saisissant le nom du champ (et non le label) contenant l'information pour chaque enregistrement.

![Configuration](configuration.png)

Une fois enregistré et publié, vos utilisateurs pourront télécharger le jeu de données en CitadelJSON.

![Download](download-fr.png)
