The activity log allows the domain administrator to monitor domain configuration activity.

To access the activity log, simply go to the *Domain > Monitoring > Activity log* page. 

![Activity log](activity-log-en.jpg)

As in the API monitoring page, you can access the full activity log dataset by hitting the upper right link **See more**.

The activity log dataset contains the following fields.

Field name | Description
---------- | -----------
timestamp | Action timestamp
dataset_id | Id of the dataset if the action is relative to a specific dataset
user_id | Identifier of the event owner
action | Action name (one of **publish_dataset**, **add_dataset**, **edit_dataset**, **delete_dataset**)