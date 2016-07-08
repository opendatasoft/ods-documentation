Configuring Disqus
==================

.. ifconfig:: language == 'en'

    .. image:: disqus__configuration--en.png
       :alt: Disqus Configuration

.. ifconfig:: language == 'fr'

    .. image:: disqus__configuration--fr.png
       :alt: Configuration de Disqus

If you have a custom domain name for accessing the OpenDataSoft platform, replace in the below 
\<YOURDOMAIN\>.opendatasoft.com with your custom domain name.

To connect your Disqus account to the ODS Platform, follow the steps below:

1. Create a Disqus account at: `<https://disqus.com/admin/signup/>`_.

2. Create a new site profile here: `<http://disqus.com/admin/create/>`_.  
    - Enter a site name (as you want)  
    - Choose your Disqus URL (please keep in mind that this is your **shortname**)  
    - Select the right category

2. Register a new application here: `<http://disqus.com/api/applications/register/>`_.

3. Go to your application Dashboard: `<http://disqus.com/api/applications/>`_.
   Please note that the "Public Key" is your **Disqus API key**.
   For security reasons, never share and never use the "Secret Key".

4. Go to your application details:  
    - Now the URL looks like: http://disqus.com/api/applications/XXXX/ (XXXX is your application ID)  
    - Click on the "settings" link (http://disqus.com/api/applications/XXXX/update/)  
    - Add *\<YOURDOMAIN\>.opendatasoft.com* to the allowed domains

Once done, you can connect to the ODS Platform and look at the domain configuration: 
http://XXXX.opendatasoft.com/domain/.
In the Disqus integration section, copy and paste your disqus shortname and the API key.  
Don't forget to check "Enable Disqus in Explore".

Now, people can comments in the Disqus tab and you can manage all comments at this page: http://SHORTNAME.disqus.com/.
