# PagerDutyOpenapiClient::ServiceDependenciesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service_dependency**](ServiceDependenciesApi.md#create_service_dependency) | **POST** /service_dependencies/associate | Associate service dependencies |
| [**delete_service_dependency**](ServiceDependenciesApi.md#delete_service_dependency) | **POST** /service_dependencies/disassociate | Disassociate service dependencies |
| [**get_business_service_service_dependencies**](ServiceDependenciesApi.md#get_business_service_service_dependencies) | **GET** /service_dependencies/business_services/{id} | Get Business Service dependencies |
| [**get_technical_service_service_dependencies**](ServiceDependenciesApi.md#get_technical_service_service_dependencies) | **GET** /service_dependencies/technical_services/{id} | Get technical service dependencies |


## create_service_dependency

> <CreateServiceDependency200Response> create_service_dependency(accept, content_type, opts)

Associate service dependencies

Create new dependencies between two services.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  A service can have a maximum of 2,000 dependencies with a depth limit of 100. If the limit is reached, the API will respond with an error.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.write` 

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

api_instance = PagerDutyOpenapiClient::ServiceDependenciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_service_dependency_request: PagerDutyOpenapiClient::CreateServiceDependencyRequest.new # CreateServiceDependencyRequest | 
}

begin
  # Associate service dependencies
  result = api_instance.create_service_dependency(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->create_service_dependency: #{e}"
end
```

#### Using the create_service_dependency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceDependency200Response>, Integer, Hash)> create_service_dependency_with_http_info(accept, content_type, opts)

```ruby
begin
  # Associate service dependencies
  data, status_code, headers = api_instance.create_service_dependency_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceDependency200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->create_service_dependency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_service_dependency_request** | [**CreateServiceDependencyRequest**](CreateServiceDependencyRequest.md) |  | [optional] |

### Return type

[**CreateServiceDependency200Response**](CreateServiceDependency200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service_dependency

> <CreateServiceDependency200Response> delete_service_dependency(accept, content_type, opts)

Disassociate service dependencies

Disassociate dependencies between two services.  Business services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.write` 

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

api_instance = PagerDutyOpenapiClient::ServiceDependenciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  delete_service_dependency_request: PagerDutyOpenapiClient::DeleteServiceDependencyRequest.new # DeleteServiceDependencyRequest | 
}

begin
  # Disassociate service dependencies
  result = api_instance.delete_service_dependency(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->delete_service_dependency: #{e}"
end
```

#### Using the delete_service_dependency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceDependency200Response>, Integer, Hash)> delete_service_dependency_with_http_info(accept, content_type, opts)

```ruby
begin
  # Disassociate service dependencies
  data, status_code, headers = api_instance.delete_service_dependency_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceDependency200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->delete_service_dependency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **delete_service_dependency_request** | [**DeleteServiceDependencyRequest**](DeleteServiceDependencyRequest.md) |  | [optional] |

### Return type

[**CreateServiceDependency200Response**](CreateServiceDependency200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_business_service_service_dependencies

> <GetBusinessServiceServiceDependencies200Response> get_business_service_service_dependencies(accept, content_type, id)

Get Business Service dependencies

Get all immediate dependencies of any Business Service.  Business Services model capabilities that span multiple technical services and that may be owned by several different teams.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#business-services)  Scoped OAuth requires: `services.read` 

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

api_instance = PagerDutyOpenapiClient::ServiceDependenciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get Business Service dependencies
  result = api_instance.get_business_service_service_dependencies(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->get_business_service_service_dependencies: #{e}"
end
```

#### Using the get_business_service_service_dependencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceServiceDependencies200Response>, Integer, Hash)> get_business_service_service_dependencies_with_http_info(accept, content_type, id)

```ruby
begin
  # Get Business Service dependencies
  data, status_code, headers = api_instance.get_business_service_service_dependencies_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceServiceDependencies200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->get_business_service_service_dependencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetBusinessServiceServiceDependencies200Response**](GetBusinessServiceServiceDependencies200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_technical_service_service_dependencies

> <CreateServiceDependency200Response> get_technical_service_service_dependencies(accept, content_type, id)

Get technical service dependencies

Get all immediate dependencies of any technical service. Technical services are also known as `services`.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.read` 

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

api_instance = PagerDutyOpenapiClient::ServiceDependenciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get technical service dependencies
  result = api_instance.get_technical_service_service_dependencies(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->get_technical_service_service_dependencies: #{e}"
end
```

#### Using the get_technical_service_service_dependencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceDependency200Response>, Integer, Hash)> get_technical_service_service_dependencies_with_http_info(accept, content_type, id)

```ruby
begin
  # Get technical service dependencies
  data, status_code, headers = api_instance.get_technical_service_service_dependencies_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceDependency200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ServiceDependenciesApi->get_technical_service_service_dependencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateServiceDependency200Response**](CreateServiceDependency200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

