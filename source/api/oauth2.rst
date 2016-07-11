Using OAuth2 authorization
==========================

Overview
--------

OpenDataSoft implements the OAuth2 authorization flow, allowing third party application makers to access the data
hosted on a OpenDataSoft platform on behalf of a user while never having to deal with a password, thus avoiding any user
credential to be compromised.

The OpenDataSoft OAuth2 authorization flow is compliant with `RFC 6749 <http://tools.ietf.org/html/rfc6749>`_ and makes
use of Bearer Tokens in compliance with `RFC 6750 <http://tools.ietf.org/html/rfc6750>`_.

Application developers who want to use the OpenDataSoft APIs with OAuth2 must go through the following steps, which will
be explained in this article. They must first register their application with the OpenDataSoft platform. Secondly, they
must request approval from users. With that approval, they can request a Bearer Token. This token allows them to query
the OpenDataSoft platform APIs for a limited amount of time, after which they must refresh their Bearer Token.

Currently, applications are registered on a specific domain and can only access data on this domain.

Getting started
---------------

.. ifconfig:: language == 'en'

    .. image:: oauth2__applications--en.png
       :alt: OAuth2 applications management interface


.. ifconfig:: language == 'fr'

    .. image:: oauth2__applications--fr.png
       :alt: Interface de gestion des applications OAuth2



The first step to use the OAuth2 authorization flow is to register your application first. To do so, go to your account
page on the domain you want to register the application on. There, you will find a form prompting you for the following:

* Application name: the name of the application
* Type: can be either confidential or public. An application is confidential if it can keep information from a user,
  other applications are public. Typically, a web application running on its own server is confidential. Conversely a
  smartphone application is public, because the user has control over the running environment of the application.
* Redirection URL: The URL users will be redirected to after they have granted you permission to access their data.

You will then be awarded a client ID and a client secret.

Now that your application is registered, it is time to request an authorization grant from a user.

Getting an authorization grant
------------------------------

To get an authorization grant from a user, you will need to redirect them to `/oauth2/authorize/` with a few REST
parameters. The user will then be authenticated in the platform, and redirected to a page identifying your application
with the info you provided when you registered it, the list of scopes your application would like to access and
prompting them to grant your application to access their data. Once the user has accepted those terms, they will be
redirected to your application's redirection URL, with REST parameters describing your authorization grant.

The REST parameters you will need to supply when redirecting the user are the following:

* **client_id**: The client ID you were given when you registered your application.
* **redirect_uri**: The redirect URI you provided when you registered your application.
* **response_type**: The response type you provided when you registered your application. This should be set to "code"
* **scopes** *(optional)*: A list of requested scopes, space-separated (currently only "all" is supported)
* **state** *(optional)*: A random string.

Example (line breaks added for legibility):

.. code-block:: http

    GET /oauth2/authorize/?
        client_id=123456789&
        redirect_uri=http://example.com&
        response_type=code&
        state=ilovedata&
        scope=all HTTP/1.1

Please note that while the state parameter is not mandatory, we encourage you to provide one and check that it was given
back you you when you receive your authorization grant, for security reasons.

Your authorization grant will have these values:

* **code**: the 30-characters-long authorization code
* **state**: The random string you provided, that you can now check.

Example:

.. code-block:: http

    HTTP/1.0 302 FOUND
    Location: http://example.com?state=ilovedata&code=gKnAQc2yIfdz2mY25xxgpTY2uyG5Sv

Now that you have an authorization grant, it is time to convert it into a bearer token. Please note that your
authorization grant is only valid for an hour.

Converting an authorization grant to a bearer token
---------------------------------------------------

To receive your bearer token, you will need to convert your previously obtained authorization grant. To do so, you will
need to send a POST request to `/oauth2/token/` with the following parameters:

