Introduction à la facturation sur la plateforme
===============================================

La plateforme OpenDataSoft permet aux administrateurs du domaine de restreindre l'accès à certains jeux de données et de
mettre en place des formules d'abonnement payantes pour accéder à ces données.

Sécurité des transactions
-------------------------

Afin de garantir la sécurité des transactions effectuées sur la plateforme, nous déléguons toutes les opérations de
facturation à `Stripe <http://stripe.com>`_, la plateforme de paiement en ligne leader dans le domaine.

Ainsi, nous ne stockons sur nos serveurs aucune information bancaire, pour les comptes marchand comme pour les comptes
clients.

Concepts et vocabulaire
-----------------------

La facturation tourne autour de 4 objets clés:

* Les comptes marchand: liés au domaine, ils sont utilisés pour collecter l'argent des abonnements
* Les comptes client: liés aux comptes utilisateurs, ils permettent de définir des moyens de payement et de suivre
  l'état de ses abonnements
* Les formules d'abonnement: liées aux jeux de données, elles définissent un mode de facturation (tarif et fréquence)
  pour des restrictions de securité données
* Les abonnements: liés aux comptes client et aux formules d'abonnement

Le fonctionnement de chacun de ces objets est décrit plus en avant dans les pages suivantes.
