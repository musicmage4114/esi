# Esi::UserInterfaceApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set_autopilot_waypoint**](UserInterfaceApi.md#set_autopilot_waypoint) | **POST** /ui/autopilot/waypoint/ | Set Autopilot Waypoint
[**open_contract_window**](UserInterfaceApi.md#open_contract_window) | **POST** /ui/openwindow/contract/ | Open Contract Window
[**show_info_by_id**](UserInterfaceApi.md#show_info_by_id) | **POST** /ui/openwindow/information/ | Open Information Window
[**open_market_details**](UserInterfaceApi.md#open_market_details) | **POST** /ui/openwindow/marketdetails/ | Open Market Details
[**open_new_mail**](UserInterfaceApi.md#open_new_mail) | **POST** /ui/openwindow/newmail/ | Open New Mail Window


# **set_autopilot_waypoint**
> set_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, opts)

Set Autopilot Waypoint

Set a solar system as autopilot waypoint  ---  Alternate route: `/v2/ui/autopilot/waypoint/`  Alternate route: `/latest/ui/autopilot/waypoint/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UserInterfaceApi.new

add_to_beginning = false # BOOLEAN | Whether this solar system should be added to the beginning of all waypoints

clear_other_waypoints = false # BOOLEAN | Whether clean other waypoints beforing adding this one

destination_id = 789 # Integer | The destination to travel to, can be solar system, station or structure's id

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Set Autopilot Waypoint
  api_instance.set_autopilot_waypoint(add_to_beginning, clear_other_waypoints, destination_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling UserInterfaceApi->set_autopilot_waypoint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_to_beginning** | **BOOLEAN**| Whether this solar system should be added to the beginning of all waypoints | [default to false]
 **clear_other_waypoints** | **BOOLEAN**| Whether clean other waypoints beforing adding this one | [default to false]
 **destination_id** | **Integer**| The destination to travel to, can be solar system, station or structure&#39;s id | 
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



# **open_contract_window**
> open_contract_window(contract_id, opts)

Open Contract Window

Open the contract window inside the client  ---  Alternate route: `/v1/ui/openwindow/contract/`  Alternate route: `/legacy/ui/openwindow/contract/`  Alternate route: `/latest/ui/openwindow/contract/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UserInterfaceApi.new

contract_id = 56 # Integer | The contract to open

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Contract Window
  api_instance.open_contract_window(contract_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling UserInterfaceApi->open_contract_window: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| The contract to open | 
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



# **show_info_by_id**
> show_info_by_id(target_id, opts)

Open Information Window

Open the information window for a character, corporation or alliance inside the client  ---  Alternate route: `/v1/ui/openwindow/information/`  Alternate route: `/legacy/ui/openwindow/information/`  Alternate route: `/latest/ui/openwindow/information/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UserInterfaceApi.new

target_id = 56 # Integer | The target to open

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Information Window
  api_instance.show_info_by_id(target_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling UserInterfaceApi->show_info_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_id** | **Integer**| The target to open | 
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



# **open_market_details**
> open_market_details(type_id, opts)

Open Market Details

Open the market details window for a specific typeID inside the client  ---  Alternate route: `/v1/ui/openwindow/marketdetails/`  Alternate route: `/legacy/ui/openwindow/marketdetails/`  Alternate route: `/latest/ui/openwindow/marketdetails/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UserInterfaceApi.new

type_id = 56 # Integer | The item type to open in market window

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open Market Details
  api_instance.open_market_details(type_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling UserInterfaceApi->open_market_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **Integer**| The item type to open in market window | 
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



# **open_new_mail**
> open_new_mail(new_mail, opts)

Open New Mail Window

Open the New Mail window, according to settings from the request if applicable  ---  Alternate route: `/v1/ui/openwindow/newmail/`  Alternate route: `/legacy/ui/openwindow/newmail/`  Alternate route: `/latest/ui/openwindow/newmail/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UserInterfaceApi.new

new_mail = Esi::NewEvemail.new # NewEvemail | The details of mail to create

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Open New Mail Window
  api_instance.open_new_mail(new_mail, opts)
rescue Esi::ApiError => e
  puts "Exception when calling UserInterfaceApi->open_new_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_mail** | [**NewEvemail**](NewEvemail.md)| The details of mail to create | 
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



