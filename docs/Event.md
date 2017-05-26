# Esi::Event

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **DateTime** | date string | Date and time event will start.
**duration** | **Integer** | Length in minutes | Duration of the event in minutes.  Minimum value is 0.  Maximum value is 1440.
**event_id** | **Integer** | event_id integer | Unique ID of event.
**importance** | **Integer** | importance integer | 1 (TRUE) if the event is marked "important".  0 (FALSE) otherwise.
**owner_id** | **Integer** | owner_id integer | ID of the character, corporation or alliance that created and owns the event.
**owner_name** | **String** | owner_name string | Name of character, corporation or alliance that created the event.  This field is blank when ownerID is 1 (CCP).
**owner_type** | **String** | owner_type string | character, corporation, or alliance
**response** | **String** | response string | Character's response to event invitation.  One of "Undecided", "Accepted", "Declined" or "Tentative".
**text** | **String** | text string | Event description.
**title** | **String** | title string | Event title.


