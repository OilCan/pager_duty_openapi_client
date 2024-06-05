# PagerDutyOpenapiClient::WebhooksApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_subscription**](WebhooksApi.md#create_webhook_subscription) | **POST** /webhook_subscriptions | Create a webhook subscription |
| [**delete_webhook_subscription**](WebhooksApi.md#delete_webhook_subscription) | **DELETE** /webhook_subscriptions/{id} | Delete a webhook subscription |
| [**enable_webhook_subscription**](WebhooksApi.md#enable_webhook_subscription) | **POST** /webhook_subscriptions/{id}/enable | Enable a webhook subscription |
| [**get_webhook_subscription**](WebhooksApi.md#get_webhook_subscription) | **GET** /webhook_subscriptions/{id} | Get a webhook subscription |
| [**list_webhook_subscriptions**](WebhooksApi.md#list_webhook_subscriptions) | **GET** /webhook_subscriptions | List webhook subscriptions |
| [**test_webhook_subscription**](WebhooksApi.md#test_webhook_subscription) | **POST** /webhook_subscriptions/{id}/ping | Test a webhook subscription |
| [**update_webhook_subscription**](WebhooksApi.md#update_webhook_subscription) | **PUT** /webhook_subscriptions/{id} | Update a webhook subscription |


## create_webhook_subscription

> <CreateWebhookSubscriptionRequest> create_webhook_subscription(accept, content_type, opts)

Create a webhook subscription

Creates a new webhook subscription.  For more information on webhook subscriptions and how they are used to configure v3 webhooks see the [Webhooks v3 Developer Documentation](https://developer.pagerduty.com/docs/webhooks/v3-overview/).  Scoped OAuth requires: `webhook_subscriptions.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_webhook_subscription_request: PagerDutyOpenapiClient::CreateWebhookSubscriptionRequest.new({webhook_subscription: PagerDutyOpenapiClient::WebhookSubscription.new({type: 'webhook_subscription', delivery_method: PagerDutyOpenapiClient::WebhookSubscriptionDeliveryMethod.new({type: 'http_delivery_method', url: 'url_example'}), events: ['events_example'], filter: PagerDutyOpenapiClient::WebhookSubscriptionFilter.new({type: 'account_reference'})})}) # CreateWebhookSubscriptionRequest | 
}

begin
  # Create a webhook subscription
  result = api_instance.create_webhook_subscription(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_subscription: #{e}"
end
```

#### Using the create_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookSubscriptionRequest>, Integer, Hash)> create_webhook_subscription_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a webhook subscription
  data, status_code, headers = api_instance.create_webhook_subscription_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookSubscriptionRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_webhook_subscription_request** | [**CreateWebhookSubscriptionRequest**](CreateWebhookSubscriptionRequest.md) |  | [optional] |

### Return type

[**CreateWebhookSubscriptionRequest**](CreateWebhookSubscriptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook_subscription

> delete_webhook_subscription(accept, id)

Delete a webhook subscription

Deletes a webhook subscription.  Scoped OAuth requires: `webhook_subscriptions.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a webhook subscription
  api_instance.delete_webhook_subscription(accept, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_subscription: #{e}"
end
```

#### Using the delete_webhook_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_subscription_with_http_info(accept, id)

```ruby
begin
  # Delete a webhook subscription
  data, status_code, headers = api_instance.delete_webhook_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enable_webhook_subscription

> <CreateWebhookSubscriptionRequest> enable_webhook_subscription(accept, id)

Enable a webhook subscription

Enable a webhook subscription that is temporarily disabled. (This API does not require a request body.)  Webhook subscriptions can become temporarily disabled when the subscription's delivery method is repeatedly rejected by the server.  Scoped OAuth requires: `webhook_subscriptions.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Enable a webhook subscription
  result = api_instance.enable_webhook_subscription(accept, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->enable_webhook_subscription: #{e}"
end
```

#### Using the enable_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookSubscriptionRequest>, Integer, Hash)> enable_webhook_subscription_with_http_info(accept, id)

```ruby
begin
  # Enable a webhook subscription
  data, status_code, headers = api_instance.enable_webhook_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookSubscriptionRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->enable_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateWebhookSubscriptionRequest**](CreateWebhookSubscriptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_subscription

> <CreateWebhookSubscriptionRequest> get_webhook_subscription(accept, id)

Get a webhook subscription

Gets details about an existing webhook subscription.  Scoped OAuth requires: `webhook_subscriptions.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Get a webhook subscription
  result = api_instance.get_webhook_subscription(accept, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_subscription: #{e}"
end
```

#### Using the get_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookSubscriptionRequest>, Integer, Hash)> get_webhook_subscription_with_http_info(accept, id)

```ruby
begin
  # Get a webhook subscription
  data, status_code, headers = api_instance.get_webhook_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookSubscriptionRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateWebhookSubscriptionRequest**](CreateWebhookSubscriptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhook_subscriptions

> <ListWebhookSubscriptions200Response> list_webhook_subscriptions(accept, opts)

List webhook subscriptions

List existing webhook subscriptions.  The `filter_type` and `filter_id` query parameters may be used to only show subscriptions for a particular _service_ or _team_.  For more information on webhook subscriptions and how they are used to configure v3 webhooks see the [Webhooks v3 Developer Documentation](https://developer.pagerduty.com/docs/webhooks/v3-overview/).  Scoped OAuth requires: `webhook_subscriptions.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  filter_type: 'service', # String | The type of resource to filter upon.
  filter_id: 'filter_id_example' # String | The id of the resource to filter upon.
}

begin
  # List webhook subscriptions
  result = api_instance.list_webhook_subscriptions(accept, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->list_webhook_subscriptions: #{e}"
end
```

#### Using the list_webhook_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookSubscriptions200Response>, Integer, Hash)> list_webhook_subscriptions_with_http_info(accept, opts)

```ruby
begin
  # List webhook subscriptions
  data, status_code, headers = api_instance.list_webhook_subscriptions_with_http_info(accept, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookSubscriptions200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->list_webhook_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **filter_type** | **String** | The type of resource to filter upon. | [optional] |
| **filter_id** | **String** | The id of the resource to filter upon. | [optional] |

### Return type

[**ListWebhookSubscriptions200Response**](ListWebhookSubscriptions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_webhook_subscription

> test_webhook_subscription(accept, id)

Test a webhook subscription

Test a webhook subscription.  Fires a test event against the webhook subscription.  If properly configured, this will deliver the `pagey.ping` webhook event to the destination.  Scoped OAuth requires: `webhook_subscriptions.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Test a webhook subscription
  api_instance.test_webhook_subscription(accept, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_subscription: #{e}"
end
```

#### Using the test_webhook_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> test_webhook_subscription_with_http_info(accept, id)

```ruby
begin
  # Test a webhook subscription
  data, status_code, headers = api_instance.test_webhook_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_webhook_subscription

> <CreateWebhookSubscriptionRequest> update_webhook_subscription(accept, content_type, id, opts)

Update a webhook subscription

Updates an existing webhook subscription.  Only the fields being updated need to be included on the request.  This operation does not support updating the `delivery_method` of the webhook subscription.  Scoped OAuth requires: `webhook_subscriptions.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::WebhooksApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  webhook_subscription_update: PagerDutyOpenapiClient::WebhookSubscriptionUpdate.new # WebhookSubscriptionUpdate | 
}

begin
  # Update a webhook subscription
  result = api_instance.update_webhook_subscription(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_subscription: #{e}"
end
```

#### Using the update_webhook_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookSubscriptionRequest>, Integer, Hash)> update_webhook_subscription_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a webhook subscription
  data, status_code, headers = api_instance.update_webhook_subscription_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookSubscriptionRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **webhook_subscription_update** | [**WebhookSubscriptionUpdate**](WebhookSubscriptionUpdate.md) |  | [optional] |

### Return type

[**CreateWebhookSubscriptionRequest**](CreateWebhookSubscriptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

