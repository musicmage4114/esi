# Esi::WalletApi

All URIs are relative to *https://esi.tech.ccp.is/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_wallets**](WalletApi.md#get_wallets) | **GET** /characters/{character_id}/wallets/ | List wallets and balances


# **get_wallets**
> Array&lt;Wallet&gt; get_wallets(character_id, opts)

List wallets and balances

List your wallets and their balances. Characters typically have only one wallet, with wallet_id 1000 being the master wallet.  ---  Alternate route: `/v1/characters/{character_id}/wallets/`  Alternate route: `/legacy/characters/{character_id}/wallets/`  Alternate route: `/latest/characters/{character_id}/wallets/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::WalletApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #List wallets and balances
  result = api_instance.get_wallets(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling WalletApi->get_wallets: #{e}"
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

[**Array&lt;Wallet&gt;**](Wallet.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



