# PagerDutyOpenapiClient::LicensesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_license_allocations**](LicensesApi.md#list_license_allocations) | **GET** /license_allocations | List License Allocations |
| [**list_licenses**](LicensesApi.md#list_licenses) | **GET** /licenses | List Licenses |


## list_license_allocations

> <ListLicenseAllocations200Response> list_license_allocations(accept, content_type, opts)

List License Allocations

List the Licenses allocated to Users within your Account  Scoped OAuth requires: `licenses.read` 

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

api_instance = PagerDutyOpenapiClient::LicensesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56 # Integer | Offset to start pagination search results.
}

begin
  # List License Allocations
  result = api_instance.list_license_allocations(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling LicensesApi->list_license_allocations: #{e}"
end
```

#### Using the list_license_allocations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLicenseAllocations200Response>, Integer, Hash)> list_license_allocations_with_http_info(accept, content_type, opts)

```ruby
begin
  # List License Allocations
  data, status_code, headers = api_instance.list_license_allocations_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLicenseAllocations200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling LicensesApi->list_license_allocations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |

### Return type

[**ListLicenseAllocations200Response**](ListLicenseAllocations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_licenses

> <ListLicenses200Response> list_licenses(accept, content_type)

List Licenses

List the Licenses associated with your Account  Scoped OAuth requires: `licenses.read` 

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

api_instance = PagerDutyOpenapiClient::LicensesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 

begin
  # List Licenses
  result = api_instance.list_licenses(accept, content_type)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling LicensesApi->list_licenses: #{e}"
end
```

#### Using the list_licenses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLicenses200Response>, Integer, Hash)> list_licenses_with_http_info(accept, content_type)

```ruby
begin
  # List Licenses
  data, status_code, headers = api_instance.list_licenses_with_http_info(accept, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLicenses200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling LicensesApi->list_licenses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |

### Return type

[**ListLicenses200Response**](ListLicenses200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

