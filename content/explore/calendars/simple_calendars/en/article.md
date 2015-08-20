The OpenDataSoft platform lets you easily create calendar views from your published datasets.

![A calendar built from a dataset containing all events from OpenAgenda](calendar_result_en.png)
_A calendar built from a dataset containing all events from OpenAgenda_

## Datasets requirements

For the calendar view, each record of your dataset is a different event. These events must contain a start time, an end time and a title. Which means your dataset must have two datetime fields and a text field for the calendar view to be available.

![2 fields set as datetime](calendar_processing_settings_en.png)
_2 fields set as datetime_

Records without titles will be displayed on the calendar as titleless events, but missing either the start or end time will cause the view to simply ignore the record.

### Full day events

Though very simple, the "two datetime fields and a text field" requirement forces you to setup full day events as events starting at 12AM on the given day and finishing a second before midnight on the same day (00:00:00 to 23:59:59).

## Configuration

### Enabling the calendar view

Once you have configured two of your dataset's fields as datetimes and another field as text, you'll see the calendar tab become available.

![Calendar tab unavailable](calendar_tab_unavailable_en.png)
_Calendar tab unavailable_

![Calendar tab available](calendar_tab_available_en.png)
_Calendar tab available_

It doesn't mean that your dataset is fully configured though. The view is available but not enabled by default. You'll have to manually enable it.

![This checkbox will enable the calendar view](calendar_checkbox_en.png)
_This checkbox will enable the calendar view_

### Setting up events' fields

Once the calendar is enabled, you'll need to make sure the events' fields are well configured. You'll see that the first text field has been selected for the title, the first datetime for the start time and the second datetime for the end time. You may have multiple other text/datetime fields in your dataset, select here which one determine the events' properties.

This is also where you'll be able to select the events' color.

![Default configuration for my calendar. The event's fields are pre-selected but not correct.](calendar_event_default_settings_en.png)
_Default configuration for my calendar. The event's fields are pre-selected but not correct._

![Corrected settings](calendar_event_settings_en.png)
_Corrected settings_

### Setting up the tooltip

In the calendar view, a click on a event will bring forward a tooltip containing more information about the events. You can of course configure which fields will appear in the tooltip and their relative order. A live preview is available on the right side.

![Setting up the tooltip](calendar_tooltip_settings_en.png)
_Setting up the tooltip_

For each of the tooltip's fields, the 3 following actions are available :

![Tooltip's fields' actions](calendar_tooltip_actions.png)

* Drag and drop to move field within tooltip
* Click to remove field from tooltip
* Click to add field to tooltip

![The associated live preview](calendar_tooltip_preview_en.png)
_The associated live preview_

## Sharing

Once your dataset is correctly setup and published, you can of course share this calendar with anyone having the rights to view the calendar.

To do so, you can always copy/paste the url from your browser's address bar, but you can also use any of the 3 options offered below the calendar itself.

1. Share the url
![The 3 sharing options, with first and foremost the url](calendar_share_en.png)
2. Code snippet to embed the view inside any other website
![Embed this code into any other page to display your calendar there](calendar_embed_en.png)
3. Code snippet to include in any of your dashboard or page on the platform.
![Copy this code to one your dashboard on the platform](calendar_widget_en.png)
