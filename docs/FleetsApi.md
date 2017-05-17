# Esi::FleetsApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kick_fleet_member**](FleetsApi.md#kick_fleet_member) | **DELETE** /fleets/{fleet_id}/members/{member_id}/ | Kick fleet member
[**delete_squad**](FleetsApi.md#delete_squad) | **DELETE** /fleets/{fleet_id}/squads/{squad_id}/ | Delete fleet squad
[**delete_wing**](FleetsApi.md#delete_wing) | **DELETE** /fleets/{fleet_id}/wings/{wing_id}/ | Delete fleet wing
[**get_fleet**](FleetsApi.md#get_fleet) | **GET** /fleets/{fleet_id}/ | Get fleet information
[**get_fleet_members**](FleetsApi.md#get_fleet_members) | **GET** /fleets/{fleet_id}/members/ | Get fleet members
[**get_wings**](FleetsApi.md#get_wings) | **GET** /fleets/{fleet_id}/wings/ | Get fleet wings
[**invite_to_fleet**](FleetsApi.md#invite_to_fleet) | **POST** /fleets/{fleet_id}/members/ | Create fleet invitation
[**create_wing**](FleetsApi.md#create_wing) | **POST** /fleets/{fleet_id}/wings/ | Create fleet wing
[**create_squad**](FleetsApi.md#create_squad) | **POST** /fleets/{fleet_id}/wings/{wing_id}/squads/ | Create fleet squad
[**update_fleet**](FleetsApi.md#update_fleet) | **PUT** /fleets/{fleet_id}/ | Update fleet
[**move_fleet_member**](FleetsApi.md#move_fleet_member) | **PUT** /fleets/{fleet_id}/members/{member_id}/ | Move fleet member
[**rename_squad**](FleetsApi.md#rename_squad) | **PUT** /fleets/{fleet_id}/squads/{squad_id}/ | Rename fleet squad
[**rename_wing**](FleetsApi.md#rename_wing) | **PUT** /fleets/{fleet_id}/wings/{wing_id}/ | Rename fleet wing


# **kick_fleet_member**
> kick_fleet_member(fleet_id, member_id, opts)

Kick fleet member

Kick a fleet member  ---  Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/latest/fleets/{fleet_id}/members/{member_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Kick fleet member
  api_instance.kick_fleet_member(fleet_id, member_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->kick_fleet_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
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



# **delete_squad**
> delete_squad(fleet_id, squad_id, opts)

Delete fleet squad

Delete a fleet squad, only empty squads can be deleted  ---  Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/latest/fleets/{fleet_id}/squads/{squad_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

squad_id = 789 # Integer | The squad to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet squad
  api_instance.delete_squad(fleet_id, squad_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->delete_squad: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **squad_id** | **Integer**| The squad to delete | 
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



# **delete_wing**
> delete_wing(fleet_id, wing_id, opts)

Delete fleet wing

Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty  ---  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/latest/fleets/{fleet_id}/wings/{wing_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing to delete

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete fleet wing
  api_instance.delete_wing(fleet_id, wing_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->delete_wing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing to delete | 
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



# **get_fleet**
> Fleet get_fleet(fleet_id, opts)

Get fleet information

Return details about a fleet  ---  Alternate route: `/v1/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/latest/fleets/{fleet_id}/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet information
  result = api_instance.get_fleet(fleet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->get_fleet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Fleet**](Fleet.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_fleet_members**
> Array&lt;FleetMember&gt; get_fleet_members(fleet_id, opts)

Get fleet members

Return information about fleet members  ---  Alternate route: `/v1/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/latest/fleets/{fleet_id}/members/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet members
  result = api_instance.get_fleet_members(fleet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->get_fleet_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;FleetMember&gt;**](FleetMember.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_wings**
> Array&lt;Wing&gt; get_wings(fleet_id, opts)

Get fleet wings

Return information about wings in a fleet  ---  Alternate route: `/v1/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/latest/fleets/{fleet_id}/wings/`   ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get fleet wings
  result = api_instance.get_wings(fleet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->get_wings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;Wing&gt;**](Wing.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invite_to_fleet**
> invite_to_fleet(fleet_id, invitation, opts)

Create fleet invitation

Invite a character into the fleet, if a character has a CSPA charge set, it is not possible to invite them to the fleet using ESI  ---  Alternate route: `/v1/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/latest/fleets/{fleet_id}/members/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

invitation = Esi::FleetInvitation.new # FleetInvitation | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet invitation
  api_instance.invite_to_fleet(fleet_id, invitation, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->invite_to_fleet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **invitation** | [**FleetInvitation**](FleetInvitation.md)| Details of the invitation | 
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



# **create_wing**
> CreatedWing create_wing(fleet_id, opts)

Create fleet wing

Create a new wing in a fleet  ---  Alternate route: `/v1/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/latest/fleets/{fleet_id}/wings/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet wing
  result = api_instance.create_wing(fleet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->create_wing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**CreatedWing**](CreatedWing.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_squad**
> CreatedSquad create_squad(fleet_id, wing_id, opts)

Create fleet squad

Create a new squad in a fleet  ---  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/latest/fleets/{fleet_id}/wings/{wing_id}/squads/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

wing_id = 789 # Integer | The wing_id to create squad in

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create fleet squad
  result = api_instance.create_squad(fleet_id, wing_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->create_squad: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **wing_id** | **Integer**| The wing_id to create squad in | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**CreatedSquad**](CreatedSquad.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_fleet**
> update_fleet(fleet_id, new_settings, opts)

Update fleet

Update settings about a fleet  ---  Alternate route: `/v1/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/latest/fleets/{fleet_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

new_settings = Esi::FleetNewSetting.new # FleetNewSetting | What to update for this fleet

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update fleet
  api_instance.update_fleet(fleet_id, new_settings, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->update_fleet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **new_settings** | [**FleetNewSetting**](FleetNewSetting.md)| What to update for this fleet | 
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



# **move_fleet_member**
> move_fleet_member(fleet_id, member_id, movement, opts)

Move fleet member

Move a fleet member around  ---  Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/latest/fleets/{fleet_id}/members/{member_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

member_id = 56 # Integer | The character ID of a member in this fleet

movement = Esi::FleetMemberMovement.new # FleetMemberMovement | Details of the invitation

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Move fleet member
  api_instance.move_fleet_member(fleet_id, member_id, movement, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->move_fleet_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **member_id** | **Integer**| The character ID of a member in this fleet | 
 **movement** | [**FleetMemberMovement**](FleetMemberMovement.md)| Details of the invitation | 
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



# **rename_squad**
> rename_squad(fleet_id, naming, squad_id, opts)

Rename fleet squad

Rename a fleet squad  ---  Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/latest/fleets/{fleet_id}/squads/{squad_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = Esi::NewSquadName.new # NewSquadName | New name of the squad

squad_id = 789 # Integer | The squad to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet squad
  api_instance.rename_squad(fleet_id, naming, squad_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->rename_squad: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**NewSquadName**](NewSquadName.md)| New name of the squad | 
 **squad_id** | **Integer**| The squad to rename | 
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



# **rename_wing**
> rename_wing(fleet_id, naming, wing_id, opts)

Rename fleet wing

Rename a fleet wing  ---  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/latest/fleets/{fleet_id}/wings/{wing_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FleetsApi.new

fleet_id = 789 # Integer | ID for a fleet

naming = Esi::NewWingName.new # NewWingName | New name of the wing

wing_id = 789 # Integer | The wing to rename

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Rename fleet wing
  api_instance.rename_wing(fleet_id, naming, wing_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling FleetsApi->rename_wing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fleet_id** | **Integer**| ID for a fleet | 
 **naming** | [**NewWingName**](NewWingName.md)| New name of the wing | 
 **wing_id** | **Integer**| The wing to rename | 
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



