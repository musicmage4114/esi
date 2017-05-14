# SwaggerClient::AssetsApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_assets**](AssetsApi.md#get_character_assets) | **GET** /characters/{character_id}/assets/ | Get character assets


# **get_character_assets**
> Array&lt;CharacterAsset&gt; get_character_assets(character_id, opts)

Get character assets

Return a list of the characters assets  ---  Alternate route: `/v1/characters/{character_id}/assets/`  Alternate route: `/legacy/characters/{character_id}/assets/`  Alternate route: `/latest/characters/{character_id}/assets/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AssetsApi.new

character_id = 56 # Integer | Character id of the target character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character assets
  result = api_instance.get_character_assets(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AssetsApi->get_character_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| Character id of the target character | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;CharacterAsset&gt;**](CharacterAsset.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



