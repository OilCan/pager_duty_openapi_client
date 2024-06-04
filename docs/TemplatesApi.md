# OpenapiClient::TemplatesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_template**](TemplatesApi.md#create_template) | **POST** /templates | Create a template |
| [**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /templates/{id} | Delete a template |
| [**get_template**](TemplatesApi.md#get_template) | **GET** /templates/{id} | Get a template |
| [**get_template_fields**](TemplatesApi.md#get_template_fields) | **GET** /templates/fields | List template fields |
| [**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | List templates |
| [**render_template**](TemplatesApi.md#render_template) | **POST** /templates/{id}/render | Render a template |
| [**update_template**](TemplatesApi.md#update_template) | **PUT** /templates/{id} | Update a template |


## create_template

> <CreateTemplate201Response> create_template(create_template_request)

Create a template

Create a new template  Scoped OAuth requires: `templates.write` 

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

api_instance = OpenapiClient::TemplatesApi.new
create_template_request = OpenapiClient::CreateTemplateRequest.new({template: OpenapiClient::EditableTemplate.new}) # CreateTemplateRequest | 

begin
  # Create a template
  result = api_instance.create_template(create_template_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->create_template: #{e}"
end
```

#### Using the create_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate201Response>, Integer, Hash)> create_template_with_http_info(create_template_request)

```ruby
begin
  # Create a template
  data, status_code, headers = api_instance.create_template_with_http_info(create_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->create_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_template_request** | [**CreateTemplateRequest**](CreateTemplateRequest.md) |  |  |

### Return type

[**CreateTemplate201Response**](CreateTemplate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_template

> delete_template(id)

Delete a template

Delete a specific of templates on the account  Scoped OAuth requires: `templates.write` 

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

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a template
  api_instance.delete_template(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->delete_template: #{e}"
end
```

#### Using the delete_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_template_with_http_info(id)

```ruby
begin
  # Delete a template
  data, status_code, headers = api_instance.delete_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->delete_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> <CreateTemplate201Response> get_template(id)

Get a template

Get a single template on the account  Scoped OAuth requires: `templates.read` 

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

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | The ID of the resource.

begin
  # Get a template
  result = api_instance.get_template(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template: #{e}"
end
```

#### Using the get_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate201Response>, Integer, Hash)> get_template_with_http_info(id)

```ruby
begin
  # Get a template
  data, status_code, headers = api_instance.get_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateTemplate201Response**](CreateTemplate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_fields

> <GetTemplateFields200Response> get_template_fields(accept, content_type)

List template fields

Get a list of fields that can be used on the account templates.  Scoped OAuth requires: `templates.read` 

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

api_instance = OpenapiClient::TemplatesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 

begin
  # List template fields
  result = api_instance.get_template_fields(accept, content_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template_fields: #{e}"
end
```

#### Using the get_template_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplateFields200Response>, Integer, Hash)> get_template_fields_with_http_info(accept, content_type)

```ruby
begin
  # List template fields
  data, status_code, headers = api_instance.get_template_fields_with_http_info(accept, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplateFields200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |

### Return type

[**GetTemplateFields200Response**](GetTemplateFields200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <GetTemplates200Response> get_templates(opts)

List templates

Get a list of all the template on an account  Scoped OAuth requires: `templates.read` 

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

api_instance = OpenapiClient::TemplatesApi.new
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example', # String | Template name or description to search
  template_type: 'template_type_example', # String | Filters templates by type.
  sort_by: 'name' # String | Used to specify both the field you wish to sort the results on (name/created_at), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. Sort direction defaults to ascending.
}

begin
  # List templates
  result = api_instance.get_templates(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplates200Response>, Integer, Hash)> get_templates_with_http_info(opts)

```ruby
begin
  # List templates
  data, status_code, headers = api_instance.get_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **query** | **String** | Template name or description to search | [optional] |
| **template_type** | **String** | Filters templates by type. | [optional][default to &#39;status_update&#39;] |
| **sort_by** | **String** | Used to specify both the field you wish to sort the results on (name/created_at), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. Sort direction defaults to ascending. | [optional][default to &#39;created_at:asc&#39;] |

### Return type

[**GetTemplates200Response**](GetTemplates200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## render_template

> <RenderedTemplate> render_template(id, render_template_request)

Render a template

Render a template. This endpoint has a variable request body depending on the template type. For the `status_update` template type, the caller will provide the incident id, and a status update message.  Scoped OAuth requires: `templates.read` 

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

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | The ID of the resource.
render_template_request = OpenapiClient::StatusUpdateTemplateInput.new # RenderTemplateRequest | 

begin
  # Render a template
  result = api_instance.render_template(id, render_template_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->render_template: #{e}"
end
```

#### Using the render_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderedTemplate>, Integer, Hash)> render_template_with_http_info(id, render_template_request)

```ruby
begin
  # Render a template
  data, status_code, headers = api_instance.render_template_with_http_info(id, render_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderedTemplate>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->render_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **render_template_request** | [**RenderTemplateRequest**](RenderTemplateRequest.md) |  |  |

### Return type

[**RenderedTemplate**](RenderedTemplate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_template

> <CreateTemplate201Response> update_template(id, create_template_request)

Update a template

Update an existing template  Scoped OAuth requires: `templates.write` 

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

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | The ID of the resource.
create_template_request = OpenapiClient::CreateTemplateRequest.new({template: OpenapiClient::EditableTemplate.new}) # CreateTemplateRequest | 

begin
  # Update a template
  result = api_instance.update_template(id, create_template_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->update_template: #{e}"
end
```

#### Using the update_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate201Response>, Integer, Hash)> update_template_with_http_info(id, create_template_request)

```ruby
begin
  # Update a template
  data, status_code, headers = api_instance.update_template_with_http_info(id, create_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->update_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **create_template_request** | [**CreateTemplateRequest**](CreateTemplateRequest.md) |  |  |

### Return type

[**CreateTemplate201Response**](CreateTemplate201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

