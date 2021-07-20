Displaying legals
=================

Cookie banner
-------------

A cookie banner is a pop-up that informs first-time visitors that your portal uses cookies. Before visitors start using your portal, the cookie banner also asks for their consent to use certain types of cookies that track visitor data. 

If you toggled on the **Require user consent** in the **Configuration** > **Tracking** section of the back office, the cookie banner is automatically displayed to first-time visitors.

On Opendatasoft portals, visitors' choices are stored for six months. A link is also displayed in your portal's footer so that visitors can manage their cookie preferences at any time.

Legal compliance
~~~~~~~~~~~~~~~~

By default, the platform only uses functional cookies to enable core platform functionality and are therefore always enabled. These cookies do not involve obtaining visitors' consent to comply with certain privacy laws such as the EU General Data Protection Regulation (GDPR).

Enabling the cookie banner
~~~~~~~~~~~~~~~~~~~~~~~~~~

You can enable a cookie banner to comply with certain privacy laws such as the EU General Data Protection Regulation (GDPR).

  1. In the back office, go to **Configuration** > **Legals**.
  2. Toggle on **Allow the cookie banner to be displayed to your users.**
  3. Click **Save**. 
  4. In the back office, go to **Look & feel** > **Theme**.
  5. Select the **Footer** tab.
  6. Add the ``##manage-cookies##`` placeholder to the footer configuration.
  7. Click **Save**.
  8. Click **Make live** to apply the configuration to your portal.

Your portal will display the cookie banner upon visitors' first visit. Visitors will be able to activate some cookies rather than others.
A link will also be displayed in your portal's footer so that visitors can manage their cookie preferences at any time.


Portal Terms and Conditions, Privacy Policy, and Cookies Policy
---------------------------------------------------------------

.. attention::

   It is a legal obligation to specify the Terms and Conditions, the Privacy Policy, and the Cookies Policy of an Opendatasoft domain. Since there are none by default, each Opendatasoft domain administrator must specify these conditions of use, especially before opening the portal to all users.

Accessing the Portal Terms and Conditions, Privacy Policy, and Cookies Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. In the back office, go to **Configuration** > **Legals**.
2. Go to **Portal Terms and Conditions, Privacy Policy and Cookies Policy** section.

.. ifconfig:: language == 'en'

   .. image:: images/legals__cgu-en.png
      :alt: Portal Terms and Conditions, Privacy Policy and Cookies Policy

.. ifconfig:: language == 'fr'

   .. image:: images/legals__cgu-fr.png
      :alt: Conditions d'utilisation du portail, politique de confidentialité et charte cookies

From this section, you can add the Terms and Conditions, Privacy Policy, and Cookies Policy on the domain, using links to pages hosted on a different website or directly entering custom text in the related boxes.

For more information, see :ref:`linked-conditions` and :ref:`written-conditions`.

.. _linked-conditions:

Using links to pages hosted on a different website
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the Terms and Conditions, Privacy Policy, and Cookies Policy are already hosted on another website, you can use links to these pages.

1. From the **Portal Terms and Conditions, Privacy Policy and Cookies Policy section**, click **Use links to pages hosted on a different website**.
2. If the domain is available in more than one language, choose whether to display the conditions of use in only one language or to make them available in several languages:
     * Toggle on **Use the same texts for all languages** to use the same documents for all available languages. If the Terms and Conditions, Privacy Policy, and Cookies Policy are only written and available in the language of the portal country, for example, English, no matter the language selected by the user on the portal, the conditions of use will be displayed in English.
     * Toggle off **Use the same texts for all languages** to specify different documents depending on the language. In that case, all available languages are displayed in the form of clickable grey boxes containing the code of each available language. The language codes are preceded by |icon-attention| if all documents have not been specified.

.. admonition:: Important
   :class: important

   If you toggle off **Use the same texts for all languages**, repeat the following steps for each language. There must not be any |icon-attention| left.

3. In the first text box, paste the link leading to the Terms & Conditions.
4. In the second text box, paste the link leading to the Privacy Policy.
5. In the second text box, paste the link leading to the Cookies policy.

.. _written-conditions:

Writing custom Terms and Conditions, Privacy Policy, and Cookies Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can directly write or paste the Terms and Conditions, Privacy Policy, and Cookies Policy of use on the Opendatasoft platform.

1. From the **Portal Terms and Conditions, Privacy Policy and Cookies Policy section**, click **Write custom Terms and Conditions, Privacy Policy and Cookies Policy**.

