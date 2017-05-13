# SwaggerClient::WarsApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_wars**](WarsApi.md#get_wars) | **GET** /wars/ | List wars
[**get_war_by_id**](WarsApi.md#get_war_by_id) | **GET** /wars/{war_id}/ | Get war information
[**get_war_killmails**](WarsApi.md#get_war_killmails) | **GET** /wars/{war_id}/killmails/ | List kills for a war


# **get_wars**
> Array&lt;Integer&gt; get_wars(opts)

List wars

Return a list of wars  ---  Alternate route: `/v1/wars/`  Alternate route: `/legacy/wars/`  Alternate route: `/latest/wars/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WarsApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  max_war_id: 56, # Integer | Only return wars with ID smaller than this.
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List wars
  result = api_instance.get_wars(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WarsApi->get_wars: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **max_war_id** | **Integer**| Only return wars with ID smaller than this. | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_war_by_id**
> GetWarsWarIdOk get_war_by_id(war_id, opts)

Get war information

Return details about a war  ---  Alternate route: `/v1/wars/{war_id}/`  Alternate route: `/legacy/wars/{war_id}/`  Alternate route: `/latest/wars/{war_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WarsApi.new

war_id = 56 # Integer | ID for a war

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get war information
  result = api_instance.get_war_by_id(war_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WarsApi->get_war_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **war_id** | **Integer**| ID for a war | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetWarsWarIdOk**](GetWarsWarIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_war_killmails**
> Array&lt;GetWarsWarIdKillmails200Ok&gt; get_war_killmails(war_id, opts)

List kills for a war

Return a list of kills related to a war  ---  Alternate route: `/v1/wars/{war_id}/killmails/`  Alternate route: `/legacy/wars/{war_id}/killmails/`  Alternate route: `/latest/wars/{war_id}/killmails/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WarsApi.new

war_id = 56 # Integer | A valid war ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page to query, starting at 1, 2000 killmails per page.
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List kills for a war
  result = api_instance.get_war_killmails(war_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WarsApi->get_war_killmails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **war_id** | **Integer**| A valid war ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page to query, starting at 1, 2000 killmails per page. | [optional] [default to 1]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetWarsWarIdKillmails200Ok&gt;**](GetWarsWarIdKillmails200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



