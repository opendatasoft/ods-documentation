��    4      �              \  3   ]    �  H   �  �   �     �  �   �      !     B  j  c  n  �  �   =
  $   �
  E   �
  U  )  �     �     A   �  �   �     �  P  �  d       h  6  t     �  �   �  �  �    Y  d   v  N   �  e   *     �  �   �  �   v  '   �     !  \   5  M   �  z   �  �  [  _  �     N     T  M  a  �   �  &   �   *   �   7   �   =   4!     r!  �   �!    X"  �  s#  3   /%    c%  H   ~&  �   �&     T'  �   j'      �'     (  j  5)  n  �*  �   ,  $   �,  E   �,  U  �,  �   Q.  �   �.  A   �/  �   �/     p0  P  �0  d  �1     :3  6  F3     }4  �   �4  �  V5    +7  d   H9  N   �9  e   �9     b:  �   |:  �   H;  '   �;     �;  \   <  M   d<  z   �<  �  -=  _  �>      @     &@  M  3@  �   �A  &   |B  *   �B  7   �B  =   C     DC  �   ^C    *D   **Attention !** Cette opération est irréversible. **Attention !** Les utilisateurs abonnés via ce formulaire ne seront pas facturés automatiquement par la plateforme, même s'ils ont un compte client avec une carte de crédit paramétrée. Vous en êtes notifié avec la mention "Moyen de paiement : géré hors de la plateforme". **Attention !** Ne désabonnez pas un utilisateur sans son consentement. A la suite des trois onglets précédemment décrits vient un quatrième et dernier onglet permettant de supprimer une formule d'abonnement. Abonnements multiples C'est à dire l'ensemble des champs et des enregistrements visibles dans un moins une des formules auxquelles l'utilisateur est abonné. Cas des jeux de données privés Cela permet en particulier de gérer les cas où pour de mêmes restrictions on veut proposer plusieurs modes de facturation. Par exemple 9€ par mois / 99€ par an, une manière classique d'encourager les utilisateurs à s'inscrire à des formules les engageant sur un plus long terme. Cette fonction est principalement disponible pour gérer des abonnements hors-plateforme. Nous ne gérons actuellement que des paiements par carte bancaire, mais des utilisateurs peuvent vouloir payer par prélèvement bancaire. Dans ce cas vous pouvez mettre en place le prélèvement de votre côté et abonner le (les) utilisateur(s) en question manuellement. Comme le rappelle le message d'alerte, **il est très fortement déconseillé de modifier quoi que ce soit sur une formule dès que celle-ci a des abonnés**. En effet, une formule d'abonnement vous lie contractuellement à un abonné et vous ne pouvez pas modifier un plan sans son accord. Il n'est d'ailleurs pas possible de modifier la tarification d'une formule. Comme pour le reste de la sécurité sur la plateforme OpenDataSoft, il existe 2 leviers pour mettre en place des restrictions : Création d'une formule d'abonnement Dans cet onglet vous pourrez abonner et désabonner des utilisateurs. Dans cet onglet, un petit formulaire vous permet d'envoyer des messages à vos abonnés. Ces messages seront envoyés par email à vos abonnés et ceux-ci pourront y répondre. Vous recevrez alors ces réponses dans la boite email correspondant à :doc:`l'adresse définie pour le compte marchand <merchant_accounts>` associé à la formule. Dans cette interface d'administration, 3 onglets sont proposés: * Modifier la formule * Ecrire aux abonnés * Gestion des abonnements Dans la mesure où la première facturation a lieu lors de la souscription à l'abonnement, il faut que l'utilisateur soit pleinement conscient de ce à quoi il souscrit. Des **restrictions** sur les enregistrements et colonnes visibles Des utilisateurs non abonnés vont également vouloir accéder à votre jeu de données. Il faut définir pour eux des restrictions spécifiques dans l'onglet sécurité. Ecrire aux abonnés En cliquant sur le bouton "Filtres" vous ferez apparaitre deux champs vous permettant de définir une requête de recherche (pour filtrer les enregistrements) et la liste des champs visibles. Ce sont les mêmes restrictions que celles offertes par les formules d'abonnement mais elles s'appliquent à tous les utilisateurs non abonnés. En vous connectant à l'espace de publication d'un jeu de donnée en tant qu'administrateur, vous verrez l'apparition d'un onglet facturation. C'est dans cet onglet que vous pourrez mettre en place vos formules d'abonnement. Vous verrez également un onglet sécurité dans lequel vous pourrez instaurer des restrictions pour les utilisateurs non abonnés. Facturation Filtrer les enregistrements du jeu de données via une requête de recherche (voir `la documentation de l'API <query_language_and_geo_filtering>`_ relative à ce sujet). Une requête laissée vide n'impose aucune restriction. Pour ne rien lister, il suffit de rentrer une requête ne renvoyant aucun résultat. Gestion des abonnements Il est important de bien comprendre que supprimer une formule d'abonnement ne désabonne pas pour autant les utilisateurs abonnés. Cela empêche uniquement d'autres utilisateurs de s'abonner. Il est également possible de définir des restrictions (toujours via les mêmes leviers : liste des champs et filtre de recherche) pour chacun des utilisateurs que vous avez ainsi explicitement autorisés. Celles-ci s'appliquent alors à l'utilisateur tant qu'il ne souscrit pas à un abonnement. Auquel cas les restrictions de l'abonnement se combinent à celles de l'autorisation générale comme elles le font dans le cas d'abonnements multiples (voir ci dessous). Il s'agit d'un quota d'utilisation défini en nombre de requêtes pour une période donnée (jour, semaine, mois ou année). Une fois ce quota dépassé, les appels faits par les utilisateurs ayant souscrits à cette formule seront bloqués jusqu'à la fin de la période. Attention, un quota d'utilisation par défaut existe pour chaque utilisateur pour l'ensemble du domaine. Veillez à ce que les 2 quotas soient cohérents, c’est à dire que le quota défini sur l’ensemble du domaine soit plus large que celui sur le jeu de donnée Le formulaire vous permet de définir pour chaque formule un tarif et une fréquence de facturation. Les champs visibles sont l'union des champs visibles des différentes formules Les enregistrements visibles sont l'union des enregistrements visibles dans les différentes formules Les formules d'abonnement Lorsqu'un utilisateur s'abonne à deux (ou plus) formules d'abonnements sur un même jeu de données, les restrictions associées à chacune des formules d'abonnement se combinent de la façon suivante : Lorsqu'un utilisateur s'abonne, les restrictions "par défaut" sont alors remplacées par les restrictions liées à l'abonnement. Modification d'une formule d'abonnement Modifier la formule N'afficher qu'un sous ensemble des champs du jeu de données en listant les champs visibles. Nous avons même déjà un premier abonnement sur la formule Perso mensuelle. Pour abonner des utilisateurs, entrez leurs noms dans le formulaire, sélectionnez les et cliquez sur le bouton "abonner". Pour chaque formule que vous créerez, vous pourrez définir à la fois un mode de facturation et des restrictions associées à cette formule. Les futurs abonnés, s'ils ont bien accès à la tarification n'ont en revanche aucune vue sur les restrictions techniques associées à chaque formule. Il est donc impératif que vous mettiez en place un nom et une description les plus explicites possibles. Pour illustrer le fonctionnement des modifications de formules d'abonnements, nous avons mis en place 3 formules donnant accès à toutes les données mais avec des quotas différents : 1000 requêtes par mois pour la formule Perso, 10000 pour la formule Pro. Et nous offrons deux mode de paiement pour la formule Perso, 9€ par mois ou 99€ par an. Quota Restrictions Si par exemple vous avez paramétré votre domaine pour que l’utilisateur n’ai qu’un quota hebdomadaire de 1000 requêtes et que celui-ci s’abonne à une formule spécifiant un quota de 2000 requêtes par semaine, il ne pourra au maximum faire que 1000 requêtes par semaine sur le jeu de données associé à l’abonnement. Supposons maintenant que nous voulons modifier cette formule "Perso (mensuel)". Un clic sur le bouton modifier nous informe que nous avons un abonné sur cette formule. Un message qui nous est rappelé dans l'interface d'administration de la formule. Suppression d'une formule d'abonnement Un **mode de facturation** (ex: 9€/mois) Un **quota d'utilisation** (ex: 1000 requêtes/semaine) Une formule d'abonnement est la conjonction de 3 éléments : Utilisateurs non abonnés Vous pouvez en revanche techniquement modifier les autres attributs de la formule, mais il est recommandé de mentionner tout changement à vos utilisateurs, ce qui peut être fait dans l'onglet suivant. Vous pouvez également décider de définir le jeu de données comme privé en cochant la case "Accès limité aux utilisateurs et groupes autorisés". Ce faisant le jeu de données ne sera plus ni visible ni accessible que par les utilisateurs explicitement autorisés à le faire. Project-Id-Version:  Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-15 15:12+0100
PO-Revision-Date: 2015-12-15 14:13+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: French (http://www.transifex.com/opendatasoft/documentation-5/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 **Attention !** Cette opération est irréversible. **Attention !** Les utilisateurs abonnés via ce formulaire ne seront pas facturés automatiquement par la plateforme, même s'ils ont un compte client avec une carte de crédit paramétrée. Vous en êtes notifié avec la mention "Moyen de paiement : géré hors de la plateforme". **Attention !** Ne désabonnez pas un utilisateur sans son consentement. A la suite des trois onglets précédemment décrits vient un quatrième et dernier onglet permettant de supprimer une formule d'abonnement. Abonnements multiples C'est à dire l'ensemble des champs et des enregistrements visibles dans un moins une des formules auxquelles l'utilisateur est abonné. Cas des jeux de données privés Cela permet en particulier de gérer les cas où pour de mêmes restrictions on veut proposer plusieurs modes de facturation. Par exemple 9€ par mois / 99€ par an, une manière classique d'encourager les utilisateurs à s'inscrire à des formules les engageant sur un plus long terme. Cette fonction est principalement disponible pour gérer des abonnements hors-plateforme. Nous ne gérons actuellement que des paiements par carte bancaire, mais des utilisateurs peuvent vouloir payer par prélèvement bancaire. Dans ce cas vous pouvez mettre en place le prélèvement de votre côté et abonner le (les) utilisateur(s) en question manuellement. Comme le rappelle le message d'alerte, **il est très fortement déconseillé de modifier quoi que ce soit sur une formule dès que celle-ci a des abonnés**. En effet, une formule d'abonnement vous lie contractuellement à un abonné et vous ne pouvez pas modifier un plan sans son accord. Il n'est d'ailleurs pas possible de modifier la tarification d'une formule. Comme pour le reste de la sécurité sur la plateforme OpenDataSoft, il existe 2 leviers pour mettre en place des restrictions : Création d'une formule d'abonnement Dans cet onglet vous pourrez abonner et désabonner des utilisateurs. Dans cet onglet, un petit formulaire vous permet d'envoyer des messages à vos abonnés. Ces messages seront envoyés par email à vos abonnés et ceux-ci pourront y répondre. Vous recevrez alors ces réponses dans la boite email correspondant à :doc:`l'adresse définie pour le compte marchand <merchant_accounts>` associé à la formule. Dans cette interface d'administration, 3 onglets sont proposés: * Modifier la formule * Ecrire aux abonnés * Gestion des abonnements Dans la mesure où la première facturation a lieu lors de la souscription à l'abonnement, il faut que l'utilisateur soit pleinement conscient de ce à quoi il souscrit. Des **restrictions** sur les enregistrements et colonnes visibles Des utilisateurs non abonnés vont également vouloir accéder à votre jeu de données. Il faut définir pour eux des restrictions spécifiques dans l'onglet sécurité. Ecrire aux abonnés En cliquant sur le bouton "Filtres" vous ferez apparaitre deux champs vous permettant de définir une requête de recherche (pour filtrer les enregistrements) et la liste des champs visibles. Ce sont les mêmes restrictions que celles offertes par les formules d'abonnement mais elles s'appliquent à tous les utilisateurs non abonnés. En vous connectant à l'espace de publication d'un jeu de donnée en tant qu'administrateur, vous verrez l'apparition d'un onglet facturation. C'est dans cet onglet que vous pourrez mettre en place vos formules d'abonnement. Vous verrez également un onglet sécurité dans lequel vous pourrez instaurer des restrictions pour les utilisateurs non abonnés. Facturation Filtrer les enregistrements du jeu de données via une requête de recherche (voir `la documentation de l'API <query_language_and_geo_filtering>`_ relative à ce sujet). Une requête laissée vide n'impose aucune restriction. Pour ne rien lister, il suffit de rentrer une requête ne renvoyant aucun résultat. Gestion des abonnements Il est important de bien comprendre que supprimer une formule d'abonnement ne désabonne pas pour autant les utilisateurs abonnés. Cela empêche uniquement d'autres utilisateurs de s'abonner. Il est également possible de définir des restrictions (toujours via les mêmes leviers : liste des champs et filtre de recherche) pour chacun des utilisateurs que vous avez ainsi explicitement autorisés. Celles-ci s'appliquent alors à l'utilisateur tant qu'il ne souscrit pas à un abonnement. Auquel cas les restrictions de l'abonnement se combinent à celles de l'autorisation générale comme elles le font dans le cas d'abonnements multiples (voir ci dessous). Il s'agit d'un quota d'utilisation défini en nombre de requêtes pour une période donnée (jour, semaine, mois ou année). Une fois ce quota dépassé, les appels faits par les utilisateurs ayant souscrits à cette formule seront bloqués jusqu'à la fin de la période. Attention, un quota d'utilisation par défaut existe pour chaque utilisateur pour l'ensemble du domaine. Veillez à ce que les 2 quotas soient cohérents, c’est à dire que le quota défini sur l’ensemble du domaine soit plus large que celui sur le jeu de donnée Le formulaire vous permet de définir pour chaque formule un tarif et une fréquence de facturation. Les champs visibles sont l'union des champs visibles des différentes formules Les enregistrements visibles sont l'union des enregistrements visibles dans les différentes formules Les formules d'abonnement Lorsqu'un utilisateur s'abonne à deux (ou plus) formules d'abonnements sur un même jeu de données, les restrictions associées à chacune des formules d'abonnement se combinent de la façon suivante : Lorsqu'un utilisateur s'abonne, les restrictions "par défaut" sont alors remplacées par les restrictions liées à l'abonnement. Modification d'une formule d'abonnement Modifier la formule N'afficher qu'un sous ensemble des champs du jeu de données en listant les champs visibles. Nous avons même déjà un premier abonnement sur la formule Perso mensuelle. Pour abonner des utilisateurs, entrez leurs noms dans le formulaire, sélectionnez les et cliquez sur le bouton "abonner". Pour chaque formule que vous créerez, vous pourrez définir à la fois un mode de facturation et des restrictions associées à cette formule. Les futurs abonnés, s'ils ont bien accès à la tarification n'ont en revanche aucune vue sur les restrictions techniques associées à chaque formule. Il est donc impératif que vous mettiez en place un nom et une description les plus explicites possibles. Pour illustrer le fonctionnement des modifications de formules d'abonnements, nous avons mis en place 3 formules donnant accès à toutes les données mais avec des quotas différents : 1000 requêtes par mois pour la formule Perso, 10000 pour la formule Pro. Et nous offrons deux mode de paiement pour la formule Perso, 9€ par mois ou 99€ par an. Quota Restrictions Si par exemple vous avez paramétré votre domaine pour que l’utilisateur n’ai qu’un quota hebdomadaire de 1000 requêtes et que celui-ci s’abonne à une formule spécifiant un quota de 2000 requêtes par semaine, il ne pourra au maximum faire que 1000 requêtes par semaine sur le jeu de données associé à l’abonnement. Supposons maintenant que nous voulons modifier cette formule "Perso (mensuel)". Un clic sur le bouton modifier nous informe que nous avons un abonné sur cette formule. Un message qui nous est rappelé dans l'interface d'administration de la formule. Suppression d'une formule d'abonnement Un **mode de facturation** (ex: 9€/mois) Un **quota d'utilisation** (ex: 1000 requêtes/semaine) Une formule d'abonnement est la conjonction de 3 éléments : Utilisateurs non abonnés Vous pouvez en revanche techniquement modifier les autres attributs de la formule, mais il est recommandé de mentionner tout changement à vos utilisateurs, ce qui peut être fait dans l'onglet suivant. Vous pouvez également décider de définir le jeu de données comme privé en cochant la case "Accès limité aux utilisateurs et groupes autorisés". Ce faisant le jeu de données ne sera plus ni visible ni accessible que par les utilisateurs explicitement autorisés à le faire. 