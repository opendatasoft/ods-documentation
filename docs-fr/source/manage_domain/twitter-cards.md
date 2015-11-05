# Configurer les Twitter Cards

Si vous êtes un utilisateur de Twitter, vous avez probablement déjà vu un petit
résumé apparaitre sous certains liens que vous avez tweeté; ce résumé est
une **Twitter Card**, une fonctionnalité de Twitter qui permet aux sites de
configurer un aperçu de leur contenu dans les tweets.

OpenDatasoft vous permet de configurer les Twitter Cards pour vos jeux de données,
afin que si quelqu'un tweete un lien vers un de ceux-ci, un petit résumé apparait
(titre et description), associé au compte Twitter de votre choix.

![A Twitter Card](twittercard.png)  

#### Configuration

Tout d'abord, si vous souhaitez que les Twitter Cards soient associées à un
compte Twitter, vous pouvez aller sur la page **Domaine**, puis dans l'onglet **Intégrations**,
et remplir votre compte Twitter (sans oublier de le préfixer par un @).

Aller sur la page des Twitter Cards : <https://cards-dev.twitter.com/validator>

Il vous sera demandé une "Card URL", qui est l'adresse de la page dont vous voudriez
tester le résumé; dans ce cas, il s'agit de l'URL vers un jeu de données
(par exemple <http://public.opendatasoft.com/explore/dataset/hurricane-tracks-1851-20071/>).

Cliquez ensuite sur **Preview card**, afin d'obtenir un aperçu du résumé. Si le résultat
vous convient, vous pouvez ensuite soumettre une requête via le bouton **Request Approval**.
Twitter effectuera ensuite quelques vérifications avant de valider votre demande,
ce qui activera les Twitter Card sur chaque lien vers vos jeux de données.
