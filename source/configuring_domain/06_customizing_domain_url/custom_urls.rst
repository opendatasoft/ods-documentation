Customizing your domain URL
===========================

A new Opendatasoft domain has one URL, in the form ``<domain>.opendatasoft.com``.

As the domain URL is a very important tool for discoverability, branding and, ease of access, there will often be a need to customize this URL. As such, the Opendatasoft platform allows for adding additional names to a domain. These customization options are currently not exposed in the back office. They must be requested by using the support form in the back office.

In the following, the domain *name* will represent the first base name of an Opendatasoft domain, and we will call any additional names *aliases*. The names are actually the host part of the URLs used to access the domain.

Customer-provided DNS aliases
-----------------------------

It is also possible to change the base URL of an Opendatasoft domain to a custom domain name whose authoritative DNS server one controls. For instance, a company called "Example" has an Opendatasoft domain named ``example``. Its main URL is ``example.opendatasoft.com``, but this customer might want to set up their domain in order to use the alias ``data.example.com``.

This can be done in 2 steps:

1. Create a DNS record of the ``CNAME`` type for the desired name with the default name of one's Opendatasoft domain as a value.

.. attention::
    A trailing dot after a DNS name means an absolute name, instead of a relative one. In DNS configuration, names are usually relative by default, so ``data.example.com`` would actually mean ``data.example.com.example.com.``, which is generally not wanted.

    The DNS record for the above example would look like this: ``data.example.com. IN CNAME example.opendatasoft.com.``

    If one's DNS provider uses relative names, it can look like this: ``data IN CNAME example.opendatasoft.com.``

.. tip::
    One's DNS provider will usually have documentation explaining how to set up custom entries using their interface.

2. The new name must be registered as an alias of the main domain on the Opendatasoft platform. To do so, please contact the Opendatasoft support by using the support form in the back office.

Any number of distinct DNS names can be added to an Opendatasoft domain. Though all domain names and aliases can be used to access the domain simultaneously, the first alias will be used by default for URLs generated to access the site from outside (in a notification email for example). User login sessions are also specific to a domain name, so it is possible for a user to be authenticated when accessing a domain via one alias and unauthenticated (anonymous) on another alias or the main name.

.. warning::
    Some DNS providers offer web redirections as a means to change a site's URL. However, a web redirection is not the same as a DNS CNAME and cannot be used to customize an Opendatasoft domain's URL.

.. important::
    ``A`` or ``AAAA`` types records are not supported by the Opendatasoft platform as the IP address of one's domain is susceptible to change.

HTTPS and TLS (SSL) certificates
--------------------------------

.. image:: images/custom_urls__green-lock--en.png
    :alt: Connections to Opendatasoft are private.

HTTPS is a widely used protocol that aims at ensuring the privacy and integrity of the exchanges between a website and its users by providing HTTP over a secure communication layer. For these safety and integrity reasons, the Opendatasoft platform enforces the use of HTTPS throughout its services. As such, requests made to Opendatasoft domains and all their aliases are HTTPS-enabled. TLS is the actual protocol used to secure HTTPS today, which replaced the original, deprecated SSL protocol.

However, if one chose to use a custom domain name (``data.example.com``), the TLS certificate will be generated by Opendatasoft on one's behalf using `Let's Encrypt <https://letsencrypt.org/>`_'s services. Certificate generation and renewal are handled by Opendatasoft transparently. The renewal process is completely automated, as long as the DNS entry is set up and stays valid. Let's Encrypt certificates provide the same security level as any other Domain-Validated TLS certificates, and their short lifecycle (3 months) ensures a constantly updated security level. Let's Encrypt certificates are free of charge for Opendatasoft customers.

.. admonition:: Note
   :class: note

   If the configuration of one's own DNS includes a CAA entry (Certificate Authority Authorization), it will be necessary to add Let's Encrypt to the list of authorized CAs. The required identifier is ``letsencrypt.org``.

Language handling
-----------------

Suppose one has multiple languages on the Opendatasoft domain and uses language-specific domain aliases. In that case, one can request each alias to be linked to a specific language. For instance, if there are 2 aliases, data.example.co.uk and daten.example.de, it can be requested that users accessing the domain through the first alias be served English content; and those accessing it through the second alias be served german content by default. Users can then switch language as usual.