* **client_id**: The client ID you were given when you registered your application.
* **client_secret**: The client secret you were given when you registered your application.
* **grant_type**: The type of the authorization grant you were awarded. This should be set to "authorization_code".
* **code**: The 30-characters-long authorization code that was part of your authorization grant.
* **scopes**: The list of scopes you require access to. Please note that the scopes should all be within the scopes that
  your authorization grant gives you access to.
* **redirect_uri**: The redirect URI you provided when registering your application.
* **state** *(optional)*: A random string.

Example:

.. code-block:: http

    POST /oauth2/token/ HTTP/1.1

    client_id=cid&
        client_secret=csc&
        grant_type=authorization_code&
        code=GokshWxRFXmW0MaLHkDv5HrG6wieGs&
        scopes=all&
        redirect_uri=http://example.com&
        state=ilovedata

Alternatively, you can pass your client ID and client secret through the Authorization header

example:

.. code-block:: http

    POST /oauth2/token/ HTTP/1.1
    Authorization: Basic Y2lkOmNzYw==

    grant_type=authorization_code&
        code=GokshWxRFXmW0MaLHkDv5HrG6wieGs&
        scopes=all&
        redirect_uri=http://example.com&state=ilovedata

The response to this request will be the JSON representation of your bearer token, which contains the following values:

* **access_token**: the token that will authorize you to access the user's data.
* **expires_in**: the amount of time in seconds after which the bearer token will be made invalid.
* **token_type**: the type of the token. It will always be "Bearer"
* **state**: The random string you provided, that you can now check.
* **scope**: the list of scopes this authorization code allows you to claim
* **refresh_token**: the token that will allow you to obtain a new bearer token once this one expires


Example:

.. code-block:: http

    HTTP/1.0 200 OK
    Content-Type: application/json

    {
        "access_token": "9kxoTUYvSxnAiMpv008NBqRiqk5xWt",
        "expires_in": 3600,
        "token_type": "Bearer",
        "state": "ilovedata",
        "scope": "all",
        "refresh_token": "jFfDUcsK9zzNMs1zwczzJxGrimPtmf"
    }

Even though there is an expiration time on the bearer token, the refresh token contained in it stays valid until it is
used once, which means that you can request a new bearer token at any time after the expiry of your current token.

You are now all set to use your newly awarded bearer token!

Using the bearer token
----------------------

Once you have your bearer token, you can start using it to request data from our APIs. You can display your token in one
of three ways:

* In the API endpoint URL of your request, as a REST parameter
* In the Authorization header of your request
* In the body of your request

Example:

.. code-block:: http

    GET /api/end/point?access_token=9kxoTUYvSxnAiMpv008NBqRiqk5xWt HTTP/1.1

or

.. code-block:: http

    GET /api/end/point HTTP/1.1
    Authorization: Bearer: 9kxoTUYvSxnAiMpv008NBqRiqk5xWt

or

.. code-block:: http

    GET /api/end/point HTTP/1.1

    access_token=9kxoTUYvSxnAiMpv008NBqRiqk5xWt

After using your token for a bit, it will expire, and to continue accessing the data that you need, you will have to
refresh it.

Refreshing a bearer token
-------------------------

To refresh the bearer token, you must send a request to the ``/oauth2/token/`` endpoint, with the following REST
parameters:

* **client_id**: The client ID you were given when you registered your application.
* **client_secret**: The client secret you were given when you registered your application.
* **grant_type**: The type of the authorization grant you were awarded. This should be set to "refresh_token".
* **scopes**: The list of scopes you require access to. Please note that this list must match the one you provided when
  you converted your grant request to a bearer token.
* **refresh_token**: The refresh token included in your last bearer token.
* **state** *(optional)*: A random string.

Example:

.. code-block:: http

    POST /oauth2/token/ HTTP/1.1

    client_id=cid&
        client_secret=csc&
        grant_type=refresh_token&
        refresh_token=jFfDUcsK9zzNMs1zwczzJxGrimPtmf&
        scopes=all&
        redirect_uri=http://example.com&
        state=ilovedata

The response to this request will provide you with a new bearer token in the same way as when you obtained your first
token from converting your authorization grant.
