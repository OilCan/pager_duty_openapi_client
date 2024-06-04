# OpenapiClient::VendorsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vendor**](VendorsApi.md#get_vendor) | **GET** /vendors/{id} | Get a vendor |
| [**list_vendors**](VendorsApi.md#list_vendors) | **GET** /vendors | List vendors |


## get_vendor

> <GetVendor200Response> get_vendor(accept, content_type, id)

Get a vendor

Get details about one specific vendor.  A PagerDuty Vendor represents a specific type of integration. AWS Cloudwatch, Splunk, Datadog are all examples of vendors  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#vendors)  Scoped OAuth requires: `vendors.read` 

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

api_instance = OpenapiClient::VendorsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a vendor
  result = api_instance.get_vendor(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendor: #{e}"
end
```

#### Using the get_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVendor200Response>, Integer, Hash)> get_vendor_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a vendor
  data, status_code, headers = api_instance.get_vendor_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVendor200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetVendor200Response**](GetVendor200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vendors

> <ListVendors200Response> list_vendors(accept, content_type, opts)

List vendors

List all vendors.  A PagerDuty Vendor represents a specific type of integration. AWS Cloudwatch, Splunk, Datadog are all examples of vendors  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#vendors)  Scoped OAuth requires: `vendors.read` 

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

api_instance = OpenapiClient::VendorsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List vendors
  result = api_instance.list_vendors(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->list_vendors: #{e}"
end
```

#### Using the list_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVendors200Response>, Integer, Hash)> list_vendors_with_http_info(accept, content_type, opts)

```ruby
begin
  # List vendors
  data, status_code, headers = api_instance.list_vendors_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVendors200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->list_vendors_with_http_info: #{e}"
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

[**ListVendors200Response**](ListVendors200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

