# SwaggerClient::IndustryApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_industry_jobs**](IndustryApi.md#get_industry_jobs) | **GET** /characters/{character_id}/industry/jobs/ | List character industry jobs
[**get_industry_facilities**](IndustryApi.md#get_industry_facilities) | **GET** /industry/facilities/ | List industry facilities
[**get_industry_systems**](IndustryApi.md#get_industry_systems) | **GET** /industry/systems/ | List solar system cost indices


# **get_industry_jobs**
> Array&lt;IndustryJob&gt; get_industry_jobs(character_id, opts)

List character industry jobs

List industry jobs placed by a character  ---  Alternate route: `/v1/characters/{character_id}/industry/jobs/`  Alternate route: `/legacy/characters/{character_id}/industry/jobs/`  Alternate route: `/latest/characters/{character_id}/industry/jobs/`   ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::IndustryApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  include_completed: true, # BOOLEAN | Whether retrieve completed character industry jobs as well
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List character industry jobs
  result = api_instance.get_industry_jobs(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IndustryApi->get_industry_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **include_completed** | **BOOLEAN**| Whether retrieve completed character industry jobs as well | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;IndustryJob&gt;**](IndustryJob.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_industry_facilities**
> Array&lt;IndustryFacility&gt; get_industry_facilities(opts)

List industry facilities

Return a list of industry facilities  ---  Alternate route: `/v1/industry/facilities/`  Alternate route: `/legacy/industry/facilities/`  Alternate route: `/latest/industry/facilities/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IndustryApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List industry facilities
  result = api_instance.get_industry_facilities(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IndustryApi->get_industry_facilities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;IndustryFacility&gt;**](IndustryFacility.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_industry_systems**
> Array&lt;IndustrySystem&gt; get_industry_systems(opts)

List solar system cost indices

Return cost indices for solar systems  ---  Alternate route: `/v1/industry/systems/`  Alternate route: `/legacy/industry/systems/`  Alternate route: `/latest/industry/systems/`   ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IndustryApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List solar system cost indices
  result = api_instance.get_industry_systems(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IndustryApi->get_industry_systems: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;IndustrySystem&gt;**](IndustrySystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



