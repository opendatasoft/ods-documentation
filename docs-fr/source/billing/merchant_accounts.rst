Les comptes marchands
=====================

Avant de pouvoir mettre en place des formules d'abonnement sur vos jeux de données, vous devrez configurer au moins un
compte marchand pour votre domaine.

Ce compte marchand est un compte Stripe totalement indépendant de notre plateforme sur lequel vous avez la main et
pour lequel vous nous donnez l'autorisation de faire des actions en votre nom. Ces actions sont simples:

* créer et supprimer des formules d'abonnement
* abonner et désabonner des utilisateurs

Votre compte Stripe est lié à votre compte bancaire et vous permet d'encaisser les différents abonnements.

Configuration sur la plateforme
-------------------------------

Avant toute chose, il vous faut vous connecter à la page d'administration du domaine et accéder à la section concernant
la facturation.

.. image:: merchant-account--domain-setup.png

Nous vous demandons deux informations avant de vous permettre de connecter un compte Stripe: un nom pour le compte
marchand et un email de contact pour les abonnés.

Le nom sert uniquement à représenter le compte marchand dans notre interface. Il n'a pas besoin d'être le nom du compte
Stripe que vous allez connecter ni d'être le nom du compte bancaire sous-jacent.

Lorsque vous aurez des abonnés à vos formules d'abonnements, vous pourrez les contacter à travers notre interface. Ils
recevront un email avec votre message. L'email de contact sert d'adresse de réponse à cet email, de sorte que vos
abonnés puissent entretenir une discussion avec vous à la suite de votre message.

Une fois ces deux champs remplis, vous pouvez connecter un compte Stripe.

.. image:: merchant-account--form-filled.png

Votre compte Stripe
-------------------

En cliquant sur "Connecter un compte Stripe" vous serez redirigés sur le site de Stripe ou vous pourrez soit vous
connecter avec un compte existant soit créer un nouveau compte.

.. image:: merchant-account--stripe-form.png

Le long formulaire de création de compte vous permet de spécifier toutes les informations nécessaires au bon
fonctionnement de la facturation sur notre plateforme. N'hésitez pas à être le plus complet possible.

Une fois le formulaire rempli, après validation, vous serez redirigés vers votre domaine, où un message vous confirmera
que votre compte marchand a bien été configuré. Vous pourrez d'ailleurs le voir dans la liste des comptes marchands
disponibles.

.. image:: merchant-account--success.png

Notez que si vous tentez de connecter plusieurs fois le même compte, un message vous avertira que nous avons détecté
que celui-ci est déjà connecté.

.. image:: merchant-account--duplicate.png
