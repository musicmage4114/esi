# Esi::SkillsApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_skill_queue**](SkillsApi.md#get_skill_queue) | **GET** /characters/{character_id}/skillqueue/ | Get character&#39;s skill queue
[**get_character_skills**](SkillsApi.md#get_character_skills) | **GET** /characters/{character_id}/skills/ | Get character skills


# **get_skill_queue**
> Array&lt;SkillQueueEntry&gt; get_skill_queue(character_id, opts)

Get character's skill queue

List the configured skill queue for the given character  ---  Alternate route: `/v2/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/latest/characters/{character_id}/skillqueue/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::SkillsApi.new

character_id = 56 # Integer | Character id of the target character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character's skill queue
  result = api_instance.get_skill_queue(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling SkillsApi->get_skill_queue: #{e}"
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

[**Array&lt;SkillQueueEntry&gt;**](SkillQueueEntry.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_skills**
> CharacterSkillTotal get_character_skills(character_id, opts)

Get character skills

List all trained skills for the given character  ---  Alternate route: `/v3/characters/{character_id}/skills/`  Alternate route: `/latest/characters/{character_id}/skills/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::SkillsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character skills
  result = api_instance.get_character_skills(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling SkillsApi->get_character_skills: #{e}"
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

[**CharacterSkillTotal**](CharacterSkillTotal.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



