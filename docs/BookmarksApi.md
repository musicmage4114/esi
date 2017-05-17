# Esi::BookmarksApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_bookmarks**](BookmarksApi.md#get_character_bookmarks) | **GET** /characters/{character_id}/bookmarks/ | List bookmarks
[**get_character_bookmarks_folders**](BookmarksApi.md#get_character_bookmarks_folders) | **GET** /characters/{character_id}/bookmarks/folders/ | List bookmark folders


# **get_character_bookmarks**
> Array&lt;Bookmark&gt; get_character_bookmarks(character_id, opts)

List bookmarks

List your character's personal bookmarks  ---  Alternate route: `/v1/characters/{character_id}/bookmarks/`  Alternate route: `/legacy/characters/{character_id}/bookmarks/`  Alternate route: `/latest/characters/{character_id}/bookmarks/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::BookmarksApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List bookmarks
  result = api_instance.get_character_bookmarks(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling BookmarksApi->get_character_bookmarks: #{e}"
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

[**Array&lt;Bookmark&gt;**](Bookmark.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_bookmarks_folders**
> Array&lt;BookmarksFolder&gt; get_character_bookmarks_folders(character_id, opts)

List bookmark folders

List your character's personal bookmark folders  ---  Alternate route: `/v1/characters/{character_id}/bookmarks/folders/`  Alternate route: `/legacy/characters/{character_id}/bookmarks/folders/`  Alternate route: `/latest/characters/{character_id}/bookmarks/folders/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::BookmarksApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List bookmark folders
  result = api_instance.get_character_bookmarks_folders(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling BookmarksApi->get_character_bookmarks_folders: #{e}"
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

[**Array&lt;BookmarksFolder&gt;**](BookmarksFolder.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



