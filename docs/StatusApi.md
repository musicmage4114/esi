# SwaggerClient::StatusApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_server_status**](StatusApi.md#get_server_status) | **GET** /status/ | Retrieve the uptime and player counts


# **get_server_status**
> ServerStatus get_server_status(opts)

Retrieve the uptime and player counts

EVE Server status  ---  Alternate route: `/v1/status/`  Alternate route: `/legacy/status/`  Alternate route: `/latest/status/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::StatusApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Retrieve the uptime and player counts
  result = api_instance.get_server_status(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StatusApi->get_server_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**ServerStatus**](ServerStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



