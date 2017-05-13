# SwaggerClient::PlanetaryInteractionApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_colonies**](PlanetaryInteractionApi.md#get_character_colonies) | **GET** /characters/{character_id}/planets/ | Get colonies
[**get_character_colony_by_id**](PlanetaryInteractionApi.md#get_character_colony_by_id) | **GET** /characters/{character_id}/planets/{planet_id}/ | Get colony layout
[**get_schematic_by_id**](PlanetaryInteractionApi.md#get_schematic_by_id) | **GET** /universe/schematics/{schematic_id}/ | Get schematic information


# **get_character_colonies**
> Array&lt;GetCharactersCharacterIdPlanets200Ok&gt; get_character_colonies(character_id, opts)

Get colonies

Returns a list of all planetary colonies owned by a character.  ---  Alternate route: `/v1/characters/{character_id}/planets/`  Alternate route: `/legacy/characters/{character_id}/planets/`  Alternate route: `/latest/characters/{character_id}/planets/`   ---  This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PlanetaryInteractionApi.new

character_id = 56 # Integer | Character id of the target character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get colonies
  result = api_instance.get_character_colonies(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_character_colonies: #{e}"
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

[**Array&lt;GetCharactersCharacterIdPlanets200Ok&gt;**](GetCharactersCharacterIdPlanets200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_colony_by_id**
> GetCharactersCharacterIdPlanetsPlanetIdOk get_character_colony_by_id(character_id, planet_id, opts)

Get colony layout

Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information on this endpoint will not update until this criteria is met.  ---  Alternate route: `/v2/characters/{character_id}/planets/{planet_id}/`  Alternate route: `/latest/characters/{character_id}/planets/{planet_id}/`   ---  This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PlanetaryInteractionApi.new

character_id = 56 # Integer | Character id of the target character

planet_id = 56 # Integer | Planet id of the target planet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get colony layout
  result = api_instance.get_character_colony_by_id(character_id, planet_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_character_colony_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| Character id of the target character | 
 **planet_id** | **Integer**| Planet id of the target planet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdPlanetsPlanetIdOk**](GetCharactersCharacterIdPlanetsPlanetIdOk.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_schematic_by_id**
> GetUniverseSchematicsSchematicIdOk get_schematic_by_id(schematic_id, opts)

Get schematic information

Get information on a planetary factory schematic  ---  Alternate route: `/v1/universe/schematics/{schematic_id}/`  Alternate route: `/legacy/universe/schematics/{schematic_id}/`  Alternate route: `/latest/universe/schematics/{schematic_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PlanetaryInteractionApi.new

schematic_id = 56 # Integer | A PI schematic ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get schematic information
  result = api_instance.get_schematic_by_id(schematic_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_schematic_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schematic_id** | **Integer**| A PI schematic ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetUniverseSchematicsSchematicIdOk**](GetUniverseSchematicsSchematicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



