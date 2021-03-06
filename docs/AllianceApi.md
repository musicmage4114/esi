# Esi::AllianceApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_alliances**](AllianceApi.md#get_alliances) | **GET** /alliances/ | List all alliances
[**get_alliance_by_id**](AllianceApi.md#get_alliance_by_id) | **GET** /alliances/{alliance_id}/ | Get alliance information
[**get_alliance_corporations**](AllianceApi.md#get_alliance_corporations) | **GET** /alliances/{alliance_id}/corporations/ | List alliance&#39;s corporations
[**get_alliance_icon**](AllianceApi.md#get_alliance_icon) | **GET** /alliances/{alliance_id}/icons/ | Get alliance icon
[**get_alliance_name**](AllianceApi.md#get_alliance_name) | **GET** /alliances/names/ | Get alliance names


# **get_alliances**
> Array&lt;Integer&gt; get_alliances(opts)

List all alliances

List all active player alliances  ---  Alternate route: `/v1/alliances/`  Alternate route: `/latest/alliances/`  Alternate route: `/legacy/alliances/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::AllianceApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List all alliances
  result = api_instance.get_alliances(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliance_by_id**
> Alliance get_alliance_by_id(alliance_id, opts)

Get alliance information

Public information about an alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::AllianceApi.new

alliance_id = 56 # Integer | An Eve alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance information
  result = api_instance.get_alliance_by_id(alliance_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling AllianceApi->get_alliance_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An Eve alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Alliance**](Alliance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliance_corporations**
> Array&lt;Integer&gt; get_alliance_corporations(alliance_id, opts)

List alliance's corporations

List all current member corporations of an alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/corporations/`  Alternate route: `/latest/alliances/{alliance_id}/corporations/`  Alternate route: `/legacy/alliances/{alliance_id}/corporations/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List alliance's corporations
  result = api_instance.get_alliance_corporations(alliance_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling AllianceApi->get_alliance_corporations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliance_icon**
> AllianceIcon get_alliance_icon(alliance_id, opts)

Get alliance icon

Get the icon urls for a alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/icons/`  Alternate route: `/legacy/alliances/{alliance_id}/icons/`  Alternate route: `/latest/alliances/{alliance_id}/icons/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance icon
  result = api_instance.get_alliance_icon(alliance_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling AllianceApi->get_alliance_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**AllianceIcon**](AllianceIcon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliance_name**
> Array&lt;AllianceName&gt; get_alliance_name(alliance_ids, opts)

Get alliance names

Resolve a set of alliance IDs to alliance names  ---  Alternate route: `/v1/alliances/names/`  Alternate route: `/legacy/alliances/names/`  Alternate route: `/latest/alliances/names/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::AllianceApi.new

alliance_ids = [56] # Array<Integer> | A comma separated list of alliance IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance names
  result = api_instance.get_alliance_name(alliance_ids, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling AllianceApi->get_alliance_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of alliance IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;AllianceName&gt;**](AllianceName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



