# PagerDutyOpenapiClient::AlertGroupingSettingsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_alert_grouping_setting**](AlertGroupingSettingsApi.md#delete_alert_grouping_setting) | **DELETE** /alert_grouping_settings/{id} | Delete an Alert Grouping Setting |
| [**get_alert_grouping_setting**](AlertGroupingSettingsApi.md#get_alert_grouping_setting) | **GET** /alert_grouping_settings/{id} | Get an Alert Grouping Setting |
| [**list_alert_grouping_settings**](AlertGroupingSettingsApi.md#list_alert_grouping_settings) | **GET** /alert_grouping_settings | List alert grouping settings |
| [**post_alert_grouping_settings**](AlertGroupingSettingsApi.md#post_alert_grouping_settings) | **POST** /alert_grouping_settings | Create an Alert Grouping Setting |
| [**put_alert_grouping_setting**](AlertGroupingSettingsApi.md#put_alert_grouping_setting) | **PUT** /alert_grouping_settings/{id} | Update an Alert Grouping Setting |


## delete_alert_grouping_setting

> delete_alert_grouping_setting(accept, content_type, id)

Delete an Alert Grouping Setting

Delete an existing Alert Grouping Setting.  The settings part of Alert Grouper service allows us to create Alert Grouping Settings and configs that are required to be used during grouping of the alerts.  Scoped OAuth requires: `services.write` 

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

api_instance = PagerDutyOpenapiClient::AlertGroupingSettingsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an Alert Grouping Setting
  api_instance.delete_alert_grouping_setting(accept, content_type, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->delete_alert_grouping_setting: #{e}"
end
```

#### Using the delete_alert_grouping_setting_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_alert_grouping_setting_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Alert Grouping Setting
  data, status_code, headers = api_instance.delete_alert_grouping_setting_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->delete_alert_grouping_setting_with_http_info: #{e}"
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


## get_alert_grouping_setting

> <PostAlertGroupingSettingsRequest> get_alert_grouping_setting(accept, content_type, id)

Get an Alert Grouping Setting

Get an existing Alert Grouping Setting.  The settings part of Alert Grouper service allows us to create Alert Grouping Settings and configs that are required to be used during grouping of the alerts.  Scoped OAuth requires: `services.read` 

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

api_instance = PagerDutyOpenapiClient::AlertGroupingSettingsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Alert Grouping Setting
  result = api_instance.get_alert_grouping_setting(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->get_alert_grouping_setting: #{e}"
end
```

#### Using the get_alert_grouping_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAlertGroupingSettingsRequest>, Integer, Hash)> get_alert_grouping_setting_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Alert Grouping Setting
  data, status_code, headers = api_instance.get_alert_grouping_setting_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAlertGroupingSettingsRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->get_alert_grouping_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**PostAlertGroupingSettingsRequest**](PostAlertGroupingSettingsRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_alert_grouping_settings

> <ListAlertGroupingSettings200Response> list_alert_grouping_settings(accept, content_type, opts)

List alert grouping settings

List all of your alert grouping settings including both single service settings and global content based settings.  The settings part of Alert Grouper service allows us to create Alert Grouping Settings and configs that are required to be used during grouping of the alerts.  Scoped OAuth requires: `services.read` 

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

api_instance = PagerDutyOpenapiClient::AlertGroupingSettingsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  after: 'after_example', # String | Cursor to retrieve next page; only present if next page exists.
  before: 'before_example', # String | Cursor to retrieve previous page; only present if not on first page.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  limit: 56, # Integer | The number of results per page.
  service_ids: ['inner_example'] # Array<String> | An array of service IDs. Only results related to these services will be returned.
}

begin
  # List alert grouping settings
  result = api_instance.list_alert_grouping_settings(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->list_alert_grouping_settings: #{e}"
end
```

#### Using the list_alert_grouping_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAlertGroupingSettings200Response>, Integer, Hash)> list_alert_grouping_settings_with_http_info(accept, content_type, opts)

```ruby
begin
  # List alert grouping settings
  data, status_code, headers = api_instance.list_alert_grouping_settings_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAlertGroupingSettings200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->list_alert_grouping_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **after** | **String** | Cursor to retrieve next page; only present if next page exists. | [optional] |
| **before** | **String** | Cursor to retrieve previous page; only present if not on first page. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **service_ids** | [**Array&lt;String&gt;**](String.md) | An array of service IDs. Only results related to these services will be returned. | [optional] |

### Return type

[**ListAlertGroupingSettings200Response**](ListAlertGroupingSettings200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_alert_grouping_settings

> <PostAlertGroupingSettingsRequest> post_alert_grouping_settings(accept, content_type, opts)

Create an Alert Grouping Setting

Create a new Alert Grouping Setting.  The settings part of Alert Grouper service allows us to create Alert Grouping Settings and configs that are required to be used during grouping of the alerts.  This endpoint will be used to create an instance of AlertGroupingSettings for either one service or many services that are in the alert group setting.  Scoped OAuth requires: `services.write` 

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

api_instance = PagerDutyOpenapiClient::AlertGroupingSettingsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  post_alert_grouping_settings_request: PagerDutyOpenapiClient::PostAlertGroupingSettingsRequest.new({alert_grouping_setting: PagerDutyOpenapiClient::AlertGroupingSetting.new}) # PostAlertGroupingSettingsRequest | 
}

begin
  # Create an Alert Grouping Setting
  result = api_instance.post_alert_grouping_settings(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->post_alert_grouping_settings: #{e}"
end
```

#### Using the post_alert_grouping_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAlertGroupingSettingsRequest>, Integer, Hash)> post_alert_grouping_settings_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create an Alert Grouping Setting
  data, status_code, headers = api_instance.post_alert_grouping_settings_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAlertGroupingSettingsRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->post_alert_grouping_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **post_alert_grouping_settings_request** | [**PostAlertGroupingSettingsRequest**](PostAlertGroupingSettingsRequest.md) |  | [optional] |

### Return type

[**PostAlertGroupingSettingsRequest**](PostAlertGroupingSettingsRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_alert_grouping_setting

> <PostAlertGroupingSettingsRequest> put_alert_grouping_setting(accept, content_type, id, opts)

Update an Alert Grouping Setting

Update an Alert Grouping Setting.  The settings part of Alert Grouper service allows us to create Alert Grouping Settings and configs that are required to be used during grouping of the alerts.  if `services` are not provided in the request, then the existing services will not be removed from the setting.  Scoped OAuth requires: `services.write` 

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

api_instance = PagerDutyOpenapiClient::AlertGroupingSettingsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  post_alert_grouping_settings_request: PagerDutyOpenapiClient::PostAlertGroupingSettingsRequest.new({alert_grouping_setting: PagerDutyOpenapiClient::AlertGroupingSetting.new}) # PostAlertGroupingSettingsRequest | 
}

begin
  # Update an Alert Grouping Setting
  result = api_instance.put_alert_grouping_setting(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->put_alert_grouping_setting: #{e}"
end
```

#### Using the put_alert_grouping_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAlertGroupingSettingsRequest>, Integer, Hash)> put_alert_grouping_setting_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an Alert Grouping Setting
  data, status_code, headers = api_instance.put_alert_grouping_setting_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAlertGroupingSettingsRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AlertGroupingSettingsApi->put_alert_grouping_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_alert_grouping_settings_request** | [**PostAlertGroupingSettingsRequest**](PostAlertGroupingSettingsRequest.md) |  | [optional] |

### Return type

[**PostAlertGroupingSettingsRequest**](PostAlertGroupingSettingsRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

