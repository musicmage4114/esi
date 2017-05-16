# Esi::CorporationApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_corporation_by_id**](CorporationApi.md#get_corporation_by_id) | **GET** /corporations/{corporation_id}/ | Get corporation information
[**get_alliance_history**](CorporationApi.md#get_alliance_history) | **GET** /corporations/{corporation_id}/alliancehistory/ | Get alliance history
[**get_corporation_icon**](CorporationApi.md#get_corporation_icon) | **GET** /corporations/{corporation_id}/icons/ | Get corporation icon
[**get_corporation_members**](CorporationApi.md#get_corporation_members) | **GET** /corporations/{corporation_id}/members/ | Get corporation members
[**get_corporation_roles**](CorporationApi.md#get_corporation_roles) | **GET** /corporations/{corporation_id}/roles/ | Get corporation member roles
[**get_corporation_structures**](CorporationApi.md#get_corporation_structures) | **GET** /corporations/{corporation_id}/structures/ | Get corporation structures
[**get_corporation_name**](CorporationApi.md#get_corporation_name) | **GET** /corporations/names/ | Get corporation names
[**get_npc_corporations**](CorporationApi.md#get_npc_corporations) | **GET** /corporations/npccorps/ | Get npc corporations
[**update_structure_vulnerability**](CorporationApi.md#update_structure_vulnerability) | **PUT** /corporations/{corporation_id}/structures/{structure_id}/ | Update structure vulnerability schedule


# **get_corporation_by_id**
> Corporation get_corporation_by_id(corporation_id, opts)

Get corporation information

Public information about a corporation  ---  Alternate route: `/v3/corporations/{corporation_id}/`  Alternate route: `/latest/corporations/{corporation_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | An Eve corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation information
  result = api_instance.get_corporation_by_id(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An Eve corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Corporation**](Corporation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alliance_history**
> Array&lt;PastAlliance&gt; get_alliance_history(corporation_id, opts)

Get alliance history

Get a list of all the alliances a corporation has been a member of  ---  Alternate route: `/v1/corporations/{corporation_id}/alliancehistory/`  Alternate route: `/legacy/corporations/{corporation_id}/alliancehistory/`  Alternate route: `/latest/corporations/{corporation_id}/alliancehistory/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance history
  result = api_instance.get_alliance_history(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_alliance_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;PastAlliance&gt;**](PastAlliance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporation_icon**
> CorporationIcon get_corporation_icon(corporation_id, opts)

Get corporation icon

Get the icon urls for a corporation  ---  Alternate route: `/v1/corporations/{corporation_id}/icons/`  Alternate route: `/legacy/corporations/{corporation_id}/icons/`  Alternate route: `/latest/corporations/{corporation_id}/icons/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation icon
  result = api_instance.get_corporation_icon(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**CorporationIcon**](CorporationIcon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporation_members**
> Array&lt;CorporationMember&gt; get_corporation_members(corporation_id, opts)

Get corporation members

Read the current list of members if the calling character is a member.  ---  Alternate route: `/v2/corporations/{corporation_id}/members/`  Alternate route: `/legacy/corporations/{corporation_id}/members/`  Alternate route: `/latest/corporations/{corporation_id}/members/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | A corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation members
  result = api_instance.get_corporation_members(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| A corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;CorporationMember&gt;**](CorporationMember.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporation_roles**
> Array&lt;CorporationMemberRole&gt; get_corporation_roles(corporation_id, opts)

Get corporation member roles

Return the roles of all members if the character has the personnel manager role or any grantable role.  ---  Alternate route: `/v1/corporations/{corporation_id}/roles/`  Alternate route: `/legacy/corporations/{corporation_id}/roles/`  Alternate route: `/latest/corporations/{corporation_id}/roles/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | A corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation member roles
  result = api_instance.get_corporation_roles(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| A corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;CorporationMemberRole&gt;**](CorporationMemberRole.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporation_structures**
> Array&lt;CorporationStructure&gt; get_corporation_structures(corporation_id, opts)

Get corporation structures

Get a list of corporation structures  ---  Alternate route: `/v1/corporations/{corporation_id}/structures/`  Alternate route: `/legacy/corporations/{corporation_id}/structures/`  Alternate route: `/latest/corporations/{corporation_id}/structures/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | A corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  page: 56, # Integer | Which page to query, 250 structures per page
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation structures
  result = api_instance.get_corporation_structures(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_structures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| A corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **page** | **Integer**| Which page to query, 250 structures per page | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;CorporationStructure&gt;**](CorporationStructure.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporation_name**
> Array&lt;CorporationName&gt; get_corporation_name(corporation_ids, opts)

Get corporation names

Resolve a set of corporation IDs to corporation names  ---  Alternate route: `/v1/corporations/names/`  Alternate route: `/legacy/corporations/names/`  Alternate route: `/latest/corporations/names/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::CorporationApi.new

corporation_ids = [56] # Array<Integer> | A comma separated list of corporation IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation names
  result = api_instance.get_corporation_name(corporation_ids, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_corporation_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of corporation IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;CorporationName&gt;**](CorporationName.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_npc_corporations**
> Array&lt;Integer&gt; get_npc_corporations(opts)

Get npc corporations

Get a list of npc corporations  ---  Alternate route: `/v1/corporations/npccorps/`  Alternate route: `/legacy/corporations/npccorps/`  Alternate route: `/latest/corporations/npccorps/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::CorporationApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get npc corporations
  result = api_instance.get_npc_corporations(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->get_npc_corporations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_structure_vulnerability**
> update_structure_vulnerability(corporation_id, new_schedule, structure_id, opts)

Update structure vulnerability schedule

Update the vulnerability window schedule of a corporation structure  ---  Alternate route: `/v1/corporations/{corporation_id}/structures/{structure_id}/`  Alternate route: `/legacy/corporations/{corporation_id}/structures/{structure_id}/`  Alternate route: `/latest/corporations/{corporation_id}/structures/{structure_id}/` 

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::CorporationApi.new

corporation_id = 56 # Integer | A corporation ID

new_schedule = [Esi::NewVulnerabilitySchedule.new] # Array<NewVulnerabilitySchedule> | New vulnerability window schedule for the structure

structure_id = 789 # Integer | A structure ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update structure vulnerability schedule
  api_instance.update_structure_vulnerability(corporation_id, new_schedule, structure_id, opts)
rescue Esi::ApiError => e
  puts "Exception when calling CorporationApi->update_structure_vulnerability: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| A corporation ID | 
 **new_schedule** | [**Array&lt;NewVulnerabilitySchedule&gt;**](NewVulnerabilitySchedule.md)| New vulnerability window schedule for the structure | 
 **structure_id** | **Integer**| A structure ID | 
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



