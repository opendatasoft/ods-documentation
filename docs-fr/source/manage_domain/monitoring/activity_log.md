# Activity Log

The activity log allows the domain administrator to monitor domain configuration activity.

To access the activity log, simply go to the *Domain > Monitoring > Activity log* page.

![Activity log](activity-log-en.jpg)

As in the API monitoring page, you can access the full activity log dataset by hitting the upper right link **See more**.

The activity log dataset contains the following fields.

<table>
<tr><th>Field name</th><th>Description</th></tr>
<tr><td>timestamp</td><td>Action timestamp</td></tr>
<tr><td>dataset_id</td><td>Id of the dataset if the action is relative to a specific dataset</td></tr>
<tr><td>user_id</td><td>Identifier of the event owner</td></tr>
<tr><td>action</td><td>Action name (one of <strong>publish_dataset</strong>,
    <strong>add_dataset</strong>, <strong>edit_dataset</strong>, <strong>delete_dataset</strong>)</td></tr>
</table>
