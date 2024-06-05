# PagerDutyOpenapiClient::TagsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_entity_type_by_id_change_tags**](TagsApi.md#create_entity_type_by_id_change_tags) | **POST** /{entity_type}/{id}/change_tags | Assign tags |
| [**create_tags**](TagsApi.md#create_tags) | **POST** /tags | Create a tag |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /tags/{id} | Delete a tag |
| [**get_entity_type_by_id_tags**](TagsApi.md#get_entity_type_by_id_tags) | **GET** /{entity_type}/{id}/tags | Get tags for entities |
| [**get_tag**](TagsApi.md#get_tag) | **GET** /tags/{id} | Get a tag |
| [**get_tags_by_entity_type**](TagsApi.md#get_tags_by_entity_type) | **GET** /tags/{id}/{entity_type} | Get connected entities |
| [**list_tags**](TagsApi.md#list_tags) | **GET** /tags | List tags |


## create_entity_type_by_id_change_tags

> Object create_entity_type_by_id_change_tags(accept, content_type, entity_type, id, opts)

Assign tags

Assign existing or new tags.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.write` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
entity_type = 'users' # String | Type of entity related with the tag
id = 'id_example' # String | The ID of the resource.
opts = {
  create_entity_type_by_id_change_tags_request: PagerDutyOpenapiClient::CreateEntityTypeByIdChangeTagsRequest.new # CreateEntityTypeByIdChangeTagsRequest | 
}

begin
  # Assign tags
  result = api_instance.create_entity_type_by_id_change_tags(accept, content_type, entity_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->create_entity_type_by_id_change_tags: #{e}"
end
```

#### Using the create_entity_type_by_id_change_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> create_entity_type_by_id_change_tags_with_http_info(accept, content_type, entity_type, id, opts)

```ruby
begin
  # Assign tags
  data, status_code, headers = api_instance.create_entity_type_by_id_change_tags_with_http_info(accept, content_type, entity_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->create_entity_type_by_id_change_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **entity_type** | **String** | Type of entity related with the tag |  |
| **id** | **String** | The ID of the resource. |  |
| **create_entity_type_by_id_change_tags_request** | [**CreateEntityTypeByIdChangeTagsRequest**](CreateEntityTypeByIdChangeTagsRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tags

> <CreateTagsRequest> create_tags(accept, content_type, opts)

Create a tag

Create a Tag.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.write` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_tags_request: PagerDutyOpenapiClient::CreateTagsRequest.new({tag: PagerDutyOpenapiClient::Tag.new({type: 'tag', label: 'label_example'})}) # CreateTagsRequest | 
}

begin
  # Create a tag
  result = api_instance.create_tags(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->create_tags: #{e}"
end
```

#### Using the create_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagsRequest>, Integer, Hash)> create_tags_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a tag
  data, status_code, headers = api_instance.create_tags_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagsRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->create_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_tags_request** | [**CreateTagsRequest**](CreateTagsRequest.md) |  | [optional] |

### Return type

[**CreateTagsRequest**](CreateTagsRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> delete_tag(accept, content_type, id)

Delete a tag

Remove an existing Tag.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.write` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a tag
  api_instance.delete_tag(accept, content_type, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
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


## get_entity_type_by_id_tags

> <GetEntityTypeByIdTags200Response> get_entity_type_by_id_tags(accept, content_type, entity_type, id, opts)

Get tags for entities

Get related tags for Users, Teams or Escalation Policies.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.read` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
entity_type = 'users' # String | Type of entity related with the tag
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # Get tags for entities
  result = api_instance.get_entity_type_by_id_tags(accept, content_type, entity_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_entity_type_by_id_tags: #{e}"
end
```

#### Using the get_entity_type_by_id_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntityTypeByIdTags200Response>, Integer, Hash)> get_entity_type_by_id_tags_with_http_info(accept, content_type, entity_type, id, opts)

```ruby
begin
  # Get tags for entities
  data, status_code, headers = api_instance.get_entity_type_by_id_tags_with_http_info(accept, content_type, entity_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntityTypeByIdTags200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_entity_type_by_id_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **entity_type** | **String** | Type of entity related with the tag |  |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |

### Return type

[**GetEntityTypeByIdTags200Response**](GetEntityTypeByIdTags200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag

> <CreateTagsRequest> get_tag(accept, content_type, id)

Get a tag

Get details about an existing Tag.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.read` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a tag
  result = api_instance.get_tag(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagsRequest>, Integer, Hash)> get_tag_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a tag
  data, status_code, headers = api_instance.get_tag_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagsRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateTagsRequest**](CreateTagsRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tags_by_entity_type

> <GetTagsByEntityType200Response> get_tags_by_entity_type(accept, content_type, id, entity_type, opts)

Get connected entities

Get related Users, Teams or Escalation Policies for the Tag.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.read` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
entity_type = 'users' # String | Type of entity related with the tag
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # Get connected entities
  result = api_instance.get_tags_by_entity_type(accept, content_type, id, entity_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tags_by_entity_type: #{e}"
end
```

#### Using the get_tags_by_entity_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTagsByEntityType200Response>, Integer, Hash)> get_tags_by_entity_type_with_http_info(accept, content_type, id, entity_type, opts)

```ruby
begin
  # Get connected entities
  data, status_code, headers = api_instance.get_tags_by_entity_type_with_http_info(accept, content_type, id, entity_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTagsByEntityType200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->get_tags_by_entity_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **entity_type** | **String** | Type of entity related with the tag |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |

### Return type

[**GetTagsByEntityType200Response**](GetTagsByEntityType200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tags

> <GetEntityTypeByIdTags200Response> list_tags(accept, content_type, opts)

List tags

List all of your account's tags.  A Tag is applied to Escalation Policies, Teams or Users and can be used to filter them.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#tags)  Scoped OAuth requires: `tags.read` 

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

api_instance = PagerDutyOpenapiClient::TagsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example' # String | Filters the result, showing only the tags whose label matches the query.
}

begin
  # List tags
  result = api_instance.list_tags(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->list_tags: #{e}"
end
```

#### Using the list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntityTypeByIdTags200Response>, Integer, Hash)> list_tags_with_http_info(accept, content_type, opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.list_tags_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntityTypeByIdTags200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling TagsApi->list_tags_with_http_info: #{e}"
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
| **query** | **String** | Filters the result, showing only the tags whose label matches the query. | [optional] |

### Return type

[**GetEntityTypeByIdTags200Response**](GetEntityTypeByIdTags200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

