Bonsoir,
​
​​Non ce n'est pas exactement la même syntaxe car a ce niveau on configure le widget angularJS, c'est donc du code angular.
​Alors que la syntaxe #now(months=-1) est le langage de requête de l'API de recherche.
​
Voici un exemple qui illustre assez bien ce qu'on peut faire avec ods-timerange 
​
​
​<ods-dataset-context 
    context="ds" 
    ds-dataset="ods-activity_log-monitoring" 
    ds-parameters="{'source':'monitoring'}" >

    <div ods-datetime="now">

        <ods-timerange 
            context="ds" 
            date-format="DD/MM/YYYY" 
            default-from="{{ now | momentadd : 'months' : -1 }}" 
            default-to="{{ now }}" 
            display-time="false" 
            >
        </ods-timerange>

    </div>
    
    <ods-table context="ds"></ods-table>
    
</ods-dataset-context>

​
​
​default-from et default-to permettent de définir la date par défaut au chargement.
​ods-datetime est un widget permettant de récupérer la date du jour et la positionner dans une variable, ici appelé "now"
​
​
​Il y a également la possibilité de récupérer la date sélectionner dans une variable AngularJS afin de jouer avec par la suite pour faire des affichages conditionnels par exemple.
​
​Dans l'exemple suivant, on affiche si la selection est supérieur ou inférieur à 6 mois :
​
​<ods-dataset-context 
    context="ds" 
    ds-dataset="ods-activity_log-monitoring" 
    ds-parameters="{'source':'monitoring'}" 

    ng-init="var={'dates': {'to': '', 'from': ''}]">

    <div ods-datetime="now">

        <ods-timerange 
            context="ds" 
            date-format="DD/MM/YYYY" 
            default-from="{{ now | momentadd : 'months' : -1 }}" 
            default-to="{{ now }}" 
            display-time="false" 
            
            from="var.dates.from" 
            to="var.dates.to"
            >
        </ods-timerange>

        <p ng-if="var.dates.from| isAfter : (var.dates.to|momentadd:'month':-6)">
            Moins de 6 mois d'écart
        </p>

        <p ng-if="var.dates.from| isBefore : (var.dates.to|momentadd:'month':-6)">
            Plus de 6 mois d'écart
        </p>

    </div>
    
    <ods-table context="ds"></ods-table>
    
</ods-dataset-context>
 
​
​Si ce n'est pas clair, n'hésitez pas à nous montrer votre exemple en pointant du doigts votre page ou jeu de donnée.
​
​Merci