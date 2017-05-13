# SwaggerClient::SearchApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_character_by_string**](SearchApi.md#search_character_by_string) | **GET** /characters/{character_id}/search/ | Search on a string
[**find_entity_by_string**](SearchApi.md#find_entity_by_string) | **GET** /search/ | Search on a string


# **search_character_by_string**
> GetCharactersCharacterIdSearchOk search_character_by_string(categories, character_id, search, opts)

Search on a string

Search for entities that match a given sub-string.  ---  Alternate route: `/v3/characters/{character_id}/search/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::SearchApi.new

categories = ["categories_example"] # Array<String> | Type of entities to search for

character_id = 56 # Integer | An EVE character ID

search = "search_example" # String | The string to search on

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Search locale
  strict: false, # BOOLEAN | Whether the search should be a strict match
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Search on a string
  result = api_instance.search_character_by_string(categories, character_id, search, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->search_character_by_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | [**Array&lt;String&gt;**](String.md)| Type of entities to search for | 
 **character_id** | **Integer**| An EVE character ID | 
 **search** | **String**| The string to search on | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Search locale | [optional] [default to en-us]
 **strict** | **BOOLEAN**| Whether the search should be a strict match | [optional] [default to false]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdSearchOk**](GetCharactersCharacterIdSearchOk.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **find_entity_by_string**
> GetSearchOk find_entity_by_string(categories, search, opts)

Search on a string

Search for entities that match a given sub-string.  ---  Alternate route: `/v2/search/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SearchApi.new

categories = ["categories_example"] # Array<String> | Type of entities to search for

search = "search_example" # String | The string to search on

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Search locale
  strict: false, # BOOLEAN | Whether the search should be a strict match
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Search on a string
  result = api_instance.find_entity_by_string(categories, search, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->find_entity_by_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categories** | [**Array&lt;String&gt;**](String.md)| Type of entities to search for | 
 **search** | **String**| The string to search on | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Search locale | [optional] [default to en-us]
 **strict** | **BOOLEAN**| Whether the search should be a strict match | [optional] [default to false]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetSearchOk**](GetSearchOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



