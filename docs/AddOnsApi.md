# OpenapiClient::AddOnsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_addon**](AddOnsApi.md#create_addon) | **POST** /addons | Install an Add-on |
| [**delete_addon**](AddOnsApi.md#delete_addon) | **DELETE** /addons/{id} | Delete an Add-on |
| [**get_addon**](AddOnsApi.md#get_addon) | **GET** /addons/{id} | Get an Add-on |
| [**list_addon**](AddOnsApi.md#list_addon) | **GET** /addons | List installed Add-ons |
| [**update_addon**](AddOnsApi.md#update_addon) | **PUT** /addons/{id} | Update an Add-on |


## create_addon

> <CreateAddon201Response> create_addon(accept, content_type, opts)

Install an Add-on

Install an Add-on for your account.  Addon's are pieces of functionality that developers can write to insert new functionality into PagerDuty's UI.  Given a configuration containing a `src` parameter, that URL will be embedded in an `iframe` on a page that's available to users from a drop-down menu.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: `addons.write` 

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

api_instance = OpenapiClient::AddOnsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_addon_request: OpenapiClient::CreateAddonRequest.new({addon: OpenapiClient::Addon.new({type: 'full_page_addon', name: 'name_example', src: 'src_example'})}) # CreateAddonRequest | The Add-on to be installed.
}

begin
  # Install an Add-on
  result = api_instance.create_addon(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->create_addon: #{e}"
end
```

#### Using the create_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAddon201Response>, Integer, Hash)> create_addon_with_http_info(accept, content_type, opts)

```ruby
begin
  # Install an Add-on
  data, status_code, headers = api_instance.create_addon_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAddon201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->create_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_addon_request** | [**CreateAddonRequest**](CreateAddonRequest.md) | The Add-on to be installed. | [optional] |

### Return type

[**CreateAddon201Response**](CreateAddon201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_addon

> delete_addon(accept, content_type, id)

Delete an Add-on

Remove an existing Add-on.  Addon's are pieces of functionality that developers can write to insert new functionality into PagerDuty's UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: `addons.write` 

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

api_instance = OpenapiClient::AddOnsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an Add-on
  api_instance.delete_addon(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->delete_addon: #{e}"
end
```

#### Using the delete_addon_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_addon_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Add-on
  data, status_code, headers = api_instance.delete_addon_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->delete_addon_with_http_info: #{e}"
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


## get_addon

> <CreateAddonRequest> get_addon(accept, content_type, id)

Get an Add-on

Get details about an existing Add-on.  Addon's are pieces of functionality that developers can write to insert new functionality into PagerDuty's UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: `addons.read` 

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

api_instance = OpenapiClient::AddOnsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Add-on
  result = api_instance.get_addon(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_addon: #{e}"
end
```

#### Using the get_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAddonRequest>, Integer, Hash)> get_addon_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Add-on
  data, status_code, headers = api_instance.get_addon_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAddonRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateAddonRequest**](CreateAddonRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_addon

> <ListAddon200Response> list_addon(accept, content_type, opts)

List installed Add-ons

List all of the Add-ons installed on your account.  Addon's are pieces of functionality that developers can write to insert new functionality into PagerDuty's UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: `addons.read` 

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

api_instance = OpenapiClient::AddOnsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  include: 'services', # String | Array of additional Models to include in response.
  service_ids: ['inner_example'], # Array<String> | Filters the results, showing only Add-ons for the given services
  filter: 'full_page_addon' # String | Filters the results, showing only Add-ons of the given type
}

begin
  # List installed Add-ons
  result = api_instance.list_addon(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->list_addon: #{e}"
end
```

#### Using the list_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAddon200Response>, Integer, Hash)> list_addon_with_http_info(accept, content_type, opts)

```ruby
begin
  # List installed Add-ons
  data, status_code, headers = api_instance.list_addon_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAddon200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->list_addon_with_http_info: #{e}"
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
| **include** | **String** | Array of additional Models to include in response. | [optional] |
| **service_ids** | [**Array&lt;String&gt;**](String.md) | Filters the results, showing only Add-ons for the given services | [optional] |
| **filter** | **String** | Filters the results, showing only Add-ons of the given type | [optional] |

### Return type

[**ListAddon200Response**](ListAddon200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_addon

> <CreateAddonRequest> update_addon(accept, content_type, id, opts)

Update an Add-on

Update an existing Add-on.  Addon's are pieces of functionality that developers can write to insert new functionality into PagerDuty's UI.  Given a configuration containing a `src` parameter, that URL will be embedded in an `iframe` on a page that's available to users from a drop-down menu.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: `addons.write` 

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

api_instance = OpenapiClient::AddOnsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_addon_request: OpenapiClient::CreateAddonRequest.new({addon: OpenapiClient::Addon.new({type: 'full_page_addon', name: 'name_example', src: 'src_example'})}) # CreateAddonRequest | The Add-on to be updated.
}

begin
  # Update an Add-on
  result = api_instance.update_addon(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->update_addon: #{e}"
end
```

#### Using the update_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAddonRequest>, Integer, Hash)> update_addon_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an Add-on
  data, status_code, headers = api_instance.update_addon_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAddonRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AddOnsApi->update_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_addon_request** | [**CreateAddonRequest**](CreateAddonRequest.md) | The Add-on to be updated. | [optional] |

### Return type

[**CreateAddonRequest**](CreateAddonRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

