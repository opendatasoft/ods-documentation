Creating a new subdomain
========================

Subdomains management is granted to users which have the *Manage all subdomains* permission. This permission can be given to any user by the portal administrators (those users having the *Edit domain properties* permission).

.. ifconfig:: language == 'en'

    .. figure:: subdomains__permissions--en.jpg
        :alt: Subdomains management permission
        :width: 400px
        :align: center

        Subdomains management permission

Users with this permission will see a *Subdomains* menu in the left control pane. Simply click this menu item to access the subdomains management section.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__menu--en.jpg
        :alt: Subdomains menu
        :width: 200px
        :align: center

        Access subdomains configuration screen

The maximum number of subdomains you can create is limited and depends on your OpenDataSoft's contract. To create a new subdomain, simply hit the *Create a new subdomain* link and fill in the following information:

* **Domain identifier**: the identifier of your subdomain.

  The real address of your domain will thus be: <Subdomain Identifier>-<Domain Identifier>.opendatasoft.com. For instance, if you own an OpenDataSoft domain named **mydomain** (that can be accessed at **mydomain.opendatasoft.com**) and if you create a subdomain named **test**, the subdomain full address will be: **test-mydomain.opendatasoft.com**.

  Of course, like with domains, you can contact the OpenDataSoft's support to get your subdomains DNS customized, see :doc:`Customizing your domain URL</configuring_portal/custom_urls>` for more details.

* **Owner's email address**: the email address of the subdomain administrator.

  This email address does not have to belong to a user already having an OpenDataSoft account. In which case, the OpenDataSoft platform will automatically initiate the account creation procedure.

  The owner is granted full administrative privilege over the newly created subdomain. 

.. ifconfig:: language == 'en'

    .. figure:: subdomains__creation--en.jpg
        :alt: Subdomains creation
        :width: 600px
        :align: center

        Create a subdomain

Once created, the subdomain is displayed in the subdomains list, along with some information related to its current quotas.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__created--en.jpg
        :alt: Subdomains created
        :width: 600px
        :align: center

        The subdomain has been created