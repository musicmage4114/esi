# Esi::UniverseApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bloodlines**](UniverseApi.md#get_bloodlines) | **GET** /universe/bloodlines/ | Get bloodlines
[**get_item_categories**](UniverseApi.md#get_item_categories) | **GET** /universe/categories/ | Get item categories
[**get_item_category_by_id**](UniverseApi.md#get_item_category_by_id) | **GET** /universe/categories/{category_id}/ | Get item category information
[**get_constellations**](UniverseApi.md#get_constellations) | **GET** /universe/constellations/ | Get constellations
[**get_constellation_by_id**](UniverseApi.md#get_constellation_by_id) | **GET** /universe/constellations/{constellation_id}/ | Get constellation information
[**get_factions**](UniverseApi.md#get_factions) | **GET** /universe/factions/ | Get factions
[**get_game_graphics**](UniverseApi.md#get_game_graphics) | **GET** /universe/graphics/ | Get graphics
[**get_game_graphic_by_id**](UniverseApi.md#get_game_graphic_by_id) | **GET** /universe/graphics/{graphic_id}/ | Get graphic information
[**get_item_groups**](UniverseApi.md#get_item_groups) | **GET** /universe/groups/ | Get item groups
[**get_item_group_by_id**](UniverseApi.md#get_item_group_by_id) | **GET** /universe/groups/{group_id}/ | Get item group information
[**get_moon_by_id**](UniverseApi.md#get_moon_by_id) | **GET** /universe/moons/{moon_id}/ | Get moon information
[**get_planet_by_id**](UniverseApi.md#get_planet_by_id) | **GET** /universe/planets/{planet_id}/ | Get planet information
[**get_races**](UniverseApi.md#get_races) | **GET** /universe/races/ | Get character races
[**get_regions**](UniverseApi.md#get_regions) | **GET** /universe/regions/ | Get regions
[**get_region_by_id**](UniverseApi.md#get_region_by_id) | **GET** /universe/regions/{region_id}/ | Get region information
[**get_stargate_by_id**](UniverseApi.md#get_stargate_by_id) | **GET** /universe/stargates/{stargate_id}/ | Get stargate information
[**get_station_by_id**](UniverseApi.md#get_station_by_id) | **GET** /universe/stations/{station_id}/ | Get station information
[**get_public_structures**](UniverseApi.md#get_public_structures) | **GET** /universe/structures/ | List all public structures
[**get_structure_by_id**](UniverseApi.md#get_structure_by_id) | **GET** /universe/structures/{structure_id}/ | Get structure information
[**get_system_jumps**](UniverseApi.md#get_system_jumps) | **GET** /universe/system_jumps/ | Get system jumps
[**get_system_kills**](UniverseApi.md#get_system_kills) | **GET** /universe/system_kills/ | Get system kills
[**get_systems**](UniverseApi.md#get_systems) | **GET** /universe/systems/ | Get solar systems
[**get_system_by_id**](UniverseApi.md#get_system_by_id) | **GET** /universe/systems/{system_id}/ | Get solar system information
[**get_universe_types**](UniverseApi.md#get_universe_types) | **GET** /universe/types/ | Get types
[**get_universe_type_by_id**](UniverseApi.md#get_universe_type_by_id) | **GET** /universe/types/{type_id}/ | Get type information
[**lookup_id**](UniverseApi.md#lookup_id) | **POST** /universe/names/ | Get names and categories for a set of ID&#39;s


# **get_bloodlines**
> Array&lt;Bloodline&gt; get_bloodlines(opts)

Get bloodlines

Get a list of bloodlines  ---  Alternate route: `/v1/universe/bloodlines/`  Alternate route: `/legacy/universe/bloodlines/`  Alternate route: `/latest/universe/bloodlines/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get bloodlines
  result = api_instance.get_bloodlines(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_bloodlines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;Bloodline&gt;**](Bloodline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_item_categories**
> Array&lt;Integer&gt; get_item_categories(opts)

Get item categories

Get a list of item categories  ---  Alternate route: `/v1/universe/categories/`  Alternate route: `/legacy/universe/categories/`  Alternate route: `/latest/universe/categories/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item categories
  result = api_instance.get_item_categories(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_item_categories: #{e}"
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



# **get_item_category_by_id**
> ItemCategory get_item_category_by_id(category_id, opts)

Get item category information

Get information of an item category  ---  Alternate route: `/v1/universe/categories/{category_id}/`  Alternate route: `/legacy/universe/categories/{category_id}/`  Alternate route: `/latest/universe/categories/{category_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

category_id = 56 # Integer | An Eve item category ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item category information
  result = api_instance.get_item_category_by_id(category_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_item_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **Integer**| An Eve item category ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**ItemCategory**](ItemCategory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_constellations**
> Array&lt;Integer&gt; get_constellations(opts)

Get constellations

Get a list of constellations  ---  Alternate route: `/v1/universe/constellations/`  Alternate route: `/legacy/universe/constellations/`  Alternate route: `/latest/universe/constellations/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get constellations
  result = api_instance.get_constellations(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_constellations: #{e}"
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



# **get_constellation_by_id**
> Constellation get_constellation_by_id(constellation_id, opts)

Get constellation information

Get information on a constellation  ---  Alternate route: `/v1/universe/constellations/{constellation_id}/`  Alternate route: `/legacy/universe/constellations/{constellation_id}/`  Alternate route: `/latest/universe/constellations/{constellation_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

constellation_id = 56 # Integer | constellation_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get constellation information
  result = api_instance.get_constellation_by_id(constellation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_constellation_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **constellation_id** | **Integer**| constellation_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Constellation**](Constellation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_factions**
> Array&lt;Faction&gt; get_factions(opts)

Get factions

Get a list of factions  ---  Alternate route: `/v1/universe/factions/`  Alternate route: `/legacy/universe/factions/`  Alternate route: `/latest/universe/factions/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get factions
  result = api_instance.get_factions(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_factions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;Faction&gt;**](Faction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_game_graphics**
> Array&lt;Integer&gt; get_game_graphics(opts)

Get graphics

Get a list of graphics  ---  Alternate route: `/v1/universe/graphics/`  Alternate route: `/legacy/universe/graphics/`  Alternate route: `/latest/universe/graphics/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get graphics
  result = api_instance.get_game_graphics(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_game_graphics: #{e}"
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



# **get_game_graphic_by_id**
> GameGraphic get_game_graphic_by_id(graphic_id, opts)

Get graphic information

Get information on a graphic  ---  Alternate route: `/v1/universe/graphics/{graphic_id}/`  Alternate route: `/legacy/universe/graphics/{graphic_id}/`  Alternate route: `/latest/universe/graphics/{graphic_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

graphic_id = 56 # Integer | graphic_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get graphic information
  result = api_instance.get_game_graphic_by_id(graphic_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_game_graphic_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graphic_id** | **Integer**| graphic_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GameGraphic**](GameGraphic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_item_groups**
> Array&lt;Integer&gt; get_item_groups(opts)

Get item groups

Get a list of item groups  ---  Alternate route: `/v1/universe/groups/`  Alternate route: `/legacy/universe/groups/`  Alternate route: `/latest/universe/groups/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 56, # Integer | Which page to query
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item groups
  result = api_instance.get_item_groups(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_item_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page to query | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_item_group_by_id**
> ItemGroup get_item_group_by_id(group_id, opts)

Get item group information

Get information on an item group  ---  Alternate route: `/v1/universe/groups/{group_id}/`  Alternate route: `/legacy/universe/groups/{group_id}/`  Alternate route: `/latest/universe/groups/{group_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

group_id = 56 # Integer | An Eve item group ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item group information
  result = api_instance.get_item_group_by_id(group_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_item_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| An Eve item group ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**ItemGroup**](ItemGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_moon_by_id**
> Moon get_moon_by_id(moon_id, opts)

Get moon information

Get information on a moon  ---  Alternate route: `/v1/universe/moons/{moon_id}/`  Alternate route: `/legacy/universe/moons/{moon_id}/`  Alternate route: `/latest/universe/moons/{moon_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

moon_id = 56 # Integer | moon_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get moon information
  result = api_instance.get_moon_by_id(moon_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_moon_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moon_id** | **Integer**| moon_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Moon**](Moon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_planet_by_id**
> Planet get_planet_by_id(planet_id, opts)

Get planet information

Get information on a planet  ---  Alternate route: `/v1/universe/planets/{planet_id}/`  Alternate route: `/legacy/universe/planets/{planet_id}/`  Alternate route: `/latest/universe/planets/{planet_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

planet_id = 56 # Integer | planet_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get planet information
  result = api_instance.get_planet_by_id(planet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_planet_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planet_id** | **Integer**| planet_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Planet**](Planet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_races**
> Array&lt;Race&gt; get_races(opts)

Get character races

Get a list of character races  ---  Alternate route: `/v1/universe/races/`  Alternate route: `/legacy/universe/races/`  Alternate route: `/latest/universe/races/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character races
  result = api_instance.get_races(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_races: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;Race&gt;**](Race.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_regions**
> Array&lt;Integer&gt; get_regions(opts)

Get regions

Get a list of regions  ---  Alternate route: `/v1/universe/regions/`  Alternate route: `/legacy/universe/regions/`  Alternate route: `/latest/universe/regions/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get regions
  result = api_instance.get_regions(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_regions: #{e}"
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



# **get_region_by_id**
> Region get_region_by_id(region_id, opts)

Get region information

Get information on a region  ---  Alternate route: `/v1/universe/regions/{region_id}/`  Alternate route: `/legacy/universe/regions/{region_id}/`  Alternate route: `/latest/universe/regions/{region_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

region_id = 56 # Integer | region_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get region information
  result = api_instance.get_region_by_id(region_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_region_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| region_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Region**](Region.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_stargate_by_id**
> Stargate get_stargate_by_id(stargate_id, opts)

Get stargate information

Get information on a stargate  ---  Alternate route: `/v1/universe/stargates/{stargate_id}/`  Alternate route: `/legacy/universe/stargates/{stargate_id}/`  Alternate route: `/latest/universe/stargates/{stargate_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

stargate_id = 56 # Integer | stargate_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get stargate information
  result = api_instance.get_stargate_by_id(stargate_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_stargate_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stargate_id** | **Integer**| stargate_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Stargate**](Stargate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_station_by_id**
> Station get_station_by_id(station_id, opts)

Get station information

Get information on a station  ---  Alternate route: `/v2/universe/stations/{station_id}/`  Alternate route: `/latest/universe/stations/{station_id}/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

station_id = 56 # Integer | station_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get station information
  result = api_instance.get_station_by_id(station_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_station_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **station_id** | **Integer**| station_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Station**](Station.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_public_structures**
> Array&lt;Integer&gt; get_public_structures(opts)

List all public structures

List all public structures  ---  Alternate route: `/v1/universe/structures/`  Alternate route: `/latest/universe/structures/`  Alternate route: `/legacy/universe/structures/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List all public structures
  result = api_instance.get_public_structures(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_public_structures: #{e}"
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



# **get_structure_by_id**
> Structure get_structure_by_id(structure_id, opts)

Get structure information

Returns information on requested structure, if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.  ---  Alternate route: `/v1/universe/structures/{structure_id}/`  Alternate route: `/legacy/universe/structures/{structure_id}/`  Alternate route: `/latest/universe/structures/{structure_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::UniverseApi.new

structure_id = 789 # Integer | An Eve structure ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get structure information
  result = api_instance.get_structure_by_id(structure_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_structure_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| An Eve structure ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Structure**](Structure.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_system_jumps**
> Array&lt;SystemJumpInfo&gt; get_system_jumps(opts)

Get system jumps

Get the number of jumps in solar systems within the last hour, excluding wormhole space. Only systems with jumps will be listed  ---  Alternate route: `/v1/universe/system_jumps/`  Alternate route: `/legacy/universe/system_jumps/`  Alternate route: `/latest/universe/system_jumps/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get system jumps
  result = api_instance.get_system_jumps(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_system_jumps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;SystemJumpInfo&gt;**](SystemJumpInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_system_kills**
> Array&lt;SystemKillsInfo&gt; get_system_kills(opts)

Get system kills

Get the number of ship, pod and NPC kills per solar system within the last hour, excluding wormhole space. Only systems with kills will be listed  ---  Alternate route: `/v1/universe/system_kills/`  Alternate route: `/legacy/universe/system_kills/`  Alternate route: `/latest/universe/system_kills/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get system kills
  result = api_instance.get_system_kills(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_system_kills: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;SystemKillsInfo&gt;**](SystemKillsInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_systems**
> Array&lt;Integer&gt; get_systems(opts)

Get solar systems

Get a list of solar systems  ---  Alternate route: `/v1/universe/systems/`  Alternate route: `/legacy/universe/systems/`  Alternate route: `/latest/universe/systems/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get solar systems
  result = api_instance.get_systems(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_systems: #{e}"
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



# **get_system_by_id**
> System get_system_by_id(system_id, opts)

Get solar system information

Get information on a solar system  ---  Alternate route: `/v2/universe/systems/{system_id}/`  Alternate route: `/latest/universe/systems/{system_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

system_id = 56 # Integer | system_id integer

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get solar system information
  result = api_instance.get_system_by_id(system_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_system_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_id** | **Integer**| system_id integer | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**System**](System.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_types**
> Array&lt;Integer&gt; get_universe_types(opts)

Get types

Get a list of type ids  ---  Alternate route: `/v1/universe/types/`  Alternate route: `/legacy/universe/types/`  Alternate route: `/latest/universe/types/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 56, # Integer | Which page to query
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get types
  result = api_instance.get_universe_types(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page to query | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_universe_type_by_id**
> UniverseType get_universe_type_by_id(type_id, opts)

Get type information

Get information on a type  ---  Alternate route: `/v3/universe/types/{type_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

type_id = 56 # Integer | An Eve item type ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get type information
  result = api_instance.get_universe_type_by_id(type_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->get_universe_type_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_id** | **Integer**| An Eve item type ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**UniverseType**](UniverseType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **lookup_id**
> Array&lt;IdSummary&gt; lookup_id(ids, opts)

Get names and categories for a set of ID's

Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types.  ---  Alternate route: `/v2/universe/names/`  Alternate route: `/latest/universe/names/` 

### Example
```ruby
# load the gem
require 'esi'

api_instance = Esi::UniverseApi.new

ids = [Esi::Array<Integer>.new] # Array<Integer> | The ids to resolve

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get names and categories for a set of ID's
  result = api_instance.lookup_id(ids, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling UniverseApi->lookup_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **Array&lt;Integer&gt;**| The ids to resolve | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;IdSummary&gt;**](IdSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



