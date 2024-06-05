# PagerDutyOpenapiClient::SchedulesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_schedule**](SchedulesApi.md#create_schedule) | **POST** /schedules | Create a schedule |
| [**create_schedule_override**](SchedulesApi.md#create_schedule_override) | **POST** /schedules/{id}/overrides | Create one or more overrides |
| [**create_schedule_preview**](SchedulesApi.md#create_schedule_preview) | **POST** /schedules/preview | Preview a schedule |
| [**delete_schedule**](SchedulesApi.md#delete_schedule) | **DELETE** /schedules/{id} | Delete a schedule |
| [**delete_schedule_override**](SchedulesApi.md#delete_schedule_override) | **DELETE** /schedules/{id}/overrides/{override_id} | Delete an override |
| [**get_schedule**](SchedulesApi.md#get_schedule) | **GET** /schedules/{id} | Get a schedule |
| [**list_schedule_overrides**](SchedulesApi.md#list_schedule_overrides) | **GET** /schedules/{id}/overrides | List overrides |
| [**list_schedule_users**](SchedulesApi.md#list_schedule_users) | **GET** /schedules/{id}/users | List users on call. |
| [**list_schedules**](SchedulesApi.md#list_schedules) | **GET** /schedules | List schedules |
| [**list_schedules_audit_records**](SchedulesApi.md#list_schedules_audit_records) | **GET** /schedules/{id}/audit/records | List audit records for a schedule |
| [**update_schedule**](SchedulesApi.md#update_schedule) | **PUT** /schedules/{id} | Update a schedule |


## create_schedule

> <CreateScheduleRequest> create_schedule(accept, content_type, opts)

Create a schedule

Create a new on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  overflow: true, # Boolean | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter `overflow=true` is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from `2011-06-01T10:00:00Z` to `2011-06-01T14:00:00Z`:   - If you don't pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T10:00:00Z` and end of `2011-06-01T14:00:00Z`. - If you do pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T00:00:00Z` and end of `2011-06-02T00:00:00Z`. 
  create_schedule_request: PagerDutyOpenapiClient::CreateScheduleRequest.new({schedule: PagerDutyOpenapiClient::Schedule.new({type: 'schedule', time_zone: 'time_zone_example'})}) # CreateScheduleRequest | The schedule to be created.
}

begin
  # Create a schedule
  result = api_instance.create_schedule(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule: #{e}"
end
```

#### Using the create_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateScheduleRequest>, Integer, Hash)> create_schedule_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a schedule
  data, status_code, headers = api_instance.create_schedule_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateScheduleRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **overflow** | **Boolean** | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;.  | [optional][default to false] |
| **create_schedule_request** | [**CreateScheduleRequest**](CreateScheduleRequest.md) | The schedule to be created. | [optional] |

### Return type

[**CreateScheduleRequest**](CreateScheduleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_schedule_override

> <Array<CreateScheduleOverride201ResponseInner>> create_schedule_override(accept, content_type, id, create_schedule_override_request)

Create one or more overrides

Create one or more overrides, each for a specific user covering a specified time range. If you create an override on top of an existing override, the last created override will have priority.  A Schedule determines the time periods that users are On-Call.  Note: An older implementation of this endpoint only supported creating a single ocverride per request. That functionality is still supported, but deprecated and may be removed in the future.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
create_schedule_override_request = PagerDutyOpenapiClient::CreateScheduleOverrideRequest.new # CreateScheduleOverrideRequest | The overrides to be created

begin
  # Create one or more overrides
  result = api_instance.create_schedule_override(accept, content_type, id, create_schedule_override_request)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule_override: #{e}"
end
```

#### Using the create_schedule_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CreateScheduleOverride201ResponseInner>>, Integer, Hash)> create_schedule_override_with_http_info(accept, content_type, id, create_schedule_override_request)

```ruby
begin
  # Create one or more overrides
  data, status_code, headers = api_instance.create_schedule_override_with_http_info(accept, content_type, id, create_schedule_override_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CreateScheduleOverride201ResponseInner>>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_schedule_override_request** | [**CreateScheduleOverrideRequest**](CreateScheduleOverrideRequest.md) | The overrides to be created |  |

### Return type

[**Array&lt;CreateScheduleOverride201ResponseInner&gt;**](CreateScheduleOverride201ResponseInner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_schedule_preview

> <CreateScheduleRequest> create_schedule_preview(accept, content_type, opts)

Preview a schedule

Preview what an on-call schedule would look like without saving it.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search.
  overflow: true, # Boolean | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter `overflow=true` is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from `2011-06-01T10:00:00Z` to `2011-06-01T14:00:00Z`:   - If you don't pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T10:00:00Z` and end of `2011-06-01T14:00:00Z`. - If you do pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T00:00:00Z` and end of `2011-06-02T00:00:00Z`. 
  create_schedule_request: PagerDutyOpenapiClient::CreateScheduleRequest.new({schedule: PagerDutyOpenapiClient::Schedule.new({type: 'schedule', time_zone: 'time_zone_example'})}) # CreateScheduleRequest | The schedule to be previewed.
}

begin
  # Preview a schedule
  result = api_instance.create_schedule_preview(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule_preview: #{e}"
end
```

#### Using the create_schedule_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateScheduleRequest>, Integer, Hash)> create_schedule_preview_with_http_info(accept, content_type, opts)

```ruby
begin
  # Preview a schedule
  data, status_code, headers = api_instance.create_schedule_preview_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateScheduleRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->create_schedule_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |
| **overflow** | **Boolean** | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;.  | [optional][default to false] |
| **create_schedule_request** | [**CreateScheduleRequest**](CreateScheduleRequest.md) | The schedule to be previewed. | [optional] |

### Return type

[**CreateScheduleRequest**](CreateScheduleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_schedule

> delete_schedule(accept, content_type, id)

Delete a schedule

Delete an on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a schedule
  api_instance.delete_schedule(accept, content_type, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->delete_schedule: #{e}"
end
```

#### Using the delete_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_schedule_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a schedule
  data, status_code, headers = api_instance.delete_schedule_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->delete_schedule_with_http_info: #{e}"
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


## delete_schedule_override

> delete_schedule_override(accept, content_type, id, override_id)

Delete an override

Remove an override.  You cannot remove a past override.  If the override start time is before the current time, but the end time is after the current time, the override will be truncated to the current time.  If the override is truncated, the status code will be 200 OK, as opposed to a 204 No Content for a successful delete.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
override_id = 'override_id_example' # String | The override ID on the schedule.

begin
  # Delete an override
  api_instance.delete_schedule_override(accept, content_type, id, override_id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->delete_schedule_override: #{e}"
end
```

#### Using the delete_schedule_override_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_schedule_override_with_http_info(accept, content_type, id, override_id)

```ruby
begin
  # Delete an override
  data, status_code, headers = api_instance.delete_schedule_override_with_http_info(accept, content_type, id, override_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->delete_schedule_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **override_id** | **String** | The override ID on the schedule. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schedule

> <CreateScheduleRequest> get_schedule(accept, content_type, id, opts)

Get a schedule

Show detailed information about a schedule, including entries for each layer. Scoped OAuth requires: `schedules.read` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the schedule's time zone.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to show schedule entries. Defaults to 2 weeks before until if an until is given.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to show schedule entries. Defaults to 2 weeks after since if a since is given.
  overflow: true # Boolean | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter `overflow=true` is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from `2011-06-01T10:00:00Z` to `2011-06-01T14:00:00Z`:   - If you don't pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T10:00:00Z` and end of `2011-06-01T14:00:00Z`. - If you do pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T00:00:00Z` and end of `2011-06-02T00:00:00Z`. 
}

begin
  # Get a schedule
  result = api_instance.get_schedule(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->get_schedule: #{e}"
end
```

#### Using the get_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateScheduleRequest>, Integer, Hash)> get_schedule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a schedule
  data, status_code, headers = api_instance.get_schedule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateScheduleRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->get_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the schedule&#39;s time zone. | [optional] |
| **since** | **Time** | The start of the date range over which you want to show schedule entries. Defaults to 2 weeks before until if an until is given. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to show schedule entries. Defaults to 2 weeks after since if a since is given. | [optional] |
| **overflow** | **Boolean** | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;.  | [optional][default to false] |

### Return type

[**CreateScheduleRequest**](CreateScheduleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedule_overrides

> <ListScheduleOverrides201Response> list_schedule_overrides(accept, content_type, id, since, _until, opts)

List overrides

List overrides for a given time range.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.read` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The start of the date range over which you want to search.
_until = Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search.
opts = {
  editable: true, # Boolean | When this parameter is present, only editable overrides will be returned. The result will only include the id of the override if this parameter is present. Only future overrides are editable.
  overflow: true # Boolean | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter overflow=true is passed. This parameter defaults to false.
}

begin
  # List overrides
  result = api_instance.list_schedule_overrides(accept, content_type, id, since, _until, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_overrides: #{e}"
end
```

#### Using the list_schedule_overrides_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListScheduleOverrides201Response>, Integer, Hash)> list_schedule_overrides_with_http_info(accept, content_type, id, since, _until, opts)

```ruby
begin
  # List overrides
  data, status_code, headers = api_instance.list_schedule_overrides_with_http_info(accept, content_type, id, since, _until, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListScheduleOverrides201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_overrides_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **since** | **Time** | The start of the date range over which you want to search. |  |
| **_until** | **Time** | The end of the date range over which you want to search. |  |
| **editable** | **Boolean** | When this parameter is present, only editable overrides will be returned. The result will only include the id of the override if this parameter is present. Only future overrides are editable. | [optional] |
| **overflow** | **Boolean** | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter overflow&#x3D;true is passed. This parameter defaults to false. | [optional] |

### Return type

[**ListScheduleOverrides201Response**](ListScheduleOverrides201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedule_users

> <ListScheduleUsers200Response> list_schedule_users(accept, content_type, id, opts)

List users on call.

List all of the users on call in a given schedule for a given time range.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `users.read` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search.
}

begin
  # List users on call.
  result = api_instance.list_schedule_users(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_users: #{e}"
end
```

#### Using the list_schedule_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListScheduleUsers200Response>, Integer, Hash)> list_schedule_users_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List users on call.
  data, status_code, headers = api_instance.list_schedule_users_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListScheduleUsers200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |

### Return type

[**ListScheduleUsers200Response**](ListScheduleUsers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedules

> <ListSchedules200Response> list_schedules(accept, content_type, opts)

List schedules

List the on-call schedules.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.read` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  include: 'schedule_layers', # String | Array of additional details to include.
  time_zone: 'time_zone_example' # String | Time zone in which results will be rendered. This will default to the current user's time zone and then the account's time zone.
}

begin
  # List schedules
  result = api_instance.list_schedules(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedules: #{e}"
end
```

#### Using the list_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSchedules200Response>, Integer, Hash)> list_schedules_with_http_info(accept, content_type, opts)

```ruby
begin
  # List schedules
  data, status_code, headers = api_instance.list_schedules_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSchedules200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedules_with_http_info: #{e}"
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
| **include** | **String** | Array of additional details to include. | [optional] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the current user&#39;s time zone and then the account&#39;s time zone. | [optional] |

### Return type

[**ListSchedules200Response**](ListSchedules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedules_audit_records

> <AuditRecordResponseSchema> list_schedules_audit_records(accept, content_type, id, opts)

List audit records for a schedule

The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search. If not specified, defaults to `now() - 24 hours` (past 24 hours)
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search. If not specified, defaults to `now()`. May not be more than 31 days after `since`.
}

begin
  # List audit records for a schedule
  result = api_instance.list_schedules_audit_records(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedules_audit_records: #{e}"
end
```

#### Using the list_schedules_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_schedules_audit_records_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List audit records for a schedule
  data, status_code, headers = api_instance.list_schedules_audit_records_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedules_audit_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours) | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;. | [optional] |

### Return type

[**AuditRecordResponseSchema**](AuditRecordResponseSchema.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_schedule

> <CreateScheduleRequest> update_schedule(accept, content_type, id, opts)

Update a schedule

Update an existing on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: `schedules.write` 

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

api_instance = PagerDutyOpenapiClient::SchedulesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  overflow: true, # Boolean | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter `overflow=true` is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from `2011-06-01T10:00:00Z` to `2011-06-01T14:00:00Z`:   - If you don't pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T10:00:00Z` and end of `2011-06-01T14:00:00Z`. - If you do pass the `overflow=true` parameter, you will get one schedule entry returned with a start of `2011-06-01T00:00:00Z` and end of `2011-06-02T00:00:00Z`. 
  create_schedule_request: PagerDutyOpenapiClient::CreateScheduleRequest.new({schedule: PagerDutyOpenapiClient::Schedule.new({type: 'schedule', time_zone: 'time_zone_example'})}) # CreateScheduleRequest | The schedule to be updated.
}

begin
  # Update a schedule
  result = api_instance.update_schedule(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->update_schedule: #{e}"
end
```

#### Using the update_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateScheduleRequest>, Integer, Hash)> update_schedule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a schedule
  data, status_code, headers = api_instance.update_schedule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateScheduleRequest>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling SchedulesApi->update_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **overflow** | **Boolean** | Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;.  | [optional][default to false] |
| **create_schedule_request** | [**CreateScheduleRequest**](CreateScheduleRequest.md) | The schedule to be updated. | [optional] |

### Return type

[**CreateScheduleRequest**](CreateScheduleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

