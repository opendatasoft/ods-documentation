Contact form
============

This widget inserts a form that users can use to contact the domain's administrators. It uses reCaptcha to make sure
anonymous users cannot spam the administrators.

.. ifconfig:: language == 'en'

   .. image:: integrate_content__contact-form--en.png
     :alt: Contact form

.. ifconfig:: language == 'fr'

   .. image:: integrate_content__contact-form--fr.png
     :alt: Formulaire de contact

.. list-table::
   :header-rows: 1

   * * Parameter
     * Type
     * Description
   * * ``page-id`` **required**
     * string
     * The slug of the current page so that administrators know where the request came from.
   * * ``form-disabled``
     * boolean (default: false)
     * Specify whether to disable (that is prevent data input and submission) the contact form or not.
   * * ``logged-in``
     * boolean (default: autodetected)
     * Specify whether the current user is logged in or not. If true, the recaptcha is not displayed.
   * * ``name-label``
     * string (default: `Your name`)
     * Specify the label displayed in front of the name field.
   * * ``email-label``
     * string (default: `Email`)
     * Specify the label displayed in front of the email field.
   * * ``message-label``
     * string (default: `Message`)
     * Specify the label displayed in front of the message field.