2. If the domain is available in more than one language, choose whether to display the conditions of use in only one language or to make them available in several languages:
     * Toggle on **Use the same texts for all languages** to use the same documents for all available languages. If the Terms and Conditions, Privacy Policy and Cookies Policy are only written and available in the language of the portal country, for example, English, no matter the language selected by the user on the portal, the conditions of use will be displayed in English.
     * Toggle off **Use the same texts for all languages** to specify different documents depending on the language. In that case, all available languages are displayed in the form of clickable grey boxes containing the code of each available language. The language codes are preceded by |icon-attention| if all documents have not been specified.

.. admonition:: Important
   :class: important

   If you toggle off **Use the same texts for all languages**, repeat the following steps for each language. There must not be any |icon-attention| left.

3. From the **Conditions** tab, write or paste the Terms and Conditions.
4. From the **Privacy Policy** tab, write or paste the Privacy Policy.
5. From the **Cookies policy** tab, write or paste the Cookies policy.

.. admonition:: Note
   :class: note

   Fill-in Terms & Conditions and Privacy Policy templates are available, based on the French law (in French and English) and the US law (in English) only.
   
   Click the **Use a template** button under the box to select a template and enter the required information. You will be able to edit the generated conditions if needed.

.. _licenses-config:

Licenses
--------

When configuring the metadata for a dataset in the Information tab, it is important to define the license that explicitly specifies how others can use the data.

Reusers - external developers, data analysts, etc. - are more likely to work with properly licensed data than contacting data producers and ask them for more information.

Work with your legal team to find the most appropriate license for your data.

Configure licenses
~~~~~~~~~~~~~~~~~~

In the back office, you can configure the licenses available when adding the metadata for a dataset.

1. From the left menu under Configuration, select Legals.
2. Go to the Licenses area.
   
   .. image:: images/license_configuration.png

3. In the Labels column, add a license label for each language available on the domain. The label will be displayed in the drop-down selection in the back office and the Information tab of the published dataset in the front office.
4. Click the Add license button.
5. In the URLs column, add the URL to the official website of the defined license to find more information about that license. You can only add one URL per language available on the domain.
  
  .. admonition:: Note
     :class: note
     
     Adding a URL for a license is optional, but it is good practice to provide an official definition of the license to make the data easily reusable.
     If you have a custom license, you can add the URL to a page hosted on your corporate website or your Opendatasoft platform.

6. Click the Save button in the top right corner of the page.

To delete a license, click on the |icon-trash| button.

Default licenses
~~~~~~~~~~~~~~~~

By default, a set of licenses, including country-specific licenses, is available.

The following licenses are available on all portals:

.. list-table::
   :header-rows: 1

   * * Label
     * URL
     * Description

   * * Public domain
     * `<https://en.wikipedia.org/wiki/Public_domain>`_
     * The material is freely available. It can be used without any permission.

   * * Open Database License
     * `<https://opendatacommons.org/licenses/odbl/1-0/>`_
     * The database falls under the Open Data Commons. This license grants you with "a worldwide, royalty-free, non-exclusive, terminable license to Use the Database". If you publicly use any adapted version of this database, or works produced from an adapted database, you must also offer that adapted database under the ODbL.

   * * CC0 1.0
     * `<https://creativecommons.org/publicdomain/zero/1.0/>`_
     * The material licensed under CC0 1.0 was released to the public domain by its author. You can use it without any permissions.

   * * CC BY 4.0
     * `<https://creativecommons.org/licenses/by/4.0/>`_
     * You can copy, redistribute, remix, transform, and build upon the material for any purpose, even commercially, but you must give appropriate credit to the original author.

   * * CC BY-SA 4.0
     * `<https://creativecommons.org/licenses/by-sa/4.0/>`_
     * You can copy, redistribute, remix, transform, and build upon the material for any purpose, even commercially, but you must give appropriate credit to the original author. You must also release your contributions under the same license as the original material.

   * * CC BY-NC 4.0
     * `<https://creativecommons.org/licenses/by-nc/4.0/>`_
     * You can copy, redistribute, remix, transform, and build upon the material for non-commercial purposes, but you must give appropriate credit to the original author.

   * * CC BY-NC-SA 4.0
     * `<https://creativecommons.org/licenses/by-nc-sa/4.0/>`_
     * You can copy, redistribute, remix, transform, and build upon the material for non-commercial purposes, but you must give appropriate credit to the original author. You must also release your contributions under the same license as the original material.


.. |icon-attention| image:: images/icon_attention.png
    :width: 20px
    :height: 22px

.. |icon-trash| image:: images/icon_trash.png
    :width: 33px
    :height: 32px
