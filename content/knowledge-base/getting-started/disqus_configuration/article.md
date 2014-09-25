## Disqus Configuration

### For OpenDataSoft domain administrators

If you have a custom domain name for accessing the OpenDataSoft platform, replace in the below \<YOURDOMAIN\>.opendatasoft.com with your custom domain name.

To connect your Disqus account to the ODS Platform, follow the steps below:

1. Create a Disqus account at: https://disqus.com/admin/signup/.

2. Create a new site profile here: http://disqus.com/admin/create/.  
    a. Enter a site name (as you want)  
    b. Choose your Disqus URL (please keep in mind that this is your **shortname**)  
    c. Select the right category

2. Register a new application here: http://disqus.com/api/applications/register/.

3. Go to your application Dashboard: http://disqus.com/api/applications/.  
   Please note that the "Public Key" is your **Disqus API key**.  
   For security reasons, never share and never use the "Secret Key".

4. Go to your application details:  
    a. Now the URL looks like: http://disqus.com/api/applications/XXXX/ (XXXX is your application ID)  
    b. Click on the "settings" link (http://disqus.com/api/applications/XXXX/update/)  
    c. Add *\<YOURDOMAIN\>.opendatasoft.com* to the allowed domains

Once done, you can connect to the ODS Platform and look at the domain configuration: http://XXXX.opendatasoft.com/domain/.  
In the disqus integration section, copy and paste your disqus shortname and the API key.  
Don't forget to check "Enable Disqus in Explore".

Now, people can comments in the Disqus tab and you can manage all comments at this page: http://SHORTNAME.disqus.com/.

### For developers
The Disqus Web API is available here: http://disqus.com/api/docs/.  
Currently, we are using the **[threads/details](http://disqus.com/api/docs/threads/details/)** API to display the number of comments for a specific dataset.

#### Request
https://disqus.com/api/3.0/threads/details.json?api_key=XXXX&forum=SHORTNAME&thread=ident:DATASET

#### Output
json

    {    
        code: 0,
        response: {
            feed: "http://odspublic.disqus.com/arbres_remarquables_donnees_geographiques/latest.rss",
            canModerate: false,
            identifiers: [
            "arbres-remarquables-donnees-geographiques"
            ],
            dislikes: 0,
            likes: 0,
            message: "",
            id: "2571117995",
            createdAt: "2014-04-01T08:03:59",
            category: "2461023",
            author: "60044750",
            userScore: 0,
            isDeleted: false,
            isClosed: false,
            link: "http://public.ods.com:8000/explore/dataset/arbres-remarquables-donnees-geographiques/?tab=disqus",
            slug: "arbres_remarquables_donnees_geographiques",
            forum: "odspublic",
            clean_title: "Arbres remarquables - Données Géographiques",
            posts: 3,
            userSubscription: false,
            title: "Arbres remarquables - Données Géographiques",
            canPost: false,
            highlightedPost: null
        }
    }

The number of comments corresponds to: **response.posts**.  
Here there are 3 comments for the dataset "Arbres remarquables - Données Géographiques".