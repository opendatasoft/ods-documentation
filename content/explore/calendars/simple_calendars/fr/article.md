OpenDataSoft permet de créer simplement des calendriers à partir de jeux de données publiés sur la plateforme.

![Un calendrier généré à partir d'un jeu de données contenant les événements disponibles sur OpenAgenda](calendar_result_fr.png)
_Un calendrier généré à partir d'un jeu de données contenant les événements disponibles sur OpenAgenda_

## Pré-requis pour les jeux de données

La vue calendrier considère chaque enregistrement du jeu de données comme un événement indépendant. Chacun de ces événements doit contenir un horaire de début et de fin ainsi qu'un titre. Ce qui signifie que le jeu de données doit contenir deux champs datetime et un champ texte pour que la vue calendrier soit disponible.

![Configuration de deux colonnes en datetime](calendar_processing_settings_fr.png)
_Configuration de deux colonnes en datetime_

Les enregistrements sans titres seront affichés par le calendrier comme des événements vides, mais l'absence de l'horaire de début ou de celui de fin empêchera purement et simplement leur affichage.

### Evénements sur un jour entier

La règle des deux champs datetime et du champ texte est certes simple, mais elle ne permet pas de configurer un événement comme durant une journée entière. Ces événements doivent donc être paramétrés comme commençant à minuit et finissant à minuit moins une seconde à la fin de la journée (de 00h00m00s à 23h59m59s).

## Configuration

### Activer la vue calendrier

Après avoir configuré deux des champs du jeu de données comme datetime et un troisième champ en texte, l'onglet calendrier devient disponible.

![Onglet calendrier indisponible](calendar_tab_unavailable_fr.png)
_Onglet calendrier indisponible_

![Onglet calendrier disponible](calendar_tab_available_fr.png)
_Onglet calendrier disponible_

Cela ne signifie pas pour autant que la vue est paramétrée. Si elle devient disponible, elle n'est pas pour autant activée.

![Cette case active la vue calendrier pour le jeu de données](calendar_checkbox_fr.png)
_Cette case active la vue calendrier pour le jeu de données_

### Paramétrage des événements

Une fois la vue calendrier activée, il faut s'assurer que les événements soient bien configurés. Par défaut ce sont le premier champ texte et les deux premiers champs datetime qui sont sélectionnés pour (respectivement) le titre, l'horaire de début et l'horaire de fin. Le dataset pouvant comporter de nombreux autres champs texte et/ou datetime, il faut sélectionner ceux qui déterminent les caractérisques des événements.

C'est aussi dans cette section qu'il est possible de choisir la couleur utilisée pour le rendu des événements.

![Configuration par défaut pour ce calendrier. Les trois champs texte et datetime sont pré-selectionnés mais incorrects.](calendar_event_default_settings_fr.png)
_Configuration par défaut pour ce calendrier. Les trois champs texte et datetime sont pré-selectionnés mais incorrects._

![Configuration correcte.](calendar_event_settings_fr.png)
_Configuration correcte._

### Paramétrage de l'infobulle

Dans la vue calendrier, cliquer sur un événement fait apparaître une infobulle contenant toutes les informations disponibles sur cet événement. Il est bien évidemment possible de configurer ce qui sera affiché en choisissant les champs concernés et en les positionnant les uns par rapport aux autres. Un aperçu est disponible en colonne de droite pour voir en simultané le rendu final de l'infobulle.

![Paramétrage de l'infobulle](calendar_tooltip_settings_fr.png)
_Paramétrage de l'infobulle_

Pour chacun des champs, les 3 actions suivantes sont disponibles et signifient :

![Actions sur les champs](calendar_tooltip_actions.png)

* Glisser/déposer pour changer la position de ce champ dans l'infobulle
* Cliquer pour retirer le champ de l'infobulle
* Cliquer pour ajouter le champ à l'infobulle

![L'aperçu](calendar_tooltip_preview_fr.png)
_L'aperçu_

## Partage

Une fois le jeu de données correctement paramétré et publié, il est possible de partager la vue calendrier avec n'importe qui (sous réserve que celui-ci ait les droits nécessaires à la vue du jeu de données).

Il est bien évidemment toujours possible de copier/coller l'URL de la page depuis la barre d'adresse du navigateur, mais vous trouverez sous le calendrier 3 autres possibilités de partage.

1. Partage de l'URL
![Les 3 options de partage, avec en premier lieu l'URL](calendar_share_fr.png)
2. Code HTML pour une intégration dans n'importe quelle page web
![Code HTML pour une intégration dans n'importe quelle page web](calendar_embed_fr.png)
3. Code HTML pour l'intégration dans les tableaux de bords et pages personnalisées de la plateforme.
![Code HTML pour l'intégration dans les tableaux de bords et pages personnalisées de la plateforme](calendar_widget_fr.png)
