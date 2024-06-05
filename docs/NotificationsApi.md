# PagerDutyOpenapiClient::NotificationsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_notifications**](NotificationsApi.md#list_notifications) | **GET** /notifications | List notifications |


## list_notifications

> <ListNotifications200Response> list_notifications(accept, content_type, since, _until, opts)

List notifications

List notifications for a given time range, optionally filtered by type (sms_notification, email_notification, phone_notification, or push_notification).  A Notification is created when an Incident is triggered or escalated.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#notifications)  Scoped OAuth requires: `users:notifications.read` 

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

api_instance = PagerDutyOpenapiClient::NotificationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The start of the date range over which you want to search. The time element is optional.
_until = Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search. This should be in the same format as since. The size of the date range must be less than 3 months.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  filter: 'sms_notification', # String | Return notification of this type only.
  include: 'users' # String | Array of additional details to include.
}

begin
  # List notifications
  result = api_instance.list_notifications(accept, content_type, since, _until, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling NotificationsApi->list_notifications: #{e}"
end
```

#### Using the list_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListNotifications200Response>, Integer, Hash)> list_notifications_with_http_info(accept, content_type, since, _until, opts)

```ruby
begin
  # List notifications
  data, status_code, headers = api_instance.list_notifications_with_http_info(accept, content_type, since, _until, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListNotifications200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling NotificationsApi->list_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **since** | **Time** | The start of the date range over which you want to search. The time element is optional. |  |
| **_until** | **Time** | The end of the date range over which you want to search. This should be in the same format as since. The size of the date range must be less than 3 months. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **filter** | **String** | Return notification of this type only. | [optional] |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**ListNotifications200Response**](ListNotifications200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

