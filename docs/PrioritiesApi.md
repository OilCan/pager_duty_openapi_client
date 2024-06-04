# OpenapiClient::PrioritiesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_priorities**](PrioritiesApi.md#list_priorities) | **GET** /priorities | List priorities |


## list_priorities

> <ListPriorities200Response> list_priorities(accept, content_type, opts)

List priorities

List existing priorities, in order (most to least severe).  A priority is a label representing the importance and impact of an incident. This feature is only available on Standard and Enterprise plans.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#priorities)  Scoped OAuth requires: `priorities.read` 

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

api_instance = OpenapiClient::PrioritiesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List priorities
  result = api_instance.list_priorities(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PrioritiesApi->list_priorities: #{e}"
end
```

#### Using the list_priorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPriorities200Response>, Integer, Hash)> list_priorities_with_http_info(accept, content_type, opts)

```ruby
begin
  # List priorities
  data, status_code, headers = api_instance.list_priorities_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPriorities200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PrioritiesApi->list_priorities_with_http_info: #{e}"
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

[**ListPriorities200Response**](ListPriorities200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

