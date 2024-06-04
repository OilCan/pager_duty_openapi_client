# OpenapiClient::ExtensionsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_extension**](ExtensionsApi.md#create_extension) | **POST** /extensions | Create an extension |
| [**delete_extension**](ExtensionsApi.md#delete_extension) | **DELETE** /extensions/{id} | Delete an extension |
| [**enable_extension**](ExtensionsApi.md#enable_extension) | **POST** /extensions/{id}/enable | Enable an extension |
| [**get_extension**](ExtensionsApi.md#get_extension) | **GET** /extensions/{id} | Get an extension |
| [**list_extensions**](ExtensionsApi.md#list_extensions) | **GET** /extensions | List extensions |
| [**update_extension**](ExtensionsApi.md#update_extension) | **PUT** /extensions/{id} | Update an extension |


## create_extension

> <CreateExtensionRequest> create_extension(accept, content_type, opts)

Create an extension

Create a new Extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_extension_request: OpenapiClient::CreateExtensionRequest.new({extension: OpenapiClient::Extension.new({name: 'name_example', extension_objects: [OpenapiClient::ServiceReference.new({type: 'service_reference'})], extension_schema: OpenapiClient::ExtensionSchemaReference.new({type: 'extension_schema_reference'})})}) # CreateExtensionRequest | The extension to be created
}

begin
  # Create an extension
  result = api_instance.create_extension(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->create_extension: #{e}"
end
```

#### Using the create_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExtensionRequest>, Integer, Hash)> create_extension_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create an extension
  data, status_code, headers = api_instance.create_extension_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExtensionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->create_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_extension_request** | [**CreateExtensionRequest**](CreateExtensionRequest.md) | The extension to be created | [optional] |

### Return type

[**CreateExtensionRequest**](CreateExtensionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_extension

> delete_extension(accept, content_type, id)

Delete an extension

Delete an existing extension.  Once the extension is deleted, it will not be accessible from the web UI and new incidents won't be able to be created for this extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an extension
  api_instance.delete_extension(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->delete_extension: #{e}"
end
```

#### Using the delete_extension_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_extension_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an extension
  data, status_code, headers = api_instance.delete_extension_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->delete_extension_with_http_info: #{e}"
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


## enable_extension

> <CreateExtensionRequest> enable_extension(accept, content_type, id)

Enable an extension

Enable an extension that is temporarily disabled. (This API does not require a request body.)  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Enable an extension
  result = api_instance.enable_extension(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->enable_extension: #{e}"
end
```

#### Using the enable_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExtensionRequest>, Integer, Hash)> enable_extension_with_http_info(accept, content_type, id)

```ruby
begin
  # Enable an extension
  data, status_code, headers = api_instance.enable_extension_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExtensionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->enable_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateExtensionRequest**](CreateExtensionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_extension

> <CreateExtensionRequest> get_extension(accept, content_type, id, opts)

Get an extension

Get details about an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.read` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'extension_schemas' # String | Array of additional details to include.
}

begin
  # Get an extension
  result = api_instance.get_extension(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->get_extension: #{e}"
end
```

#### Using the get_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExtensionRequest>, Integer, Hash)> get_extension_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get an extension
  data, status_code, headers = api_instance.get_extension_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExtensionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->get_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateExtensionRequest**](CreateExtensionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_extensions

> <ListExtensions200Response> list_extensions(accept, content_type, opts)

List extensions

List existing extensions.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.read` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  extension_object_id: 'extension_object_id_example', # String | The id of the extension object you want to filter by.
  extension_schema_id: 'extension_schema_id_example', # String | Filter the extensions by extension vendor id.
  include: 'extension_objects' # String | Array of additional details to include.
}

begin
  # List extensions
  result = api_instance.list_extensions(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->list_extensions: #{e}"
end
```

#### Using the list_extensions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExtensions200Response>, Integer, Hash)> list_extensions_with_http_info(accept, content_type, opts)

```ruby
begin
  # List extensions
  data, status_code, headers = api_instance.list_extensions_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExtensions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->list_extensions_with_http_info: #{e}"
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
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **extension_object_id** | **String** | The id of the extension object you want to filter by. | [optional] |
| **extension_schema_id** | **String** | Filter the extensions by extension vendor id. | [optional] |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**ListExtensions200Response**](ListExtensions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_extension

> <CreateExtensionRequest> update_extension(accept, content_type, id, opts)

Update an extension

Update an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 

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

api_instance = OpenapiClient::ExtensionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_extension_request: OpenapiClient::CreateExtensionRequest.new({extension: OpenapiClient::Extension.new({name: 'name_example', extension_objects: [OpenapiClient::ServiceReference.new({type: 'service_reference'})], extension_schema: OpenapiClient::ExtensionSchemaReference.new({type: 'extension_schema_reference'})})}) # CreateExtensionRequest | The extension to be updated.
}

begin
  # Update an extension
  result = api_instance.update_extension(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->update_extension: #{e}"
end
```

#### Using the update_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExtensionRequest>, Integer, Hash)> update_extension_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an extension
  data, status_code, headers = api_instance.update_extension_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExtensionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExtensionsApi->update_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_extension_request** | [**CreateExtensionRequest**](CreateExtensionRequest.md) | The extension to be updated. | [optional] |

### Return type

[**CreateExtensionRequest**](CreateExtensionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

