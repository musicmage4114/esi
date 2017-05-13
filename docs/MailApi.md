# SwaggerClient::MailApi

All URIs are relative to *https://esi.tech.ccp.is/dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_character_mail_label**](MailApi.md#delete_character_mail_label) | **DELETE** /characters/{character_id}/mail/labels/{label_id}/ | Delete a mail label
[**delete_character_mail**](MailApi.md#delete_character_mail) | **DELETE** /characters/{character_id}/mail/{mail_id}/ | Delete a mail
[**get_character_mail**](MailApi.md#get_character_mail) | **GET** /characters/{character_id}/mail/ | Return mail headers
[**get_character_mail_labels**](MailApi.md#get_character_mail_labels) | **GET** /characters/{character_id}/mail/labels/ | Get mail labels and unread counts
[**get_character_mail_lists**](MailApi.md#get_character_mail_lists) | **GET** /characters/{character_id}/mail/lists/ | Return mailing list subscriptions
[**read_character_mail**](MailApi.md#read_character_mail) | **GET** /characters/{character_id}/mail/{mail_id}/ | Return a mail
[**send_mail**](MailApi.md#send_mail) | **POST** /characters/{character_id}/mail/ | Send a new mail
[**add_character_mail_label**](MailApi.md#add_character_mail_label) | **POST** /characters/{character_id}/mail/labels/ | Create a mail label
[**update_mail**](MailApi.md#update_mail) | **PUT** /characters/{character_id}/mail/{mail_id}/ | Update metadata about a mail


# **delete_character_mail_label**
> delete_character_mail_label(character_id, label_id, opts)

Delete a mail label

Delete a mail label  ---  Alternate route: `/v1/characters/{character_id}/mail/labels/{label_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/{label_id}/`  Alternate route: `/latest/characters/{character_id}/mail/labels/{label_id}/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

label_id = 56 # Integer | An EVE label id

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete a mail label
  api_instance.delete_character_mail_label(character_id, label_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->delete_character_mail_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **label_id** | **Integer**| An EVE label id | 
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



# **delete_character_mail**
> delete_character_mail(character_id, mail_id, opts)

Delete a mail

Delete a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/latest/characters/{character_id}/mail/{mail_id}/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete a mail
  api_instance.delete_character_mail(character_id, mail_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->delete_character_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
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



# **get_character_mail**
> Array&lt;GetCharactersCharacterIdMail200Ok&gt; get_character_mail(character_id, opts)

Return mail headers

Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/latest/characters/{character_id}/mail/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  labels: [56], # Array<Integer> | Fetch only mails that match one or more of the given labels
  last_mail_id: 56, # Integer | List only mail with an ID lower than the given ID, if present
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return mail headers
  result = api_instance.get_character_mail(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->get_character_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **labels** | [**Array&lt;Integer&gt;**](Integer.md)| Fetch only mails that match one or more of the given labels | [optional] 
 **last_mail_id** | **Integer**| List only mail with an ID lower than the given ID, if present | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdMail200Ok&gt;**](GetCharactersCharacterIdMail200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_mail_labels**
> GetCharactersCharacterIdMailLabelsOk get_character_mail_labels(character_id, opts)

Get mail labels and unread counts

Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: `/v3/characters/{character_id}/mail/labels/`  Alternate route: `/latest/characters/{character_id}/mail/labels/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get mail labels and unread counts
  result = api_instance.get_character_mail_labels(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->get_character_mail_labels: #{e}"
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

[**GetCharactersCharacterIdMailLabelsOk**](GetCharactersCharacterIdMailLabelsOk.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_character_mail_lists**
> Array&lt;GetCharactersCharacterIdMailLists200Ok&gt; get_character_mail_lists(character_id, opts)

Return mailing list subscriptions

Return all mailing lists that the character is subscribed to   ---  Alternate route: `/v1/characters/{character_id}/mail/lists/`  Alternate route: `/legacy/characters/{character_id}/mail/lists/`  Alternate route: `/latest/characters/{character_id}/mail/lists/`   ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return mailing list subscriptions
  result = api_instance.get_character_mail_lists(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->get_character_mail_lists: #{e}"
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

[**Array&lt;GetCharactersCharacterIdMailLists200Ok&gt;**](GetCharactersCharacterIdMailLists200Ok.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **read_character_mail**
> GetCharactersCharacterIdMailMailIdOk read_character_mail(character_id, mail_id, opts)

Return a mail

Return the contents of an EVE mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/latest/characters/{character_id}/mail/{mail_id}/`   ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return a mail
  result = api_instance.read_character_mail(character_id, mail_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->read_character_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdMailMailIdOk**](GetCharactersCharacterIdMailMailIdOk.md)

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_mail**
> Integer send_mail(character_id, mail, opts)

Send a new mail

Create and send a new mail  ---  Alternate route: `/v1/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/latest/characters/{character_id}/mail/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | The sender's character ID

mail = SwaggerClient::PostCharactersCharacterIdMailMail.new # PostCharactersCharacterIdMailMail | The mail to send

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Send a new mail
  result = api_instance.send_mail(character_id, mail, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->send_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| The sender&#39;s character ID | 
 **mail** | [**PostCharactersCharacterIdMailMail**](PostCharactersCharacterIdMailMail.md)| The mail to send | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Integer**

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_character_mail_label**
> Integer add_character_mail_label(character_id, opts)

Create a mail label

Create a mail label  ---  Alternate route: `/v2/characters/{character_id}/mail/labels/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/`  Alternate route: `/latest/characters/{character_id}/mail/labels/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  label: SwaggerClient::PostCharactersCharacterIdMailLabelsLabel.new, # PostCharactersCharacterIdMailLabelsLabel | Label to create
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create a mail label
  result = api_instance.add_character_mail_label(character_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->add_character_mail_label: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **label** | [**PostCharactersCharacterIdMailLabelsLabel**](PostCharactersCharacterIdMailLabelsLabel.md)| Label to create | [optional] 
 **token** | **String**| Access token to use, if preferred over a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Integer**

### Authorization

[evesso](../../new/README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_mail**
> update_mail(character_id, contents, mail_id, opts)

Update metadata about a mail

Update metadata about a mail  ---  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/latest/characters/{character_id}/mail/{mail_id}/` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MailApi.new

character_id = 56 # Integer | An EVE character ID

contents = SwaggerClient::PutCharactersCharacterIdMailMailIdContents.new # PutCharactersCharacterIdMailMailIdContents | Data used to update the mail

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use, if preferred over a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update metadata about a mail
  api_instance.update_mail(character_id, contents, mail_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailApi->update_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contents** | [**PutCharactersCharacterIdMailMailIdContents**](PutCharactersCharacterIdMailMailIdContents.md)| Data used to update the mail | 
 **mail_id** | **Integer**| An EVE mail ID | 
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



