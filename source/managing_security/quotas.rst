Managing quotas
===============

A quota is an upper limit you put on a entity (your domain, group or user) to regulate its use of the platform.

There are 3 types of quotas:

Maximum number of requests per day
----------------------------------
Limits the number of API calls (both direct and through browsing the portal) an user can make per day

Anonymous requests
~~~~~~~~~~~~~~~~~~
Anonymous (non authenticated) users are limited by quotas too.
This is intended to be a security measure, to ensure that a sudden increase of anonymous users does not exhaust your entire quotas.

Two quotas apply:

1. Max requests made by all anonymous users
2. Max requests for a single anonymous user identified by their IP address

These quotas can be configured in the portal's security configuration page.

Maximum number of datasets
--------------------------
Limits the number of datasets the user can create (relevant only to the users with the 'Create datasets' permission)


Maximum number of records per dataset
-------------------------------------

Limits the maximum size of each of the datasets the user can publish


For a given user, a quota can be defined at several levels: a default value set for all users on the portal's security configuration page, values set on each of the user's groups and the value set directly on the user using the form below.
The effective value is then defined as:

1. If there is a user-level defined value: this value is used.
2. If no user-level value is defined, but there is at least a group-level value: the maximum of all of the user's groups' values is used.
3. If not user-level value is defined and no group-level value is defined: the default value for the portal is used.

NB: if the computed value is higher than what the license (i.e. the values defined in your OpenDataSoft contract) allows, then the license value is used.
