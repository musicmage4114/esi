# SwaggerClient::MarketApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_character_market_orders**](MarketApi.md#get_character_market_orders) | **GET** /characters/{character_id}/orders/ | List orders from a character
[**get_market_groups**](MarketApi.md#get_market_groups) | **GET** /markets/groups/ | Get item groups
[**get_market_group_by_id**](MarketApi.md#get_market_group_by_id) | **GET** /markets/groups/{market_group_id}/ | Get item group information
[**get_market_prices**](MarketApi.md#get_market_prices) | **GET** /markets/prices/ | List market prices
[**get_region_market_history_by_id**](MarketApi.md#get_region_market_history_by_id) | **GET** /markets/{region_id}/history/ | List historical market statistics in a region
[**get_region_market_orders**](MarketApi.md#get_region_market_orders) | **GET** /markets/{region_id}/orders/ | List orders in a region
[**get_structure_market_orders**](MarketApi.md#get_structure_market_orders) | **GET** /markets/structures/{structure_id}/ | List orders in a structure


# **get_character_market_orders**
> Array&lt;GetCharactersCharacterIdOrders200Ok&gt; get_character_market_orders(character_id, opts)

List orders from a character

List market orders placed by a character  ---  Alternate route: `/v1/characters/{character_id}/orders/`  Alternate route: `/legacy/characters/{character_id}/orders/`  Alternate route: `/latest/characters/{character_id}/orders/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MarketApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders from a character
  result = api_instance.get_character_market_orders(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_character_market_orders: #{e}"
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

[**Array&lt;GetCharactersCharacterIdOrders200Ok&gt;**](GetCharactersCharacterIdOrders200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_market_groups**
> Array&lt;Integer&gt; get_market_groups(opts)

Get item groups

Get a list of item groups  ---  Alternate route: `/v1/markets/groups/`  Alternate route: `/legacy/markets/groups/`  Alternate route: `/latest/markets/groups/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item groups
  result = api_instance.get_market_groups(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_market_groups: #{e}"
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



# **get_market_group_by_id**
> GetMarketsGroupsMarketGroupIdOk get_market_group_by_id(market_group_id, opts)

Get item group information

Get information on an item group  ---  Alternate route: `/v1/markets/groups/{market_group_id}/`  Alternate route: `/legacy/markets/groups/{market_group_id}/`  Alternate route: `/latest/markets/groups/{market_group_id}/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

market_group_id = 56 # Integer | An Eve item group ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get item group information
  result = api_instance.get_market_group_by_id(market_group_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_market_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market_group_id** | **Integer**| An Eve item group ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetMarketsGroupsMarketGroupIdOk**](GetMarketsGroupsMarketGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_market_prices**
> Array&lt;GetMarketsPrices200Ok&gt; get_market_prices(opts)

List market prices

Return a list of prices  ---  Alternate route: `/v1/markets/prices/`  Alternate route: `/legacy/markets/prices/`  Alternate route: `/latest/markets/prices/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List market prices
  result = api_instance.get_market_prices(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_market_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsPrices200Ok&gt;**](GetMarketsPrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_region_market_history_by_id**
> Array&lt;GetMarketsRegionIdHistory200Ok&gt; get_region_market_history_by_id(region_id, type_id, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  ---  Alternate route: `/v1/markets/{region_id}/history/`  Alternate route: `/legacy/markets/{region_id}/history/`  Alternate route: `/latest/markets/{region_id}/history/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

region_id = 56 # Integer | Return statistics in this region

type_id = 56 # Integer | Return statistics for this type

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List historical market statistics in a region
  result = api_instance.get_region_market_history_by_id(region_id, type_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_region_market_history_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **type_id** | **Integer**| Return statistics for this type | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdHistory200Ok&gt;**](GetMarketsRegionIdHistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_region_market_orders**
> Array&lt;GetMarketsRegionIdOrders200Ok&gt; get_region_market_orders(order_type, region_id, opts)

List orders in a region

Return a list of orders in a region  ---  Alternate route: `/v1/markets/{region_id}/orders/`  Alternate route: `/legacy/markets/{region_id}/orders/`  Alternate route: `/latest/markets/{region_id}/orders/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MarketApi.new

order_type = "all" # String | Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. 

region_id = 56 # Integer | Return orders in this region

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page to query, only used for querying without type_id. Starting at 1 
  type_id: 56, # Integer | Return orders only for this type
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders in a region
  result = api_instance.get_region_market_orders(order_type, region_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_region_market_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_type** | **String**| Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.  | [default to all]
 **region_id** | **Integer**| Return orders in this region | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page to query, only used for querying without type_id. Starting at 1  | [optional] [default to 1]
 **type_id** | **Integer**| Return orders only for this type | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdOrders200Ok&gt;**](GetMarketsRegionIdOrders200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_structure_market_orders**
> Array&lt;GetMarketsStructuresStructureId200Ok&gt; get_structure_market_orders(structure_id, opts)

List orders in a structure

Return all orders in a structure  ---  Alternate route: `/v1/markets/structures/{structure_id}/`  Alternate route: `/legacy/markets/structures/{structure_id}/`  Alternate route: `/latest/markets/structures/{structure_id}/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MarketApi.new

structure_id = 789 # Integer | Return orders in this structure

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  page: 1, # Integer | Which page to query, starting at 1
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List orders in a structure
  result = api_instance.get_structure_market_orders(structure_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MarketApi->get_structure_market_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| Return orders in this structure | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **page** | **Integer**| Which page to query, starting at 1 | [optional] [default to 1]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetMarketsStructuresStructureId200Ok&gt;**](GetMarketsStructuresStructureId200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



