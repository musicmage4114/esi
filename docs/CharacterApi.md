# SwaggerClient::CharacterApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_by_id**](CharacterApi.md#get_character_by_id) | **GET** /characters/{character_id}/ | Get character&#39;s public information
[**get_character_research_agents**](CharacterApi.md#get_character_research_agents) | **GET** /characters/{character_id}/agents_research/ | Get agents research
[**get_character_blueprints**](CharacterApi.md#get_character_blueprints) | **GET** /characters/{character_id}/blueprints/ | Get blueprints
[**get_character_chat_channels**](CharacterApi.md#get_character_chat_channels) | **GET** /characters/{character_id}/chat_channels/ | Get chat channels
[**get_employment_history**](CharacterApi.md#get_employment_history) | **GET** /characters/{character_id}/corporationhistory/ | Get corporation history
[**get_character_medals**](CharacterApi.md#get_character_medals) | **GET** /characters/{character_id}/medals/ | Get medals
[**get_character_portrait**](CharacterApi.md#get_character_portrait) | **GET** /characters/{character_id}/portrait/ | Get character portraits
[**get_character_standings**](CharacterApi.md#get_character_standings) | **GET** /characters/{character_id}/standings/ | Get standings
[**get_character_names**](CharacterApi.md#get_character_names) | **GET** /characters/names/ | Get character names
[**get_characters_affiliation_by_id**](CharacterApi.md#get_characters_affiliation_by_id) | **POST** /characters/affiliation/ | Character affiliation
[**calculate_cspa_charge**](CharacterApi.md#calculate_cspa_charge) | **POST** /characters/{character_id}/cspa/ | Calculate a CSPA charge cost


# **get_character_by_id**
> GetCharactersCharacterIdOk get_character_by_id(character_id, opts)

Get character's public information

Public information about a character  ---  Alternate route: `/v4/characters/{character_id}/`  Alternate route: `/latest/characters/{character_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character's public information
  result = api_instance.get_character_by_id(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdOk**](GetCharactersCharacterIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_research_agents**
> Array&lt;CharacterResearchAgent&gt; get_character_research_agents(character_id, opts)

Get agents research

Return a list of agents research information for a character. The formula for finding the current research points with an agent is: currentPoints = remainderPoints + pointsPerDay * days(currentTime - researchStartDate)  ---  Alternate route: `/v1/characters/{character_id}/agents_research/`  Alternate route: `/legacy/characters/{character_id}/agents_research/`  Alternate route: `/latest/characters/{character_id}/agents_research/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get agents research
  result = api_instance.get_character_research_agents(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_research_agents: #{e}"
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

[**Array&lt;CharacterResearchAgent&gt;**](CharacterResearchAgent.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_blueprints**
> Array&lt;CharacterBlueprint&gt; get_character_blueprints(character_id, opts)

Get blueprints

Return a list of blueprints the character has  ---  Alternate route: `/v1/characters/{character_id}/blueprints/`  Alternate route: `/legacy/characters/{character_id}/blueprints/`  Alternate route: `/latest/characters/{character_id}/blueprints/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get blueprints
  result = api_instance.get_character_blueprints(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_blueprints: #{e}"
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

[**Array&lt;CharacterBlueprint&gt;**](CharacterBlueprint.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_chat_channels**
> Array&lt;CharacterChatChannels&gt; get_character_chat_channels(character_id, opts)

Get chat channels

Return chat channels that a character is the owner or an operator of  ---  Alternate route: `/v1/characters/{character_id}/chat_channels/`  Alternate route: `/legacy/characters/{character_id}/chat_channels/`  Alternate route: `/latest/characters/{character_id}/chat_channels/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get chat channels
  result = api_instance.get_character_chat_channels(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_chat_channels: #{e}"
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

[**Array&lt;CharacterChatChannels&gt;**](CharacterChatChannels.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_employment_history**
> Array&lt;PastCorporation&gt; get_employment_history(character_id, opts)

Get corporation history

Get a list of all the corporations a character has been a member of  ---  Alternate route: `/v1/characters/{character_id}/corporationhistory/`  Alternate route: `/legacy/characters/{character_id}/corporationhistory/`  Alternate route: `/latest/characters/{character_id}/corporationhistory/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation history
  result = api_instance.get_employment_history(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_employment_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;PastCorporation&gt;**](PastCorporation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_medals**
> Array&lt;GetCharactersCharacterIdMedals200Ok&gt; get_character_medals(character_id, opts)

Get medals

Return a list of medals the character has  ---  Alternate route: `/v1/characters/{character_id}/medals/`  Alternate route: `/legacy/characters/{character_id}/medals/`  Alternate route: `/latest/characters/{character_id}/medals/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get medals
  result = api_instance.get_character_medals(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_medals: #{e}"
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

[**Array&lt;GetCharactersCharacterIdMedals200Ok&gt;**](GetCharactersCharacterIdMedals200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_portrait**
> GetCharactersCharacterIdPortraitOk get_character_portrait(character_id, opts)

Get character portraits

Get portrait urls for a character  ---  Alternate route: `/v2/characters/{character_id}/portrait/`  Alternate route: `/latest/characters/{character_id}/portrait/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character portraits
  result = api_instance.get_character_portrait(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_portrait: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdPortraitOk**](GetCharactersCharacterIdPortraitOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_standings**
> Array&lt;GetCharactersCharacterIdStandings200Ok&gt; get_character_standings(character_id, opts)

Get standings

Return character standings from agents, NPC corporations, and factions  ---  Alternate route: `/v1/characters/{character_id}/standings/`  Alternate route: `/legacy/characters/{character_id}/standings/`  Alternate route: `/latest/characters/{character_id}/standings/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | ID for a character

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get standings
  result = api_instance.get_character_standings(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_standings: #{e}"
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

[**Array&lt;GetCharactersCharacterIdStandings200Ok&gt;**](GetCharactersCharacterIdStandings200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_names**
> Array&lt;GetCharactersNames200Ok&gt; get_character_names(character_ids, opts)

Get character names

Resolve a set of character IDs to character names  ---  Alternate route: `/v1/characters/names/`  Alternate route: `/legacy/characters/names/`  Alternate route: `/latest/characters/names/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CharacterApi.new

character_ids = [56] # Array<Integer> | A comma separated list of character IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character names
  result = api_instance.get_character_names(character_ids, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_character_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of character IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersNames200Ok&gt;**](GetCharactersNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_characters_affiliation_by_id**
> Array&lt;PostCharactersAffiliation200Ok&gt; get_characters_affiliation_by_id(characters, opts)

Character affiliation

Bulk lookup of character IDs to corporation, alliance and faction  ---  Alternate route: `/v1/characters/affiliation/`  Alternate route: `/legacy/characters/affiliation/`  Alternate route: `/latest/characters/affiliation/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CharacterApi.new

characters = [SwaggerClient::Array<Integer>.new] # Array<Integer> | The character IDs to fetch affiliations for

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Character affiliation
  result = api_instance.get_characters_affiliation_by_id(characters, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->get_characters_affiliation_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **characters** | **Array&lt;Integer&gt;**| The character IDs to fetch affiliations for | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;PostCharactersAffiliation200Ok&gt;**](PostCharactersAffiliation200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **calculate_cspa_charge**
> PostCharactersCharacterIdCspaCreated calculate_cspa_charge(character_id, characters, opts)

Calculate a CSPA charge cost

Takes a source character ID in the url and a set of target character ID's in the body, returns a CSPA charge cost  ---  Alternate route: `/v3/characters/{character_id}/cspa/`  Alternate route: `/legacy/characters/{character_id}/cspa/`  Alternate route: `/latest/characters/{character_id}/cspa/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CharacterApi.new

character_id = 56 # Integer | An EVE character ID

characters = SwaggerClient::PostCharactersCharacterIdCspaCharacters.new # PostCharactersCharacterIdCspaCharacters | The target characters to calculate the charge for

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Calculate a CSPA charge cost
  result = api_instance.calculate_cspa_charge(character_id, characters, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CharacterApi->calculate_cspa_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **characters** | [**PostCharactersCharacterIdCspaCharacters**](PostCharactersCharacterIdCspaCharacters.md)| The target characters to calculate the charge for | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**PostCharactersCharacterIdCspaCreated**](PostCharactersCharacterIdCspaCreated.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



