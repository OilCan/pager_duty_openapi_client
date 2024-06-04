# OpenapiClient::CustomFieldsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_fields_field**](CustomFieldsApi.md#create_custom_fields_field) | **POST** /incidents/custom_fields | Create a Field |
| [**create_custom_fields_field_option**](CustomFieldsApi.md#create_custom_fields_field_option) | **POST** /incidents/custom_fields/{field_id}/field_options | Create a Field Option |
| [**delete_custom_fields_field**](CustomFieldsApi.md#delete_custom_fields_field) | **DELETE** /incidents/custom_fields/{field_id} | Delete a Field |
| [**delete_custom_fields_field_option**](CustomFieldsApi.md#delete_custom_fields_field_option) | **DELETE** /incidents/custom_fields/{field_id}/field_options/{field_option_id} | Delete a Field Option |
| [**get_custom_fields_field**](CustomFieldsApi.md#get_custom_fields_field) | **GET** /incidents/custom_fields/{field_id} | Get a Field |
| [**list_custom_fields_field_options**](CustomFieldsApi.md#list_custom_fields_field_options) | **GET** /incidents/custom_fields/{field_id}/field_options | List Field Options |
| [**list_custom_fields_fields**](CustomFieldsApi.md#list_custom_fields_fields) | **GET** /incidents/custom_fields | List Fields |
| [**update_custom_fields_field**](CustomFieldsApi.md#update_custom_fields_field) | **PUT** /incidents/custom_fields/{field_id} | Update a Field |
| [**update_custom_fields_field_option**](CustomFieldsApi.md#update_custom_fields_field_option) | **PUT** /incidents/custom_fields/{field_id}/field_options/{field_option_id} | Update a Field Option |


## create_custom_fields_field

> <CreateCustomFieldsFieldRequest> create_custom_fields_field(opts)

Create a Field

Create a new Field, along with the Field Options if provided. An account may have up to 10 Fields.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
opts = {
  create_custom_fields_field_request: OpenapiClient::CreateCustomFieldsFieldRequest.new({field: OpenapiClient::CustomFieldsFieldWithOptions.new({display_name: 'display_name_example', id: 'id_example', name: 'name_example', summary: 'summary_example', _self: '_self_example', type: 'field', created_at: Time.now, updated_at: Time.now, data_type: 'boolean', field_type: 'single_value'})}) # CreateCustomFieldsFieldRequest | 
}

begin
  # Create a Field
  result = api_instance.create_custom_fields_field(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_fields_field: #{e}"
end
```

#### Using the create_custom_fields_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomFieldsFieldRequest>, Integer, Hash)> create_custom_fields_field_with_http_info(opts)

```ruby
begin
  # Create a Field
  data, status_code, headers = api_instance.create_custom_fields_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomFieldsFieldRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_fields_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_custom_fields_field_request** | [**CreateCustomFieldsFieldRequest**](CreateCustomFieldsFieldRequest.md) |  | [optional] |

### Return type

[**CreateCustomFieldsFieldRequest**](CreateCustomFieldsFieldRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_custom_fields_field_option

> <CreateCustomFieldsFieldOptionRequest> create_custom_fields_field_option(field_id, opts)

Create a Field Option

Create a new Field Option. Field Options may only be created for Fields that have `field_options`. A Field may have no more than 10 enabled options.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.
opts = {
  create_custom_fields_field_option_request: OpenapiClient::CreateCustomFieldsFieldOptionRequest.new({field_option: OpenapiClient::CustomFieldsFieldOption.new({id: 'id_example', type: 'field_option', created_at: Time.now, updated_at: Time.now, data: OpenapiClient::CustomFieldsEditableFieldOptionDataOneOf.new({data_type: 'string', value: 'value_example'})})}) # CreateCustomFieldsFieldOptionRequest | 
}

begin
  # Create a Field Option
  result = api_instance.create_custom_fields_field_option(field_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_fields_field_option: #{e}"
end
```

#### Using the create_custom_fields_field_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomFieldsFieldOptionRequest>, Integer, Hash)> create_custom_fields_field_option_with_http_info(field_id, opts)

```ruby
begin
  # Create a Field Option
  data, status_code, headers = api_instance.create_custom_fields_field_option_with_http_info(field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomFieldsFieldOptionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_fields_field_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |
| **create_custom_fields_field_option_request** | [**CreateCustomFieldsFieldOptionRequest**](CreateCustomFieldsFieldOptionRequest.md) |  | [optional] |

### Return type

[**CreateCustomFieldsFieldOptionRequest**](CreateCustomFieldsFieldOptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_fields_field

> delete_custom_fields_field(field_id)

Delete a Field

Delete a Field. Fields may not be deleted if they are used by a Field Schema.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.

begin
  # Delete a Field
  api_instance.delete_custom_fields_field(field_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_fields_field: #{e}"
end
```

#### Using the delete_custom_fields_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_fields_field_with_http_info(field_id)

```ruby
begin
  # Delete a Field
  data, status_code, headers = api_instance.delete_custom_fields_field_with_http_info(field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_fields_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_custom_fields_field_option

> delete_custom_fields_field_option(field_id, field_option_id)

Delete a Field Option

Delete a Field Option.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.
field_option_id = 'field_option_id_example' # String | The ID of the field option.

begin
  # Delete a Field Option
  api_instance.delete_custom_fields_field_option(field_id, field_option_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_fields_field_option: #{e}"
end
```

#### Using the delete_custom_fields_field_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_fields_field_option_with_http_info(field_id, field_option_id)

```ruby
begin
  # Delete a Field Option
  data, status_code, headers = api_instance.delete_custom_fields_field_option_with_http_info(field_id, field_option_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_fields_field_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |
| **field_option_id** | **String** | The ID of the field option. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_fields_field

> <CreateCustomFieldsFieldRequest> get_custom_fields_field(field_id, opts)

Get a Field

Show detailed information about a field.  Scoped OAuth requires: `custom_fields.read` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.
opts = {
  include: 'field_options' # String | Array of additional details to include.
}

begin
  # Get a Field
  result = api_instance.get_custom_fields_field(field_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->get_custom_fields_field: #{e}"
end
```

#### Using the get_custom_fields_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomFieldsFieldRequest>, Integer, Hash)> get_custom_fields_field_with_http_info(field_id, opts)

```ruby
begin
  # Get a Field
  data, status_code, headers = api_instance.get_custom_fields_field_with_http_info(field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomFieldsFieldRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->get_custom_fields_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateCustomFieldsFieldRequest**](CreateCustomFieldsFieldRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_fields_field_options

> <ListCustomFieldsFieldOptions200Response> list_custom_fields_field_options(field_id)

List Field Options

List all enabled Field Options for a Field.  Scoped OAuth requires: `custom_fields.read` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.

begin
  # List Field Options
  result = api_instance.list_custom_fields_field_options(field_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_field_options: #{e}"
end
```

#### Using the list_custom_fields_field_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomFieldsFieldOptions200Response>, Integer, Hash)> list_custom_fields_field_options_with_http_info(field_id)

```ruby
begin
  # List Field Options
  data, status_code, headers = api_instance.list_custom_fields_field_options_with_http_info(field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomFieldsFieldOptions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_field_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |

### Return type

[**ListCustomFieldsFieldOptions200Response**](ListCustomFieldsFieldOptions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_fields_fields

> <ListCustomFieldsFields200Response> list_custom_fields_fields(opts)

List Fields

List fields.  Scoped OAuth requires: `custom_fields.read` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
opts = {
  include: 'field_options' # String | Array of additional details to include.
}

begin
  # List Fields
  result = api_instance.list_custom_fields_fields(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_fields: #{e}"
end
```

#### Using the list_custom_fields_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomFieldsFields200Response>, Integer, Hash)> list_custom_fields_fields_with_http_info(opts)

```ruby
begin
  # List Fields
  data, status_code, headers = api_instance.list_custom_fields_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomFieldsFields200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**ListCustomFieldsFields200Response**](ListCustomFieldsFields200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_custom_fields_field

> <UpdateCustomFieldsField200Response> update_custom_fields_field(field_id, opts)

Update a Field

Update a field.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.
opts = {
  update_custom_fields_field_request: OpenapiClient::UpdateCustomFieldsFieldRequest.new({field: OpenapiClient::CustomFieldsEditableField.new}) # UpdateCustomFieldsFieldRequest | 
}

begin
  # Update a Field
  result = api_instance.update_custom_fields_field(field_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_fields_field: #{e}"
end
```

#### Using the update_custom_fields_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomFieldsField200Response>, Integer, Hash)> update_custom_fields_field_with_http_info(field_id, opts)

```ruby
begin
  # Update a Field
  data, status_code, headers = api_instance.update_custom_fields_field_with_http_info(field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomFieldsField200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_fields_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |
| **update_custom_fields_field_request** | [**UpdateCustomFieldsFieldRequest**](UpdateCustomFieldsFieldRequest.md) |  | [optional] |

### Return type

[**UpdateCustomFieldsField200Response**](UpdateCustomFieldsField200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_custom_fields_field_option

> <CreateCustomFieldsFieldOptionRequest> update_custom_fields_field_option(field_id, field_option_id, opts)

Update a Field Option

Update Field Option for a Field.  Scoped OAuth requires: `custom_fields.write` 

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

api_instance = OpenapiClient::CustomFieldsApi.new
field_id = 'field_id_example' # String | The ID of the field.
field_option_id = 'field_option_id_example' # String | The ID of the field option.
opts = {
  update_custom_fields_field_option_request: OpenapiClient::UpdateCustomFieldsFieldOptionRequest.new({field_option: OpenapiClient::CustomFieldsEditableFieldOption.new({id: 'id_example', type: 'field_option', created_at: Time.now, updated_at: Time.now})}) # UpdateCustomFieldsFieldOptionRequest | 
}

begin
  # Update a Field Option
  result = api_instance.update_custom_fields_field_option(field_id, field_option_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_fields_field_option: #{e}"
end
```

#### Using the update_custom_fields_field_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomFieldsFieldOptionRequest>, Integer, Hash)> update_custom_fields_field_option_with_http_info(field_id, field_option_id, opts)

```ruby
begin
  # Update a Field Option
  data, status_code, headers = api_instance.update_custom_fields_field_option_with_http_info(field_id, field_option_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomFieldsFieldOptionRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_fields_field_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** | The ID of the field. |  |
| **field_option_id** | **String** | The ID of the field option. |  |
| **update_custom_fields_field_option_request** | [**UpdateCustomFieldsFieldOptionRequest**](UpdateCustomFieldsFieldOptionRequest.md) |  | [optional] |

### Return type

[**CreateCustomFieldsFieldOptionRequest**](CreateCustomFieldsFieldOptionRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

