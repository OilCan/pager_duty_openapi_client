# OpenapiClient::ExtensionSchemasApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_extension_schema**](ExtensionSchemasApi.md#get_extension_schema) | **GET** /extension_schemas/{id} | Get an extension vendor |
| [**list_extension_schemas**](ExtensionSchemasApi.md#list_extension_schemas) | **GET** /extension_schemas | List extension schemas |


## get_extension_schema

> <GetExtensionSchema200Response> get_extension_schema(accept, content_type, id)

Get an extension vendor

Get details about one specific extension vendor.  A PagerDuty extension vendor represents a specific type of outbound extension such as Generic Webhook, Slack, ServiceNow.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extension-schemas)  Scoped OAuth requires: `extension_schemas.read` 

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

api_instance = OpenapiClient::ExtensionSchemasApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an extension vendor
  result = api_instance.get_extension_schema(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionSchemasApi->get_extension_schema: #{e}"
end
```

#### Using the get_extension_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExtensionSchema200Response>, Integer, Hash)> get_extension_schema_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an extension vendor
  data, status_code, headers = api_instance.get_extension_schema_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExtensionSchema200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionSchemasApi->get_extension_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetExtensionSchema200Response**](GetExtensionSchema200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_extension_schemas

> <ListExtensionSchemas200Response> list_extension_schemas(accept, content_type, opts)

List extension schemas

List all extension schemas.  A PagerDuty extension vendor represents a specific type of outbound extension such as Generic Webhook, Slack, ServiceNow.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extension-schemas)  Scoped OAuth requires: `extension_schemas.read` 

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

api_instance = OpenapiClient::ExtensionSchemasApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List extension schemas
  result = api_instance.list_extension_schemas(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionSchemasApi->list_extension_schemas: #{e}"
end
```

#### Using the list_extension_schemas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExtensionSchemas200Response>, Integer, Hash)> list_extension_schemas_with_http_info(accept, content_type, opts)

```ruby
begin
  # List extension schemas
  data, status_code, headers = api_instance.list_extension_schemas_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExtensionSchemas200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionSchemasApi->list_extension_schemas_with_http_info: #{e}"
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

[**ListExtensionSchemas200Response**](ListExtensionSchemas200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

