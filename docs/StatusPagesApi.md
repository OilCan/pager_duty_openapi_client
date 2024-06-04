# OpenapiClient::StatusPagesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_status_page_post**](StatusPagesApi.md#create_status_page_post) | **POST** /status_pages/{id}/posts | Create a Status Page Post |
| [**create_status_page_post_update**](StatusPagesApi.md#create_status_page_post_update) | **POST** /status_pages/{id}/posts/{post_id}/post_updates | Create a Status Page Post Update |
| [**create_status_page_postmortem**](StatusPagesApi.md#create_status_page_postmortem) | **POST** /status_pages/{id}/posts/{post_id}/postmortem | Create a Post Postmortem |
| [**create_status_page_subscription**](StatusPagesApi.md#create_status_page_subscription) | **POST** /status_pages/{id}/subscriptions | Create a Status Page Subscription |
| [**delete_status_page_post**](StatusPagesApi.md#delete_status_page_post) | **DELETE** /status_pages/{id}/posts/{post_id} | Delete a Status Page Post |
| [**delete_status_page_post_update**](StatusPagesApi.md#delete_status_page_post_update) | **DELETE** /status_pages/{id}/posts/{post_id}/post_updates/{post_update_id} | Delete a Status Page Post Update |
| [**delete_status_page_postmortem**](StatusPagesApi.md#delete_status_page_postmortem) | **DELETE** /status_pages/{id}/posts/{post_id}/postmortem | Delete a Post Postmortem |
| [**delete_status_page_subscription**](StatusPagesApi.md#delete_status_page_subscription) | **DELETE** /status_pages/{id}/subscriptions/{subscription_id} | Delete a Status Page Subscription |
| [**get_post_update**](StatusPagesApi.md#get_post_update) | **GET** /status_pages/{id}/posts/{post_id}/post_updates/{post_update_id} | Get a Status Page Post Update |
| [**get_postmortem**](StatusPagesApi.md#get_postmortem) | **GET** /status_pages/{id}/posts/{post_id}/postmortem | Get a Post Postmortem |
| [**get_status_page_impact**](StatusPagesApi.md#get_status_page_impact) | **GET** /status_pages/{id}/impacts/{impact_id} | Get a Status Page Impact |
| [**get_status_page_post**](StatusPagesApi.md#get_status_page_post) | **GET** /status_pages/{id}/posts/{post_id} | Get a Status Page Post |
| [**get_status_page_service**](StatusPagesApi.md#get_status_page_service) | **GET** /status_pages/{id}/services/{service_id} | Get a Status Page Service |
| [**get_status_page_severity**](StatusPagesApi.md#get_status_page_severity) | **GET** /status_pages/{id}/severities/{severity_id} | Get a Status Page Severity |
| [**get_status_page_status**](StatusPagesApi.md#get_status_page_status) | **GET** /status_pages/{id}/statuses/{status_id} | Get a Status Page Status |
| [**get_status_page_subscription**](StatusPagesApi.md#get_status_page_subscription) | **GET** /status_pages/{id}/subscriptions/{subscription_id} | Get a Status Page Subscription |
| [**list_status_page_impacts**](StatusPagesApi.md#list_status_page_impacts) | **GET** /status_pages/{id}/impacts | List Status Page Impacts |
| [**list_status_page_post_updates**](StatusPagesApi.md#list_status_page_post_updates) | **GET** /status_pages/{id}/posts/{post_id}/post_updates | List Status Page Post Updates |
| [**list_status_page_posts**](StatusPagesApi.md#list_status_page_posts) | **GET** /status_pages/{id}/posts | List Status Page Posts |
| [**list_status_page_services**](StatusPagesApi.md#list_status_page_services) | **GET** /status_pages/{id}/services | List Status Page Services |
| [**list_status_page_severities**](StatusPagesApi.md#list_status_page_severities) | **GET** /status_pages/{id}/severities | List Status Page Severities |
| [**list_status_page_statuses**](StatusPagesApi.md#list_status_page_statuses) | **GET** /status_pages/{id}/statuses | List Status Page Statuses |
| [**list_status_page_subscriptions**](StatusPagesApi.md#list_status_page_subscriptions) | **GET** /status_pages/{id}/subscriptions | List Status Page Subscriptions |
| [**list_status_pages**](StatusPagesApi.md#list_status_pages) | **GET** /status_pages | List Status Pages |
| [**update_status_page_post**](StatusPagesApi.md#update_status_page_post) | **PUT** /status_pages/{id}/posts/{post_id} | Update a Status Page Post |
| [**update_status_page_post_update**](StatusPagesApi.md#update_status_page_post_update) | **PUT** /status_pages/{id}/posts/{post_id}/post_updates/{post_update_id} | Update a Status Page Post Update |
| [**update_status_page_postmortem**](StatusPagesApi.md#update_status_page_postmortem) | **PUT** /status_pages/{id}/posts/{post_id}/postmortem | Update a Post Postmortem |


## create_status_page_post

> <CreateStatusPagePost201Response> create_status_page_post(accept, id, opts)

Create a Status Page Post

Create a Post for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_status_page_post_request: OpenapiClient::CreateStatusPagePostRequest.new({post: OpenapiClient::StatusPagePostPostRequest.new({type: 'status_page_post', title: 'title_example', post_type: 'incident', starts_at: Time.now, ends_at: Time.now, updates: [OpenapiClient::StatusPagePostUpdateRequest.new({post: OpenapiClient::StatusPagePostUpdatePost.new({id: 'id_example'}), message: 'message_example', status: OpenapiClient::StatusPagePostUpdateStatus.new({id: 'id_example'}), severity: OpenapiClient::StatusPagePostUpdateSeverity.new({id: 'id_example'}), impacted_services: [TODO], update_frequency_ms: 37, notify_subscribers: false, type: 'type_example'})], status_page: OpenapiClient::StatusPageImpactStatusPage.new({id: 'id_example'})})}) # CreateStatusPagePostRequest | 
}

begin
  # Create a Status Page Post
  result = api_instance.create_status_page_post(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_post: #{e}"
end
```

#### Using the create_status_page_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePost201Response>, Integer, Hash)> create_status_page_post_with_http_info(accept, id, opts)

```ruby
begin
  # Create a Status Page Post
  data, status_code, headers = api_instance.create_status_page_post_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePost201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_status_page_post_request** | [**CreateStatusPagePostRequest**](CreateStatusPagePostRequest.md) |  | [optional] |

### Return type

[**CreateStatusPagePost201Response**](CreateStatusPagePost201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_status_page_post_update

> <CreateStatusPagePostUpdate201Response> create_status_page_post_update(accept, id, post_id, opts)

Create a Status Page Post Update

Create a Post Update for a Post by Post ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  create_status_page_post_update_request: OpenapiClient::CreateStatusPagePostUpdateRequest.new({post_update: OpenapiClient::StatusPagePostUpdateRequest.new({post: OpenapiClient::StatusPagePostUpdatePost.new({id: 'id_example'}), message: 'message_example', status: OpenapiClient::StatusPagePostUpdateStatus.new({id: 'id_example'}), severity: OpenapiClient::StatusPagePostUpdateSeverity.new({id: 'id_example'}), impacted_services: [TODO], update_frequency_ms: 37, notify_subscribers: false, type: 'type_example'})}) # CreateStatusPagePostUpdateRequest | 
}

begin
  # Create a Status Page Post Update
  result = api_instance.create_status_page_post_update(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_post_update: #{e}"
end
```

#### Using the create_status_page_post_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePostUpdate201Response>, Integer, Hash)> create_status_page_post_update_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # Create a Status Page Post Update
  data, status_code, headers = api_instance.create_status_page_post_update_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePostUpdate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_post_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **create_status_page_post_update_request** | [**CreateStatusPagePostUpdateRequest**](CreateStatusPagePostUpdateRequest.md) |  | [optional] |

### Return type

[**CreateStatusPagePostUpdate201Response**](CreateStatusPagePostUpdate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_status_page_postmortem

> <GetPostmortem200Response> create_status_page_postmortem(accept, id, post_id, opts)

Create a Post Postmortem

Create a Postmortem for a Post by Post ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  create_status_page_postmortem_request: OpenapiClient::CreateStatusPagePostmortemRequest.new # CreateStatusPagePostmortemRequest | 
}

begin
  # Create a Post Postmortem
  result = api_instance.create_status_page_postmortem(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_postmortem: #{e}"
end
```

#### Using the create_status_page_postmortem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostmortem200Response>, Integer, Hash)> create_status_page_postmortem_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # Create a Post Postmortem
  data, status_code, headers = api_instance.create_status_page_postmortem_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostmortem200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_postmortem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **create_status_page_postmortem_request** | [**CreateStatusPagePostmortemRequest**](CreateStatusPagePostmortemRequest.md) |  | [optional] |

### Return type

[**GetPostmortem200Response**](GetPostmortem200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_status_page_subscription

> <CreateStatusPageSubscription201Response> create_status_page_subscription(accept, id, opts)

Create a Status Page Subscription

Create a Subscription for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_status_page_subscription_request: OpenapiClient::CreateStatusPageSubscriptionRequest.new({subscription: OpenapiClient::StatusPageSubscriptionRequest.new({channel: 'webhook', contact: 'contact_example', status_page: OpenapiClient::StatusPageSubscriptionRequestStatusPage.new({id: 'id_example'}), subscribable_object: OpenapiClient::SubscribableObject.new, type: 'type_example'})}) # CreateStatusPageSubscriptionRequest | 
}

begin
  # Create a Status Page Subscription
  result = api_instance.create_status_page_subscription(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_subscription: #{e}"
end
```

#### Using the create_status_page_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPageSubscription201Response>, Integer, Hash)> create_status_page_subscription_with_http_info(accept, id, opts)

```ruby
begin
  # Create a Status Page Subscription
  data, status_code, headers = api_instance.create_status_page_subscription_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPageSubscription201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->create_status_page_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_status_page_subscription_request** | [**CreateStatusPageSubscriptionRequest**](CreateStatusPageSubscriptionRequest.md) |  | [optional] |

### Return type

[**CreateStatusPageSubscription201Response**](CreateStatusPageSubscription201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_status_page_post

> delete_status_page_post(accept, id, post_id)

Delete a Status Page Post

Delete a Post for a Status Page by Status Page ID and Post ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.

begin
  # Delete a Status Page Post
  api_instance.delete_status_page_post(accept, id, post_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_post: #{e}"
end
```

#### Using the delete_status_page_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_status_page_post_with_http_info(accept, id, post_id)

```ruby
begin
  # Delete a Status Page Post
  data, status_code, headers = api_instance.delete_status_page_post_with_http_info(accept, id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_status_page_post_update

> delete_status_page_post_update(accept, id, post_id, post_update_id)

Delete a Status Page Post Update

Delete a Post Update for a Post by Post ID and Post Update ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
post_update_id = 'post_update_id_example' # String | The ID of the Status Page Post Update.

begin
  # Delete a Status Page Post Update
  api_instance.delete_status_page_post_update(accept, id, post_id, post_update_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_post_update: #{e}"
end
```

#### Using the delete_status_page_post_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_status_page_post_update_with_http_info(accept, id, post_id, post_update_id)

```ruby
begin
  # Delete a Status Page Post Update
  data, status_code, headers = api_instance.delete_status_page_post_update_with_http_info(accept, id, post_id, post_update_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_post_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **post_update_id** | **String** | The ID of the Status Page Post Update. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_status_page_postmortem

> delete_status_page_postmortem(accept, id, post_id)

Delete a Post Postmortem

Delete a Postmortem for a Post by Post ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.

begin
  # Delete a Post Postmortem
  api_instance.delete_status_page_postmortem(accept, id, post_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_postmortem: #{e}"
end
```

#### Using the delete_status_page_postmortem_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_status_page_postmortem_with_http_info(accept, id, post_id)

```ruby
begin
  # Delete a Post Postmortem
  data, status_code, headers = api_instance.delete_status_page_postmortem_with_http_info(accept, id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_postmortem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_status_page_subscription

> delete_status_page_subscription(accept, id, subscription_id)

Delete a Status Page Subscription

Delete a Subscription for a Status Page by Status Page ID and Subscription ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
subscription_id = 'subscription_id_example' # String | The ID of the Status Page subscription.

begin
  # Delete a Status Page Subscription
  api_instance.delete_status_page_subscription(accept, id, subscription_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_subscription: #{e}"
end
```

#### Using the delete_status_page_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_status_page_subscription_with_http_info(accept, id, subscription_id)

```ruby
begin
  # Delete a Status Page Subscription
  data, status_code, headers = api_instance.delete_status_page_subscription_with_http_info(accept, id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->delete_status_page_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **subscription_id** | **String** | The ID of the Status Page subscription. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_post_update

> <CreateStatusPagePostUpdate201Response> get_post_update(accept, id, post_id, post_update_id)

Get a Status Page Post Update

Get a Post Update for a Post by Post ID and Post Update ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
post_update_id = 'post_update_id_example' # String | The ID of the Status Page Post Update.

begin
  # Get a Status Page Post Update
  result = api_instance.get_post_update(accept, id, post_id, post_update_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_post_update: #{e}"
end
```

#### Using the get_post_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePostUpdate201Response>, Integer, Hash)> get_post_update_with_http_info(accept, id, post_id, post_update_id)

```ruby
begin
  # Get a Status Page Post Update
  data, status_code, headers = api_instance.get_post_update_with_http_info(accept, id, post_id, post_update_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePostUpdate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_post_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **post_update_id** | **String** | The ID of the Status Page Post Update. |  |

### Return type

[**CreateStatusPagePostUpdate201Response**](CreateStatusPagePostUpdate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_postmortem

> <GetPostmortem200Response> get_postmortem(accept, id, post_id)

Get a Post Postmortem

Get a Postmortem for a Post by Post ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.

begin
  # Get a Post Postmortem
  result = api_instance.get_postmortem(accept, id, post_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_postmortem: #{e}"
end
```

#### Using the get_postmortem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostmortem200Response>, Integer, Hash)> get_postmortem_with_http_info(accept, id, post_id)

```ruby
begin
  # Get a Post Postmortem
  data, status_code, headers = api_instance.get_postmortem_with_http_info(accept, id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostmortem200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_postmortem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |

### Return type

[**GetPostmortem200Response**](GetPostmortem200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_impact

> <GetStatusPageImpact200Response> get_status_page_impact(accept, id, impact_id)

Get a Status Page Impact

Get an Impact for a Status Page by Status Page ID and Impact ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
impact_id = 'impact_id_example' # String | The ID of the Status Page Impact.

begin
  # Get a Status Page Impact
  result = api_instance.get_status_page_impact(accept, id, impact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_impact: #{e}"
end
```

#### Using the get_status_page_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusPageImpact200Response>, Integer, Hash)> get_status_page_impact_with_http_info(accept, id, impact_id)

```ruby
begin
  # Get a Status Page Impact
  data, status_code, headers = api_instance.get_status_page_impact_with_http_info(accept, id, impact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusPageImpact200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_impact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **impact_id** | **String** | The ID of the Status Page Impact. |  |

### Return type

[**GetStatusPageImpact200Response**](GetStatusPageImpact200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_post

> <CreateStatusPagePost201Response> get_status_page_post(accept, id, post_id, opts)

Get a Status Page Post

Get a Post for a Status Page by Status Page ID and Post ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  include: ['status_page_post_update'] # Array<String> | Array of additional Models to include in response.
}

begin
  # Get a Status Page Post
  result = api_instance.get_status_page_post(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_post: #{e}"
end
```

#### Using the get_status_page_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePost201Response>, Integer, Hash)> get_status_page_post_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # Get a Status Page Post
  data, status_code, headers = api_instance.get_status_page_post_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePost201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **include** | [**Array&lt;String&gt;**](String.md) | Array of additional Models to include in response. | [optional] |

### Return type

[**CreateStatusPagePost201Response**](CreateStatusPagePost201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_service

> <GetStatusPageService200Response> get_status_page_service(accept, id, service_id)

Get a Status Page Service

Get a Service for a Status Page by Status Page ID and Service ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
service_id = 'service_id_example' # String | The ID of the Status Page service.

begin
  # Get a Status Page Service
  result = api_instance.get_status_page_service(accept, id, service_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_service: #{e}"
end
```

#### Using the get_status_page_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusPageService200Response>, Integer, Hash)> get_status_page_service_with_http_info(accept, id, service_id)

```ruby
begin
  # Get a Status Page Service
  data, status_code, headers = api_instance.get_status_page_service_with_http_info(accept, id, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusPageService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **service_id** | **String** | The ID of the Status Page service. |  |

### Return type

[**GetStatusPageService200Response**](GetStatusPageService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_severity

> <GetStatusPageSeverity200Response> get_status_page_severity(accept, id, severity_id)

Get a Status Page Severity

Get a Severity for a Status Page by Status Page ID and Severity ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
severity_id = 'severity_id_example' # String | The ID of the Status Page severity.

begin
  # Get a Status Page Severity
  result = api_instance.get_status_page_severity(accept, id, severity_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_severity: #{e}"
end
```

#### Using the get_status_page_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusPageSeverity200Response>, Integer, Hash)> get_status_page_severity_with_http_info(accept, id, severity_id)

```ruby
begin
  # Get a Status Page Severity
  data, status_code, headers = api_instance.get_status_page_severity_with_http_info(accept, id, severity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusPageSeverity200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **severity_id** | **String** | The ID of the Status Page severity. |  |

### Return type

[**GetStatusPageSeverity200Response**](GetStatusPageSeverity200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_status

> <GetStatusPageStatus200Response> get_status_page_status(accept, id, status_id)

Get a Status Page Status

Get a Status for a Status Page by Status Page ID and Status ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
status_id = 'status_id_example' # String | The ID of the Status Page status.

begin
  # Get a Status Page Status
  result = api_instance.get_status_page_status(accept, id, status_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_status: #{e}"
end
```

#### Using the get_status_page_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusPageStatus200Response>, Integer, Hash)> get_status_page_status_with_http_info(accept, id, status_id)

```ruby
begin
  # Get a Status Page Status
  data, status_code, headers = api_instance.get_status_page_status_with_http_info(accept, id, status_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusPageStatus200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **status_id** | **String** | The ID of the Status Page status. |  |

### Return type

[**GetStatusPageStatus200Response**](GetStatusPageStatus200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_page_subscription

> <CreateStatusPageSubscription201Response> get_status_page_subscription(accept, id, subscription_id)

Get a Status Page Subscription

Get a Subscription for a Status Page by Status Page ID and Subscription ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
subscription_id = 'subscription_id_example' # String | The ID of the Status Page subscription.

begin
  # Get a Status Page Subscription
  result = api_instance.get_status_page_subscription(accept, id, subscription_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_subscription: #{e}"
end
```

#### Using the get_status_page_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPageSubscription201Response>, Integer, Hash)> get_status_page_subscription_with_http_info(accept, id, subscription_id)

```ruby
begin
  # Get a Status Page Subscription
  data, status_code, headers = api_instance.get_status_page_subscription_with_http_info(accept, id, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPageSubscription201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->get_status_page_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **subscription_id** | **String** | The ID of the Status Page subscription. |  |

### Return type

[**CreateStatusPageSubscription201Response**](CreateStatusPageSubscription201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_impacts

> <ListStatusPageImpacts200Response> list_status_page_impacts(accept, id, opts)

List Status Page Impacts

List Impacts for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  post_type: 'incident' # String | Filter by Post type.
}

begin
  # List Status Page Impacts
  result = api_instance.list_status_page_impacts(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_impacts: #{e}"
end
```

#### Using the list_status_page_impacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPageImpacts200Response>, Integer, Hash)> list_status_page_impacts_with_http_info(accept, id, opts)

```ruby
begin
  # List Status Page Impacts
  data, status_code, headers = api_instance.list_status_page_impacts_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPageImpacts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_impacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_type** | **String** | Filter by Post type. | [optional] |

### Return type

[**ListStatusPageImpacts200Response**](ListStatusPageImpacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_post_updates

> <ListStatusPagePostUpdates200Response> list_status_page_post_updates(accept, id, post_id, opts)

List Status Page Post Updates

List Post Updates for a Status Page by Status Page ID and Post ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  reviewed_status: 'approved' # String | Filter by the reviewed status of the Post Update to retrieve.
}

begin
  # List Status Page Post Updates
  result = api_instance.list_status_page_post_updates(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_post_updates: #{e}"
end
```

#### Using the list_status_page_post_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPagePostUpdates200Response>, Integer, Hash)> list_status_page_post_updates_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # List Status Page Post Updates
  data, status_code, headers = api_instance.list_status_page_post_updates_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPagePostUpdates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_post_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **reviewed_status** | **String** | Filter by the reviewed status of the Post Update to retrieve. | [optional] |

### Return type

[**ListStatusPagePostUpdates200Response**](ListStatusPagePostUpdates200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_posts

> <ListStatusPagePosts200Response> list_status_page_posts(accept, id, opts)

List Status Page Posts

List Posts for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  post_type: 'incident', # String | Filter by Post type.
  reviewed_status: 'approved', # String | Filter by the reviewed status of the Post to retrieve.
  status: ['inner_example'] # Array<String> | Filter by an array of Status identifiers.
}

begin
  # List Status Page Posts
  result = api_instance.list_status_page_posts(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_posts: #{e}"
end
```

#### Using the list_status_page_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPagePosts200Response>, Integer, Hash)> list_status_page_posts_with_http_info(accept, id, opts)

```ruby
begin
  # List Status Page Posts
  data, status_code, headers = api_instance.list_status_page_posts_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPagePosts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_type** | **String** | Filter by Post type. | [optional] |
| **reviewed_status** | **String** | Filter by the reviewed status of the Post to retrieve. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | Filter by an array of Status identifiers. | [optional] |

### Return type

[**ListStatusPagePosts200Response**](ListStatusPagePosts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_services

> <ListStatusPageServices200Response> list_status_page_services(accept, id)

List Status Page Services

List Services for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # List Status Page Services
  result = api_instance.list_status_page_services(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_services: #{e}"
end
```

#### Using the list_status_page_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPageServices200Response>, Integer, Hash)> list_status_page_services_with_http_info(accept, id)

```ruby
begin
  # List Status Page Services
  data, status_code, headers = api_instance.list_status_page_services_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPageServices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**ListStatusPageServices200Response**](ListStatusPageServices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_severities

> <ListStatusPageSeverities200Response> list_status_page_severities(accept, id, opts)

List Status Page Severities

List Severities for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  post_type: 'incident' # String | Filter by Post type.
}

begin
  # List Status Page Severities
  result = api_instance.list_status_page_severities(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_severities: #{e}"
end
```

#### Using the list_status_page_severities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPageSeverities200Response>, Integer, Hash)> list_status_page_severities_with_http_info(accept, id, opts)

```ruby
begin
  # List Status Page Severities
  data, status_code, headers = api_instance.list_status_page_severities_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPageSeverities200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_severities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_type** | **String** | Filter by Post type. | [optional] |

### Return type

[**ListStatusPageSeverities200Response**](ListStatusPageSeverities200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_statuses

> <ListStatusPageStatuses200Response> list_status_page_statuses(accept, id, opts)

List Status Page Statuses

List Statuses for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  post_type: 'incident' # String | Filter by Post type.
}

begin
  # List Status Page Statuses
  result = api_instance.list_status_page_statuses(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_statuses: #{e}"
end
```

#### Using the list_status_page_statuses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPageStatuses200Response>, Integer, Hash)> list_status_page_statuses_with_http_info(accept, id, opts)

```ruby
begin
  # List Status Page Statuses
  data, status_code, headers = api_instance.list_status_page_statuses_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPageStatuses200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_statuses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_type** | **String** | Filter by Post type. | [optional] |

### Return type

[**ListStatusPageStatuses200Response**](ListStatusPageStatuses200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_page_subscriptions

> <ListStatusPageSubscriptions200Response> list_status_page_subscriptions(accept, id, opts)

List Status Page Subscriptions

List Subscriptions for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  status: 'active', # String | Filter by Subscription status.
  channel: 'webhook' # String | Filter by Subscription channel.
}

begin
  # List Status Page Subscriptions
  result = api_instance.list_status_page_subscriptions(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_subscriptions: #{e}"
end
```

#### Using the list_status_page_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPageSubscriptions200Response>, Integer, Hash)> list_status_page_subscriptions_with_http_info(accept, id, opts)

```ruby
begin
  # List Status Page Subscriptions
  data, status_code, headers = api_instance.list_status_page_subscriptions_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPageSubscriptions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_page_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **status** | **String** | Filter by Subscription status. | [optional] |
| **channel** | **String** | Filter by Subscription channel. | [optional] |

### Return type

[**ListStatusPageSubscriptions200Response**](ListStatusPageSubscriptions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_pages

> <ListStatusPages200Response> list_status_pages(accept, opts)

List Status Pages

List Status Pages.  Scoped OAuth requires: `status_pages.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
opts = {
  status_page_type: 'public' # String | The type of the Status Page.
}

begin
  # List Status Pages
  result = api_instance.list_status_pages(accept, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_pages: #{e}"
end
```

#### Using the list_status_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusPages200Response>, Integer, Hash)> list_status_pages_with_http_info(accept, opts)

```ruby
begin
  # List Status Pages
  data, status_code, headers = api_instance.list_status_pages_with_http_info(accept, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusPages200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->list_status_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **status_page_type** | **String** | The type of the Status Page. | [optional] |

### Return type

[**ListStatusPages200Response**](ListStatusPages200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_status_page_post

> <CreateStatusPagePost201Response> update_status_page_post(accept, id, post_id, opts)

Update a Status Page Post

Update a Post for a Status Page by Status Page ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  update_status_page_post_request: OpenapiClient::UpdateStatusPagePostRequest.new({post: OpenapiClient::StatusPagePostPutRequest.new({type: 'status_page_post', title: 'title_example', post_type: 'incident', starts_at: Time.now, ends_at: Time.now, status_page: OpenapiClient::StatusPageImpactStatusPage.new({id: 'id_example'})})}) # UpdateStatusPagePostRequest | 
}

begin
  # Update a Status Page Post
  result = api_instance.update_status_page_post(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_post: #{e}"
end
```

#### Using the update_status_page_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePost201Response>, Integer, Hash)> update_status_page_post_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # Update a Status Page Post
  data, status_code, headers = api_instance.update_status_page_post_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePost201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **update_status_page_post_request** | [**UpdateStatusPagePostRequest**](UpdateStatusPagePostRequest.md) |  | [optional] |

### Return type

[**CreateStatusPagePost201Response**](CreateStatusPagePost201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_status_page_post_update

> <CreateStatusPagePostUpdate201Response> update_status_page_post_update(accept, id, post_id, post_update_id, opts)

Update a Status Page Post Update

Update a Post Update for a Post by Post ID and Post Update ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
post_update_id = 'post_update_id_example' # String | The ID of the Status Page Post Update.
opts = {
  create_status_page_post_update_request: OpenapiClient::CreateStatusPagePostUpdateRequest.new({post_update: OpenapiClient::StatusPagePostUpdateRequest.new({post: OpenapiClient::StatusPagePostUpdatePost.new({id: 'id_example'}), message: 'message_example', status: OpenapiClient::StatusPagePostUpdateStatus.new({id: 'id_example'}), severity: OpenapiClient::StatusPagePostUpdateSeverity.new({id: 'id_example'}), impacted_services: [TODO], update_frequency_ms: 37, notify_subscribers: false, type: 'type_example'})}) # CreateStatusPagePostUpdateRequest | 
}

begin
  # Update a Status Page Post Update
  result = api_instance.update_status_page_post_update(accept, id, post_id, post_update_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_post_update: #{e}"
end
```

#### Using the update_status_page_post_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStatusPagePostUpdate201Response>, Integer, Hash)> update_status_page_post_update_with_http_info(accept, id, post_id, post_update_id, opts)

```ruby
begin
  # Update a Status Page Post Update
  data, status_code, headers = api_instance.update_status_page_post_update_with_http_info(accept, id, post_id, post_update_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStatusPagePostUpdate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_post_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **post_update_id** | **String** | The ID of the Status Page Post Update. |  |
| **create_status_page_post_update_request** | [**CreateStatusPagePostUpdateRequest**](CreateStatusPagePostUpdateRequest.md) |  | [optional] |

### Return type

[**CreateStatusPagePostUpdate201Response**](CreateStatusPagePostUpdate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_status_page_postmortem

> <GetPostmortem200Response> update_status_page_postmortem(accept, id, post_id, opts)

Update a Post Postmortem

Update a Postmortem for a Post by Post ID.  Scoped OAuth requires: `status_pages.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::StatusPagesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
post_id = 'post_id_example' # String | The ID of the Status Page Post.
opts = {
  update_status_page_postmortem_request: OpenapiClient::UpdateStatusPagePostmortemRequest.new({postmortem: OpenapiClient::StatusPagePostmortemRequest.new({type: 'status_page_post_postmortem', post: OpenapiClient::StatusPagePostUpdatePost.new({id: 'id_example'}), message: 'message_example', notify_subscribers: false})}) # UpdateStatusPagePostmortemRequest | 
}

begin
  # Update a Post Postmortem
  result = api_instance.update_status_page_postmortem(accept, id, post_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_postmortem: #{e}"
end
```

#### Using the update_status_page_postmortem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostmortem200Response>, Integer, Hash)> update_status_page_postmortem_with_http_info(accept, id, post_id, opts)

```ruby
begin
  # Update a Post Postmortem
  data, status_code, headers = api_instance.update_status_page_postmortem_with_http_info(accept, id, post_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostmortem200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StatusPagesApi->update_status_page_postmortem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_id** | **String** | The ID of the Status Page Post. |  |
| **update_status_page_postmortem_request** | [**UpdateStatusPagePostmortemRequest**](UpdateStatusPagePostmortemRequest.md) |  | [optional] |

### Return type

[**GetPostmortem200Response**](GetPostmortem200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

