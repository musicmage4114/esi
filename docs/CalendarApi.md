# SwaggerClient::CalendarApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_calendar**](CalendarApi.md#get_character_calendar) | **GET** /characters/{character_id}/calendar/ | List calendar event summaries
[**get_calendar_event_by_id**](CalendarApi.md#get_calendar_event_by_id) | **GET** /characters/{character_id}/calendar/{event_id}/ | Get an event
[**respond_to_calendar_event**](CalendarApi.md#respond_to_calendar_event) | **PUT** /characters/{character_id}/calendar/{event_id}/ | Respond to an event


# **get_character_calendar**
> Array&lt;GetCharactersCharacterIdCalendar200Ok&gt; get_character_calendar(character_id, opts)

List calendar event summaries

Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/latest/characters/{character_id}/calendar/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CalendarApi.new

character_id = 56 # Integer | The character to retrieve events from

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  from_event: 56, # Integer | The event ID to retrieve events from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List calendar event summaries
  result = api_instance.get_character_calendar(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CalendarApi->get_character_calendar: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character to retrieve events from | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **from_event** | **Integer**| The event ID to retrieve events from | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdCalendar200Ok&gt;**](GetCharactersCharacterIdCalendar200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_calendar_event_by_id**
> GetCharactersCharacterIdCalendarEventIdOk get_calendar_event_by_id(character_id, event_id, opts)

Get an event

Get all the information for a specific event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/latest/characters/{character_id}/calendar/{event_id}/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CalendarApi.new

character_id = 56 # Integer | The character id requesting the event

event_id = 56 # Integer | The id of the event requested

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get an event
  result = api_instance.get_calendar_event_by_id(character_id, event_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CalendarApi->get_calendar_event_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character id requesting the event | 
 **event_id** | **Integer**| The id of the event requested | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdCalendarEventIdOk**](GetCharactersCharacterIdCalendarEventIdOk.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **respond_to_calendar_event**
> respond_to_calendar_event(character_id, event_id, response, opts)

Respond to an event

Set your response status to an event  ---  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/latest/characters/{character_id}/calendar/{event_id}/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CalendarApi.new

character_id = 56 # Integer | The character ID requesting the event

event_id = 56 # Integer | The ID of the event requested

response = SwaggerClient::PutCharactersCharacterIdCalendarEventIdResponse.new # PutCharactersCharacterIdCalendarEventIdResponse | The response value to set, overriding current value.

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Respond to an event
  api_instance.respond_to_calendar_event(character_id, event_id, response, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CalendarApi->respond_to_calendar_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The character ID requesting the event | 
 **event_id** | **Integer**| The ID of the event requested | 
 **response** | [**PutCharactersCharacterIdCalendarEventIdResponse**](PutCharactersCharacterIdCalendarEventIdResponse.md)| The response value to set, overriding current value. | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



