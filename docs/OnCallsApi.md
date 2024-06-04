# OpenapiClient::OnCallsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_on_calls**](OnCallsApi.md#list_on_calls) | **GET** /oncalls | List all of the on-calls |


## list_on_calls

> <ListOnCalls200Response> list_on_calls(accept, content_type, opts)

List all of the on-calls

List the on-call entries during a given time range.  An on-call represents a contiguous unit of time for which a User will be on call for a given Escalation Policy and Escalation Rules.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#on-calls)  Scoped OAuth requires: `oncalls.read`  This API operation has operation specific rate limits. See the [Rate Limits](https://developer.pagerduty.com/docs/72d3b724589e3-rest-api-rate-limits) page for more information. 

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

api_instance = OpenapiClient::OnCallsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  include: 'escalation_policies', # String | Array of additional details to include.
  user_ids: ['inner_example'], # Array<String> | Filters the results, showing only on-calls for the specified user IDs.
  escalation_policy_ids: ['inner_example'], # Array<String> | Filters the results, showing only on-calls for the specified escalation policy IDs.
  schedule_ids: ['inner_example'], # Array<String> | Filters the results, showing only on-calls for the specified schedule IDs. If `null` is provided in the array, it includes permanent on-calls due to direct user escalation targets.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the time range over which you want to search. If an on-call period overlaps with the range, it will be included in the result. Defaults to current time. On-call shifts are limited to 90 days in the future.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the time range over which you want to search. If an on-call period overlaps with the range, it will be included in the result. Defaults to current time. On-call shifts are limited to 90 days in the future, and the `until` time cannot be before the `since` time.
  earliest: true # Boolean | This will filter on-calls such that only the earliest on-call for each combination of escalation policy, escalation level, and user is returned. This is useful for determining when the \"next\" on-calls are for a given set of filters.
}

begin
  # List all of the on-calls
  result = api_instance.list_on_calls(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OnCallsApi->list_on_calls: #{e}"
end
```

#### Using the list_on_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOnCalls200Response>, Integer, Hash)> list_on_calls_with_http_info(accept, content_type, opts)

```ruby
begin
  # List all of the on-calls
  data, status_code, headers = api_instance.list_on_calls_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOnCalls200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OnCallsApi->list_on_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **include** | **String** | Array of additional details to include. | [optional] |
| **user_ids** | [**Array&lt;String&gt;**](String.md) | Filters the results, showing only on-calls for the specified user IDs. | [optional] |
| **escalation_policy_ids** | [**Array&lt;String&gt;**](String.md) | Filters the results, showing only on-calls for the specified escalation policy IDs. | [optional] |
| **schedule_ids** | [**Array&lt;String&gt;**](String.md) | Filters the results, showing only on-calls for the specified schedule IDs. If &#x60;null&#x60; is provided in the array, it includes permanent on-calls due to direct user escalation targets. | [optional] |
| **since** | **Time** | The start of the time range over which you want to search. If an on-call period overlaps with the range, it will be included in the result. Defaults to current time. On-call shifts are limited to 90 days in the future. | [optional] |
| **_until** | **Time** | The end of the time range over which you want to search. If an on-call period overlaps with the range, it will be included in the result. Defaults to current time. On-call shifts are limited to 90 days in the future, and the &#x60;until&#x60; time cannot be before the &#x60;since&#x60; time. | [optional] |
| **earliest** | **Boolean** | This will filter on-calls such that only the earliest on-call for each combination of escalation policy, escalation level, and user is returned. This is useful for determining when the \&quot;next\&quot; on-calls are for a given set of filters. | [optional] |

### Return type

[**ListOnCalls200Response**](ListOnCalls200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

