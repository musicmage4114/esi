# SwaggerClient::FittingsApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_character_fitting**](FittingsApi.md#delete_character_fitting) | **DELETE** /characters/{character_id}/fittings/{fitting_id}/ | Delete fitting
[**get_character_fittings**](FittingsApi.md#get_character_fittings) | **GET** /characters/{character_id}/fittings/ | Get fittings
[**add_character_fitting**](FittingsApi.md#add_character_fitting) | **POST** /characters/{character_id}/fittings/ | Create fitting


# **delete_character_fitting**
> delete_character_fitting(character_id, fitting_id, opts)

Delete fitting

Delete a fitting from a character  ---  Alternate route: `/v1/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/legacy/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/latest/characters/{character_id}/fittings/{fitting_id}/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FittingsApi.new

character_id = 56 # Integer | ID for a character

fitting_id = 56 # Integer | ID for a fitting of this character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fitting
  api_instance.delete_character_fitting(character_id, fitting_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FittingsApi->delete_character_fitting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| ID for a character | 
 **fitting_id** | **Integer**| ID for a fitting of this character | 
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



# **get_character_fittings**
> Array&lt;GetCharactersCharacterIdFittings200Ok&gt; get_character_fittings(character_id, opts)

Get fittings

Return fittings of a character  ---  Alternate route: `/v1/characters/{character_id}/fittings/`  Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/latest/characters/{character_id}/fittings/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FittingsApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fittings
  result = api_instance.get_character_fittings(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FittingsApi->get_character_fittings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| ID for a character | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdFittings200Ok&gt;**](GetCharactersCharacterIdFittings200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_character_fitting**
> PostCharactersCharacterIdFittingsCreated add_character_fitting(character_id, opts)

Create fitting

Save a new fitting for a character  ---  Alternate route: `/v1/characters/{character_id}/fittings/`  Alternate route: `/legacy/characters/{character_id}/fittings/`  Alternate route: `/latest/characters/{character_id}/fittings/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FittingsApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  fitting: SwaggerClient::PostCharactersCharacterIdFittingsFitting.new, # PostCharactersCharacterIdFittingsFitting | Details about the new fitting
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fitting
  result = api_instance.add_character_fitting(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FittingsApi->add_character_fitting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| ID for a character | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **fitting** | [**PostCharactersCharacterIdFittingsFitting**](PostCharactersCharacterIdFittingsFitting.md)| Details about the new fitting | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostCharactersCharacterIdFittingsCreated**](PostCharactersCharacterIdFittingsCreated.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



