# SwaggerClient::ClonesApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_clones**](ClonesApi.md#get_clones) | **GET** /characters/{character_id}/clones/ | Get clones


# **get_clones**
> CloneInfo get_clones(character_id, opts)

Get clones

A list of the character's clones  ---  Alternate route: `/v2/characters/{character_id}/clones/`  Alternate route: `/latest/characters/{character_id}/clones/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ClonesApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get clones
  result = api_instance.get_clones(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClonesApi->get_clones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**CloneInfo**](CloneInfo.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



