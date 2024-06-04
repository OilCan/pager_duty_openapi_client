# OpenapiClient::MaintenanceWindowsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_maintenance_window**](MaintenanceWindowsApi.md#create_maintenance_window) | **POST** /maintenance_windows | Create a maintenance window |
| [**delete_maintenance_window**](MaintenanceWindowsApi.md#delete_maintenance_window) | **DELETE** /maintenance_windows/{id} | Delete or end a maintenance window |
| [**get_maintenance_window**](MaintenanceWindowsApi.md#get_maintenance_window) | **GET** /maintenance_windows/{id} | Get a maintenance window |
| [**list_maintenance_windows**](MaintenanceWindowsApi.md#list_maintenance_windows) | **GET** /maintenance_windows | List maintenance windows |
| [**update_maintenance_window**](MaintenanceWindowsApi.md#update_maintenance_window) | **PUT** /maintenance_windows/{id} | Update a maintenance window |


## create_maintenance_window

> <CreateMaintenanceWindowRequest> create_maintenance_window(accept, content_type, from, opts)

Create a maintenance window

Create a new maintenance window for the specified services. No new incidents will be created for a service that is in maintenance.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::MaintenanceWindowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_maintenance_window_request: OpenapiClient::CreateMaintenanceWindowRequest.new({maintenance_window: OpenapiClient::MaintenanceWindow.new({type: 'maintenance_window', start_time: Time.now, end_time: Time.now, services: [OpenapiClient::ServiceReference.new({type: 'service_reference'})]})}) # CreateMaintenanceWindowRequest | The maintenance window object.
}

begin
  # Create a maintenance window
  result = api_instance.create_maintenance_window(accept, content_type, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->create_maintenance_window: #{e}"
end
```

#### Using the create_maintenance_window_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMaintenanceWindowRequest>, Integer, Hash)> create_maintenance_window_with_http_info(accept, content_type, from, opts)

```ruby
begin
  # Create a maintenance window
  data, status_code, headers = api_instance.create_maintenance_window_with_http_info(accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMaintenanceWindowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->create_maintenance_window_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_maintenance_window_request** | [**CreateMaintenanceWindowRequest**](CreateMaintenanceWindowRequest.md) | The maintenance window object. | [optional] |

### Return type

[**CreateMaintenanceWindowRequest**](CreateMaintenanceWindowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_maintenance_window

> delete_maintenance_window(accept, content_type, id)

Delete or end a maintenance window

Delete an existing maintenance window if it's in the future, or end it if it's currently on-going. If the maintenance window has already ended it cannot be deleted.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::MaintenanceWindowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete or end a maintenance window
  api_instance.delete_maintenance_window(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->delete_maintenance_window: #{e}"
end
```

#### Using the delete_maintenance_window_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_maintenance_window_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete or end a maintenance window
  data, status_code, headers = api_instance.delete_maintenance_window_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->delete_maintenance_window_with_http_info: #{e}"
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


## get_maintenance_window

> <CreateMaintenanceWindowRequest> get_maintenance_window(accept, content_type, id, opts)

Get a maintenance window

Get an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::MaintenanceWindowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'teams' # String | Array of additional Models to include in response.
}

begin
  # Get a maintenance window
  result = api_instance.get_maintenance_window(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->get_maintenance_window: #{e}"
end
```

#### Using the get_maintenance_window_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMaintenanceWindowRequest>, Integer, Hash)> get_maintenance_window_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a maintenance window
  data, status_code, headers = api_instance.get_maintenance_window_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMaintenanceWindowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->get_maintenance_window_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**CreateMaintenanceWindowRequest**](CreateMaintenanceWindowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_maintenance_windows

> <ListMaintenanceWindows200Response> list_maintenance_windows(accept, content_type, opts)

List maintenance windows

List existing maintenance windows, optionally filtered by service and/or team, or whether they are from the past, present or future.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::MaintenanceWindowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  service_ids: ['inner_example'], # Array<String> | An array of service IDs. Only results related to these services will be returned.
  include: 'teams', # String | Array of additional Models to include in response.
  filter: 'past' # String | Only return maintenance windows in a given state.
}

begin
  # List maintenance windows
  result = api_instance.list_maintenance_windows(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->list_maintenance_windows: #{e}"
end
```

#### Using the list_maintenance_windows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMaintenanceWindows200Response>, Integer, Hash)> list_maintenance_windows_with_http_info(accept, content_type, opts)

```ruby
begin
  # List maintenance windows
  data, status_code, headers = api_instance.list_maintenance_windows_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMaintenanceWindows200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->list_maintenance_windows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **service_ids** | [**Array&lt;String&gt;**](String.md) | An array of service IDs. Only results related to these services will be returned. | [optional] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |
| **filter** | **String** | Only return maintenance windows in a given state. | [optional] |

### Return type

[**ListMaintenanceWindows200Response**](ListMaintenanceWindows200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_maintenance_window

> <CreateMaintenanceWindowRequest> update_maintenance_window(accept, content_type, id, opts)

Update a maintenance window

Update an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::MaintenanceWindowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_maintenance_window_request: OpenapiClient::CreateMaintenanceWindowRequest.new({maintenance_window: OpenapiClient::MaintenanceWindow.new({type: 'maintenance_window', start_time: Time.now, end_time: Time.now, services: [OpenapiClient::ServiceReference.new({type: 'service_reference'})]})}) # CreateMaintenanceWindowRequest | The maintenance window to be updated.
}

begin
  # Update a maintenance window
  result = api_instance.update_maintenance_window(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->update_maintenance_window: #{e}"
end
```

#### Using the update_maintenance_window_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateMaintenanceWindowRequest>, Integer, Hash)> update_maintenance_window_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a maintenance window
  data, status_code, headers = api_instance.update_maintenance_window_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateMaintenanceWindowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MaintenanceWindowsApi->update_maintenance_window_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_maintenance_window_request** | [**CreateMaintenanceWindowRequest**](CreateMaintenanceWindowRequest.md) | The maintenance window to be updated. | [optional] |

### Return type

[**CreateMaintenanceWindowRequest**](CreateMaintenanceWindowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

