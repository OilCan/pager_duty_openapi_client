# OpenapiClient::StandardsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_resource_standards**](StandardsApi.md#list_resource_standards) | **GET** /standards/scores/{resource_type}/{id} | List a resource&#39;s standards scores |
| [**list_resource_standards_many_services**](StandardsApi.md#list_resource_standards_many_services) | **GET** /standards/scores/{resource_type} | List resources&#39; standards scores |
| [**list_standards**](StandardsApi.md#list_standards) | **GET** /standards | List Standards |
| [**update_standard**](StandardsApi.md#update_standard) | **PUT** /standards/{id} | Update a standard |


## list_resource_standards

> <StandardApplied> list_resource_standards(accept, id, resource_type)

List a resource's standards scores

List standards applied to a specific resource  Scoped OAuth requires: `standards.read` 

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

api_instance = OpenapiClient::StandardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | Id of the resource to apply the standards.
resource_type = 'technical_services' # String | 

begin
  # List a resource's standards scores
  result = api_instance.list_resource_standards(accept, id, resource_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_resource_standards: #{e}"
end
```

#### Using the list_resource_standards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StandardApplied>, Integer, Hash)> list_resource_standards_with_http_info(accept, id, resource_type)

```ruby
begin
  # List a resource's standards scores
  data, status_code, headers = api_instance.list_resource_standards_with_http_info(accept, id, resource_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StandardApplied>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_resource_standards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | Id of the resource to apply the standards. |  |
| **resource_type** | **String** |  |  |

### Return type

[**StandardApplied**](StandardApplied.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_standards_many_services

> <ListResourceStandardsManyServices200Response> list_resource_standards_many_services(accept, ids, resource_type)

List resources' standards scores

List standards applied to a set of resources  Scoped OAuth requires: `standards.read` 

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

api_instance = OpenapiClient::StandardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
ids = ['inner_example'] # Array<String> | Ids of resources to apply the standards. Maximum of 100 items
resource_type = 'technical_services' # String | 

begin
  # List resources' standards scores
  result = api_instance.list_resource_standards_many_services(accept, ids, resource_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_resource_standards_many_services: #{e}"
end
```

#### Using the list_resource_standards_many_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListResourceStandardsManyServices200Response>, Integer, Hash)> list_resource_standards_many_services_with_http_info(accept, ids, resource_type)

```ruby
begin
  # List resources' standards scores
  data, status_code, headers = api_instance.list_resource_standards_many_services_with_http_info(accept, ids, resource_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListResourceStandardsManyServices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_resource_standards_many_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Ids of resources to apply the standards. Maximum of 100 items |  |
| **resource_type** | **String** |  |  |

### Return type

[**ListResourceStandardsManyServices200Response**](ListResourceStandardsManyServices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_standards

> <ListStandards200Response> list_standards(accept, opts)

List Standards

Get all standards of an account.  Scoped OAuth requires: `standards.read` 

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

api_instance = OpenapiClient::StandardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
opts = {
  active: true, # Boolean | 
  resource_type: 'technical_service' # String | 
}

begin
  # List Standards
  result = api_instance.list_standards(accept, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_standards: #{e}"
end
```

#### Using the list_standards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStandards200Response>, Integer, Hash)> list_standards_with_http_info(accept, opts)

```ruby
begin
  # List Standards
  data, status_code, headers = api_instance.list_standards_with_http_info(accept, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStandards200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->list_standards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **active** | **Boolean** |  | [optional] |
| **resource_type** | **String** |  | [optional] |

### Return type

[**ListStandards200Response**](ListStandards200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_standard

> <Standard> update_standard(accept, content_type, id, opts)

Update a standard

Updates a standard  Scoped OAuth requires: `standards.write` 

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

api_instance = OpenapiClient::StandardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | Id of the standard
opts = {
  update_standard_request: OpenapiClient::UpdateStandardRequest.new # UpdateStandardRequest | 
}

begin
  # Update a standard
  result = api_instance.update_standard(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->update_standard: #{e}"
end
```

#### Using the update_standard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Standard>, Integer, Hash)> update_standard_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a standard
  data, status_code, headers = api_instance.update_standard_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Standard>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StandardsApi->update_standard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | Id of the standard |  |
| **update_standard_request** | [**UpdateStandardRequest**](UpdateStandardRequest.md) |  | [optional] |

### Return type

[**Standard**](Standard.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

