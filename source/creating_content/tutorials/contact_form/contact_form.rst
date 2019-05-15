Contact form
============

This widget inserts a form that users can use to contact the domain's administrators. It uses reCaptcha to make sure
anonymous users cannot spam the administrators.

.. localizedimage:: images/integrate_content__contact-form.png
     :alt: Contact form

.. list-table::
   :header-rows: 1

   * * Parameter
     * Type
     * Description
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
   * * ``additional-fields``
     * Array of field objects

       (default: `[]`)
     * Specify a list of fields to be inserted between the `email` and the `message` inputs.

       Each field must contain the following properties

       * ``id``: unique lowercase string without special characters
       * ``label``: unique string
       * ``name``: unique lowercase string without special characters
       * ``type``: one of 'text' or 'choice'
       * ``choices``: to be set if type is 'choice' only. Array of unique strings.
       * ``required``: boolean

Full example
------------

.. code-block:: html

   <ods-page-contact-form name-label="Your name"
                          email-label="Email address"
                          message-label="Your message"
                          additional-fields="[
                                               {
                                                 id: 'subject',
                                                 name: 'subject',
                                                 label: 'Subject',
                                                 type: 'text',
                                                 required: true,
                                               },
                                               {
                                                 id: 'category',
                                                 name: 'category',
                                                 label: 'Category',
                                                 type: 'choice',
                                                 choices: [
                                                   'Question about my account',
                                                   'Question about a dataset',
                                                   'Request for new dataset'
                                                 ],
                                                 required: true,
                                               }
                                            ]"></ods-page-contact-form>

.. localizedimage:: images/contact_form_full-example.png
     :alt: Full example of customized contact form
