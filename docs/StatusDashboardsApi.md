# PagerDutyOpenapiClient::StatusDashboardsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status_dashboard_by_id**](StatusDashboardsApi.md#get_status_dashboard_by_id) | **GET** /status_dashboards/{id} | Get a single Status Dashboard by &#x60;id&#x60; |
| [**get_status_dashboard_by_url_slug**](StatusDashboardsApi.md#get_status_dashboard_by_url_slug) | **GET** /status_dashboards/url_slugs/{url_slug} | Get a single Status Dashboard by &#x60;url_slug&#x60; |
| [**get_status_dashboard_service_impacts_by_id**](StatusDashboardsApi.md#get_status_dashboard_service_impacts_by_id) | **GET** /status_dashboards/{id}/service_impacts | Get impacted Business Services for a Status Dashboard by &#x60;id&#x60;. |
| [**get_status_dashboard_service_impacts_by_url_slug**](StatusDashboardsApi.md#get_status_dashboard_service_impacts_by_url_slug) | **GET** /status_dashboards/url_slugs/{url_slug}/service_impacts | Get impacted Business Services for a  Status Dashboard by &#x60;url_slug&#x60; |
| [**list_status_dashboards**](StatusDashboardsApi.md#list_status_dashboards) | **GET** /status_dashboards | List Status Dashboards |


## get_status_dashboard_by_id

> <GetStatusDashboardById200Response> get_status_dashboard_by_id(accept, id)

Get a single Status Dashboard by `id`

Get a Status Dashboard by its PagerDuty `id`.  Scoped OAuth requires: `status_dashboards.read` 

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

api_instance = PagerDutyOpenapiClient::StatusDashboardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # Get a single Status Dashboard by `id`
  result = api_instance.get_status_dashboard_by_id(accept, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_by_id: #{e}"
end
```

#### Using the get_status_dashboard_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusDashboardById200Response>, Integer, Hash)> get_status_dashboard_by_id_with_http_info(accept, id)

```ruby
begin
  # Get a single Status Dashboard by `id`
  data, status_code, headers = api_instance.get_status_dashboard_by_id_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusDashboardById200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetStatusDashboardById200Response**](GetStatusDashboardById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_dashboard_by_url_slug

> <GetStatusDashboardById200Response> get_status_dashboard_by_url_slug(accept, url_slug)

Get a single Status Dashboard by `url_slug`

Get a Status Dashboard by its PagerDuty `url_slug`.  A `url_slug` is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a `dash-separated-string-like-this`.  Scoped OAuth requires: `status_dashboards.read` 

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

api_instance = PagerDutyOpenapiClient::StatusDashboardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
url_slug = 'url_slug_example' # String | The `url_slug` for a status dashboard

begin
  # Get a single Status Dashboard by `url_slug`
  result = api_instance.get_status_dashboard_by_url_slug(accept, url_slug)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_by_url_slug: #{e}"
end
```

#### Using the get_status_dashboard_by_url_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusDashboardById200Response>, Integer, Hash)> get_status_dashboard_by_url_slug_with_http_info(accept, url_slug)

```ruby
begin
  # Get a single Status Dashboard by `url_slug`
  data, status_code, headers = api_instance.get_status_dashboard_by_url_slug_with_http_info(accept, url_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusDashboardById200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_by_url_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **url_slug** | **String** | The &#x60;url_slug&#x60; for a status dashboard |  |

### Return type

[**GetStatusDashboardById200Response**](GetStatusDashboardById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_dashboard_service_impacts_by_id

> <GetBusinessServiceSupportingServiceImpacts200Response> get_status_dashboard_service_impacts_by_id(accept, id, opts)

Get impacted Business Services for a Status Dashboard by `id`.

Get impacted Business Services for a Status Dashboard by `id`  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the specified Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get Impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sorted response, use the `ids[]` parameter on the `/business_services/impacts` endpoint.  Scoped OAuth requires: `status_dashboards.read` 

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

api_instance = PagerDutyOpenapiClient::StatusDashboardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  additional_fields: 'services.highest_impacting_priority' # String | Provides access to additional fields such as highest priority per business service and total impacted count
}

begin
  # Get impacted Business Services for a Status Dashboard by `id`.
  result = api_instance.get_status_dashboard_service_impacts_by_id(accept, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_service_impacts_by_id: #{e}"
end
```

#### Using the get_status_dashboard_service_impacts_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceSupportingServiceImpacts200Response>, Integer, Hash)> get_status_dashboard_service_impacts_by_id_with_http_info(accept, id, opts)

```ruby
begin
  # Get impacted Business Services for a Status Dashboard by `id`.
  data, status_code, headers = api_instance.get_status_dashboard_service_impacts_by_id_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceSupportingServiceImpacts200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_service_impacts_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **additional_fields** | **String** | Provides access to additional fields such as highest priority per business service and total impacted count | [optional] |

### Return type

[**GetBusinessServiceSupportingServiceImpacts200Response**](GetBusinessServiceSupportingServiceImpacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status_dashboard_service_impacts_by_url_slug

> <GetBusinessServiceSupportingServiceImpacts200Response> get_status_dashboard_service_impacts_by_url_slug(accept, url_slug, opts)

Get impacted Business Services for a  Status Dashboard by `url_slug`

Get Business Service Impacts for the Business Services on a Status Dashboard by its `url_slug`. A `url_slug` is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a `dash-separated-string-like-this`.  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sored response, use the `ids[]` parameter on the `/business_services/impacts` endpoint.  Scoped OAuth requires: `status_dashboards.read` 

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

api_instance = PagerDutyOpenapiClient::StatusDashboardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
url_slug = 'url_slug_example' # String | The `url_slug` for a status dashboard
opts = {
  additional_fields: 'services.highest_impacting_priority' # String | Provides access to additional fields such as highest priority per business service and total impacted count
}

begin
  # Get impacted Business Services for a  Status Dashboard by `url_slug`
  result = api_instance.get_status_dashboard_service_impacts_by_url_slug(accept, url_slug, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_service_impacts_by_url_slug: #{e}"
end
```

#### Using the get_status_dashboard_service_impacts_by_url_slug_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessServiceSupportingServiceImpacts200Response>, Integer, Hash)> get_status_dashboard_service_impacts_by_url_slug_with_http_info(accept, url_slug, opts)

```ruby
begin
  # Get impacted Business Services for a  Status Dashboard by `url_slug`
  data, status_code, headers = api_instance.get_status_dashboard_service_impacts_by_url_slug_with_http_info(accept, url_slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessServiceSupportingServiceImpacts200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->get_status_dashboard_service_impacts_by_url_slug_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **url_slug** | **String** | The &#x60;url_slug&#x60; for a status dashboard |  |
| **additional_fields** | **String** | Provides access to additional fields such as highest priority per business service and total impacted count | [optional] |

### Return type

[**GetBusinessServiceSupportingServiceImpacts200Response**](GetBusinessServiceSupportingServiceImpacts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_status_dashboards

> <ListStatusDashboards200Response> list_status_dashboards(accept)

List Status Dashboards

Get all your account's custom Status Dashboard views.  Scoped OAuth requires: `status_dashboards.read` 

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

api_instance = PagerDutyOpenapiClient::StatusDashboardsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.

begin
  # List Status Dashboards
  result = api_instance.list_status_dashboards(accept)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->list_status_dashboards: #{e}"
end
```

#### Using the list_status_dashboards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListStatusDashboards200Response>, Integer, Hash)> list_status_dashboards_with_http_info(accept)

```ruby
begin
  # List Status Dashboards
  data, status_code, headers = api_instance.list_status_dashboards_with_http_info(accept)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListStatusDashboards200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling StatusDashboardsApi->list_status_dashboards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |

### Return type

[**ListStatusDashboards200Response**](ListStatusDashboards200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

