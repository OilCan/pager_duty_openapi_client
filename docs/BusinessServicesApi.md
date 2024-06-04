# OpenapiClient::BusinessServicesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_business_service**](BusinessServicesApi.md#create_business_service) | **POST** /business_services | Create a Business Service |
| [**create_business_service_account_subscription**](BusinessServicesApi.md#create_business_service_account_subscription) | **POST** /business_services/{id}/account_subscription | Create Business Service Account Subscription |
| [**create_business_service_notification_subscribers**](BusinessServicesApi.md#create_business_service_notification_subscribers) | **POST** /business_services/{id}/subscribers | Create Business Service Subscribers |
| [**delete_business_service**](BusinessServicesApi.md#delete_business_service) | **DELETE** /business_services/{id} | Delete a Business Service |
| [**delete_business_service_priority_thresholds**](BusinessServicesApi.md#delete_business_service_priority_thresholds) | **DELETE** /business_services/priority_thresholds | Deletes the account-level priority threshold for Business Service impact |
| [**get_business_service**](BusinessServicesApi.md#get_business_service) | **GET** /business_services/{id} | Get a Business Service |
| [**get_business_service_impacts**](BusinessServicesApi.md#get_business_service_impacts) | **GET** /business_services/impacts | List Business Services sorted by impacted status |
| [**get_business_service_priority_thresholds**](BusinessServicesApi.md#get_business_service_priority_thresholds) | **GET** /business_services/priority_thresholds | Get the global priority threshold for a Business Service to be considered impacted by an Incident |
| [**get_business_service_subscribers**](BusinessServicesApi.md#get_business_service_subscribers) | **GET** /business_services/{id}/subscribers | List Business Service Subscribers |
| [**get_business_service_supporting_service_impacts**](BusinessServicesApi.md#get_business_service_supporting_service_impacts) | **GET** /business_services/{id}/supporting_services/impacts | List the supporting Business Services for the given Business Service Id, sorted by impacted status. |
| [**get_business_service_top_level_impactors**](BusinessServicesApi.md#get_business_service_top_level_impactors) | **GET** /business_services/impactors | List Impactors affecting Business Services |
| [**list_business_services**](BusinessServicesApi.md#list_business_services) | **GET** /business_services | List Business Services |
| [**put_business_service_priority_thresholds**](BusinessServicesApi.md#put_business_service_priority_thresholds) | **PUT** /business_services/priority_thresholds | Set the Account-level priority threshold for Business Service impact. |
| [**remove_business_service_account_subscription**](BusinessServicesApi.md#remove_business_service_account_subscription) | **DELETE** /business_services/{id}/account_subscription | Delete Business Service Account Subscription |
| [**remove_business_service_notification_subscriber**](BusinessServicesApi.md#remove_business_service_notification_subscriber) | **POST** /business_services/{id}/unsubscribe | Remove Business Service Subscribers |
| [**update_business_service**](BusinessServicesApi.md#update_business_service) | **PUT** /business_services/{id} | Update a Business Service |


## create_business_service

> <CreateBusinessService200Response> create_business_service(accept, content_type, opts)

Create a Business Service

Create a new Business Service.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  There is a limit of 5,000 business services per account. If the limit is reached, the API will respond with an error.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_business_service_request: OpenapiClient::CreateBusinessServiceRequest.new # CreateBusinessServiceRequest | 
}

begin
  # Create a Business Service
  result = api_instance.create_business_service(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service: #{e}"
end
```

#### Using the create_business_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessService200Response>, Integer, Hash)> create_business_service_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a Business Service
  data, status_code, headers = api_instance.create_business_service_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_business_service_request** | [**CreateBusinessServiceRequest**](CreateBusinessServiceRequest.md) |  | [optional] |

### Return type

[**CreateBusinessService200Response**](CreateBusinessService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_service_account_subscription

> <CreateBusinessServiceAccountSubscription200Response> create_business_service_account_subscription(accept, id)

Create Business Service Account Subscription

Subscribe your Account to a Business Service.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Create Business Service Account Subscription
  result = api_instance.create_business_service_account_subscription(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service_account_subscription: #{e}"
end
```

#### Using the create_business_service_account_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessServiceAccountSubscription200Response>, Integer, Hash)> create_business_service_account_subscription_with_http_info(accept, id)

```ruby
begin
  # Create Business Service Account Subscription
  data, status_code, headers = api_instance.create_business_service_account_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessServiceAccountSubscription200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service_account_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateBusinessServiceAccountSubscription200Response**](CreateBusinessServiceAccountSubscription200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_business_service_notification_subscribers

> <CreateBusinessServiceNotificationSubscribers200Response> create_business_service_notification_subscribers(accept, id, opts)

Create Business Service Subscribers

Subscribe the given entities to the given Business Service.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_business_service_notification_subscribers_request: OpenapiClient::CreateBusinessServiceNotificationSubscribersRequest.new({subscribers: [OpenapiClient::NotificationSubscriber.new]}) # CreateBusinessServiceNotificationSubscribersRequest | The entities to subscribe.
}

begin
  # Create Business Service Subscribers
  result = api_instance.create_business_service_notification_subscribers(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service_notification_subscribers: #{e}"
end
```

#### Using the create_business_service_notification_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessServiceNotificationSubscribers200Response>, Integer, Hash)> create_business_service_notification_subscribers_with_http_info(accept, id, opts)

```ruby
begin
  # Create Business Service Subscribers
  data, status_code, headers = api_instance.create_business_service_notification_subscribers_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessServiceNotificationSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->create_business_service_notification_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_business_service_notification_subscribers_request** | [**CreateBusinessServiceNotificationSubscribersRequest**](CreateBusinessServiceNotificationSubscribersRequest.md) | The entities to subscribe. | [optional] |

### Return type

[**CreateBusinessServiceNotificationSubscribers200Response**](CreateBusinessServiceNotificationSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_business_service

> delete_business_service(accept, content_type, id)

Delete a Business Service

Delete an existing Business Service.  Once the service is deleted, it will not be accessible from the web UI and new incidents won't be able to be created for this service.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a Business Service
  api_instance.delete_business_service(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->delete_business_service: #{e}"
end
```

#### Using the delete_business_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_business_service_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a Business Service
  data, status_code, headers = api_instance.delete_business_service_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->delete_business_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_service_priority_thresholds

> delete_business_service_priority_thresholds(accept, x_early_access)

Deletes the account-level priority threshold for Business Service impact

Clears the Priority Threshold for the account.  If the priority threshold is cleared, any Incident with a Priority set will be able to impact Business Services. Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!

begin
  # Deletes the account-level priority threshold for Business Service impact
  api_instance.delete_business_service_priority_thresholds(accept, x_early_access)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->delete_business_service_priority_thresholds: #{e}"
end
```

#### Using the delete_business_service_priority_thresholds_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_business_service_priority_thresholds_with_http_info(accept, x_early_access)

```ruby
begin
  # Deletes the account-level priority threshold for Business Service impact
  data, status_code, headers = api_instance.delete_business_service_priority_thresholds_with_http_info(accept, x_early_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->delete_business_service_priority_thresholds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service

> <CreateBusinessService200Response> get_business_service(accept, content_type, id)

Get a Business Service

Get details about an existing Business Service.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a Business Service
  result = api_instance.get_business_service(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service: #{e}"
end
```

#### Using the get_business_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessService200Response>, Integer, Hash)> get_business_service_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a Business Service
  data, status_code, headers = api_instance.get_business_service_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateBusinessService200Response**](CreateBusinessService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service_impacts

> <GetBusinessServiceSupportingServiceImpacts200Response> get_business_service_impacts(accept, x_early_access, opts)

List Business Services sorted by impacted status

Retrieve a list top-level Business Services sorted by highest Impact with `status` included. When called without the `ids[]` parameter, this endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get impact information about a specific set of Business Services, use the `ids[]` parameter. Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!
opts = {
  additional_fields: 'services.highest_impacting_priority', # String | Provides access to additional fields such as highest priority per business service and total impacted count
  ids: 'ids_example' # String | The IDs of the resources.
}

begin
  # List Business Services sorted by impacted status
  result = api_instance.get_business_service_impacts(accept, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_impacts: #{e}"
end
```

#### Using the get_business_service_impacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceSupportingServiceImpacts200Response>, Integer, Hash)> get_business_service_impacts_with_http_info(accept, x_early_access, opts)

```ruby
begin
  # List Business Services sorted by impacted status
  data, status_code, headers = api_instance.get_business_service_impacts_with_http_info(accept, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceSupportingServiceImpacts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_impacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |
| **additional_fields** | **String** | Provides access to additional fields such as highest priority per business service and total impacted count | [optional] |
| **ids** | **String** | The IDs of the resources. | [optional] |

### Return type

[**GetBusinessServiceSupportingServiceImpacts200Response**](GetBusinessServiceSupportingServiceImpacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service_priority_thresholds

> <GetBusinessServicePriorityThresholds200Response> get_business_service_priority_thresholds(accept, x_early_access)

Get the global priority threshold for a Business Service to be considered impacted by an Incident

Retrieves the priority threshold information for an account.  Currently, there is a `global_threshold` that can be set for the account.  Incidents that have a priority meeting or exceeding this threshold will be considered impacting on any Business Service that depends on the Service to which the Incident belongs. Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!

begin
  # Get the global priority threshold for a Business Service to be considered impacted by an Incident
  result = api_instance.get_business_service_priority_thresholds(accept, x_early_access)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_priority_thresholds: #{e}"
end
```

#### Using the get_business_service_priority_thresholds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServicePriorityThresholds200Response>, Integer, Hash)> get_business_service_priority_thresholds_with_http_info(accept, x_early_access)

```ruby
begin
  # Get the global priority threshold for a Business Service to be considered impacted by an Incident
  data, status_code, headers = api_instance.get_business_service_priority_thresholds_with_http_info(accept, x_early_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServicePriorityThresholds200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_priority_thresholds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |

### Return type

[**GetBusinessServicePriorityThresholds200Response**](GetBusinessServicePriorityThresholds200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service_subscribers

> <GetBusinessServiceSubscribers200Response> get_business_service_subscribers(accept, id)

List Business Service Subscribers

Retrieve a list of Notification Subscribers on the Business Service.  <!-- theme: warning --> > Users must be added through `POST /business_services/{id}/subscribers` to be returned from this endpoint. Scoped OAuth requires: `subscribers.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # List Business Service Subscribers
  result = api_instance.get_business_service_subscribers(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_subscribers: #{e}"
end
```

#### Using the get_business_service_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceSubscribers200Response>, Integer, Hash)> get_business_service_subscribers_with_http_info(accept, id)

```ruby
begin
  # List Business Service Subscribers
  data, status_code, headers = api_instance.get_business_service_subscribers_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetBusinessServiceSubscribers200Response**](GetBusinessServiceSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service_supporting_service_impacts

> <GetBusinessServiceSupportingServiceImpacts200Response> get_business_service_supporting_service_impacts(accept, id, x_early_access, opts)

List the supporting Business Services for the given Business Service Id, sorted by impacted status.

Retrieve of Business Services that support the given Business Service sorted by highest Impact with `status` included. This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get impact information about a specific set of Business Services, use the `ids[]` parameter on the `/business_services/impacts` endpoint. Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!
opts = {
  additional_fields: 'services.highest_impacting_priority', # String | Provides access to additional fields such as highest priority per business service and total impacted count
  ids: 'ids_example' # String | The IDs of the resources.
}

begin
  # List the supporting Business Services for the given Business Service Id, sorted by impacted status.
  result = api_instance.get_business_service_supporting_service_impacts(accept, id, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_supporting_service_impacts: #{e}"
end
```

#### Using the get_business_service_supporting_service_impacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceSupportingServiceImpacts200Response>, Integer, Hash)> get_business_service_supporting_service_impacts_with_http_info(accept, id, x_early_access, opts)

```ruby
begin
  # List the supporting Business Services for the given Business Service Id, sorted by impacted status.
  data, status_code, headers = api_instance.get_business_service_supporting_service_impacts_with_http_info(accept, id, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceSupportingServiceImpacts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_supporting_service_impacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |
| **additional_fields** | **String** | Provides access to additional fields such as highest priority per business service and total impacted count | [optional] |
| **ids** | **String** | The IDs of the resources. | [optional] |

### Return type

[**GetBusinessServiceSupportingServiceImpacts200Response**](GetBusinessServiceSupportingServiceImpacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_service_top_level_impactors

> <GetBusinessServiceTopLevelImpactors200Response> get_business_service_top_level_impactors(accept, x_early_access, opts)

List Impactors affecting Business Services

Retrieve a list of Impactors for the top-level Business Services on the account. Impactors are currently limited to Incidents.  This endpoint does not return an exhaustive list of Impactors but rather provides access to the highest priority Impactors for the Business Services in question up to the limit of 200.  To get Impactors for a specific set of Business Services, use the `ids[]` parameter.  The returned Impactors are sorted first by priority and secondarily by their creation date. Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!
opts = {
  ids: 'ids_example' # String | The IDs of the resources.
}

begin
  # List Impactors affecting Business Services
  result = api_instance.get_business_service_top_level_impactors(accept, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_top_level_impactors: #{e}"
end
```

#### Using the get_business_service_top_level_impactors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceTopLevelImpactors200Response>, Integer, Hash)> get_business_service_top_level_impactors_with_http_info(accept, x_early_access, opts)

```ruby
begin
  # List Impactors affecting Business Services
  data, status_code, headers = api_instance.get_business_service_top_level_impactors_with_http_info(accept, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceTopLevelImpactors200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->get_business_service_top_level_impactors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |
| **ids** | **String** | The IDs of the resources. | [optional] |

### Return type

[**GetBusinessServiceTopLevelImpactors200Response**](GetBusinessServiceTopLevelImpactors200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_services

> <ListBusinessServices200Response> list_business_services(accept, content_type, opts)

List Business Services

List existing Business Services.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List Business Services
  result = api_instance.list_business_services(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->list_business_services: #{e}"
end
```

#### Using the list_business_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessServices200Response>, Integer, Hash)> list_business_services_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Business Services
  data, status_code, headers = api_instance.list_business_services_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessServices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->list_business_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |

### Return type

[**ListBusinessServices200Response**](ListBusinessServices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_business_service_priority_thresholds

> <PutBusinessServicePriorityThresholds200Response> put_business_service_priority_thresholds(accept, x_early_access, opts)

Set the Account-level priority threshold for Business Service impact.

Set the Account-level priority threshold for Business Service. Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!
opts = {
  put_business_service_priority_thresholds_request: OpenapiClient::PutBusinessServicePriorityThresholdsRequest.new({global_threshold: OpenapiClient::PutBusinessServicePriorityThresholdsRequestGlobalThreshold.new({id: 'id_example', order: 3.56})}) # PutBusinessServicePriorityThresholdsRequest | Set the `id` and `order` of the global Priority Threshold. These values can be obtained by calling the `/priorities` endpoint.  Once set, Incidents must be at or above the specified level in order to impact Business Services.  An exception to this rule is if the Incident has been added to the incident directly using the `PUT /incidents/{id}/business_services/{business_service_id}/impacts` endpoint.
}

begin
  # Set the Account-level priority threshold for Business Service impact.
  result = api_instance.put_business_service_priority_thresholds(accept, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->put_business_service_priority_thresholds: #{e}"
end
```

#### Using the put_business_service_priority_thresholds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutBusinessServicePriorityThresholds200Response>, Integer, Hash)> put_business_service_priority_thresholds_with_http_info(accept, x_early_access, opts)

```ruby
begin
  # Set the Account-level priority threshold for Business Service impact.
  data, status_code, headers = api_instance.put_business_service_priority_thresholds_with_http_info(accept, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutBusinessServicePriorityThresholds200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->put_business_service_priority_thresholds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |
| **put_business_service_priority_thresholds_request** | [**PutBusinessServicePriorityThresholdsRequest**](PutBusinessServicePriorityThresholdsRequest.md) | Set the &#x60;id&#x60; and &#x60;order&#x60; of the global Priority Threshold. These values can be obtained by calling the &#x60;/priorities&#x60; endpoint.  Once set, Incidents must be at or above the specified level in order to impact Business Services.  An exception to this rule is if the Incident has been added to the incident directly using the &#x60;PUT /incidents/{id}/business_services/{business_service_id}/impacts&#x60; endpoint. | [optional] |

### Return type

[**PutBusinessServicePriorityThresholds200Response**](PutBusinessServicePriorityThresholds200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_business_service_account_subscription

> remove_business_service_account_subscription(accept, id)

Delete Business Service Account Subscription

Unsubscribe your Account from a Business Service.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Delete Business Service Account Subscription
  api_instance.remove_business_service_account_subscription(accept, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->remove_business_service_account_subscription: #{e}"
end
```

#### Using the remove_business_service_account_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_business_service_account_subscription_with_http_info(accept, id)

```ruby
begin
  # Delete Business Service Account Subscription
  data, status_code, headers = api_instance.remove_business_service_account_subscription_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->remove_business_service_account_subscription_with_http_info: #{e}"
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
- **Accept**: application/json


## remove_business_service_notification_subscriber

> <RemoveBusinessServiceNotificationSubscriber200Response> remove_business_service_notification_subscriber(accept, id, opts)

Remove Business Service Subscribers

Unsubscribes the matching Subscribers from a Business Service.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_business_service_notification_subscribers_request: OpenapiClient::CreateBusinessServiceNotificationSubscribersRequest.new({subscribers: [OpenapiClient::NotificationSubscriber.new]}) # CreateBusinessServiceNotificationSubscribersRequest | The entities to unsubscribe.
}

begin
  # Remove Business Service Subscribers
  result = api_instance.remove_business_service_notification_subscriber(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->remove_business_service_notification_subscriber: #{e}"
end
```

#### Using the remove_business_service_notification_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveBusinessServiceNotificationSubscriber200Response>, Integer, Hash)> remove_business_service_notification_subscriber_with_http_info(accept, id, opts)

```ruby
begin
  # Remove Business Service Subscribers
  data, status_code, headers = api_instance.remove_business_service_notification_subscriber_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveBusinessServiceNotificationSubscriber200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->remove_business_service_notification_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_business_service_notification_subscribers_request** | [**CreateBusinessServiceNotificationSubscribersRequest**](CreateBusinessServiceNotificationSubscribersRequest.md) | The entities to unsubscribe. | [optional] |

### Return type

[**RemoveBusinessServiceNotificationSubscriber200Response**](RemoveBusinessServiceNotificationSubscriber200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_service

> <CreateBusinessService200Response> update_business_service(accept, content_type, id, opts)

Update a Business Service

Update an existing Business Service. NOTE that this endpoint also accepts the PATCH verb.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::BusinessServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  update_business_service_request: OpenapiClient::UpdateBusinessServiceRequest.new # UpdateBusinessServiceRequest | 
}

begin
  # Update a Business Service
  result = api_instance.update_business_service(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->update_business_service: #{e}"
end
```

#### Using the update_business_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessService200Response>, Integer, Hash)> update_business_service_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a Business Service
  data, status_code, headers = api_instance.update_business_service_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BusinessServicesApi->update_business_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **update_business_service_request** | [**UpdateBusinessServiceRequest**](UpdateBusinessServiceRequest.md) |  | [optional] |

### Return type

[**CreateBusinessService200Response**](CreateBusinessService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

