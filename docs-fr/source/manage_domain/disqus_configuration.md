# Configurer Disqus

Si vous possédez un nom de domaine personnalisé pour votre domaine OpenDataSoft, remplacez les références à \<VOTREDOMAINE\>.opendatasoft.com par votre nom de domaine.

Les étapes suivantes sont nécessaires pour connecter votre compte Disqus à votre domaine OpenDataSoft :

1. Créez un compte Disqus : <https://disqus.com/admin/signup/>

2. Créez un nouveau profil de site ici : <http://disqus.com/admin/create/>
    - Entrez un nom de site (celui de votre choix)
    - Choisissez votre URL Disqus (notez la, celle-ci sera votre **shortname**)
    - Choisissez la bonne catégorie

2. Enregistrez une nouvelle application ici : <http://disqus.com/api/applications/register/>

3. Allez sur le Dashboard de votre application : <http://disqus.com/api/applications/>.
   Notez la "Public Key" qui sera votre **Clé publique Disqus**.
   Pour des raisons de sécurité, ne communiquez jamais votre "Secret key".

4. Allez sur les détails de votre application :
    - L'adresse de la page devrait ressembler à http://disqus.com/api/applications/\<XXXX\>/ (où XXXX est votre ID d'application)
    - Cliquez sur le lien "settings" (http://disqus.com/api/applications/\<XXXX\>/update/)
    - Ajoutez *\<VOTREDOMAINE\>.opendatasoft.com* dans la liste des "allowed domains"

Une fois cela fait, vous pouvez vous connecter sur votre domaine OpenDataSoft et
aller dans la page "Domaine", puis dans l'onglet "Intégrations". Vous pouvez ensuite
activer Disqus et renseigner le **shortname** et la **clé publique**.

Désormais, vos utilisateurs peuvent commenter les jeux de données dans un nouvel
onglet Disqus, et vous pouvez modérer ces commentaires depuis la page http://\<SHORTNAME\>.disqus.com
