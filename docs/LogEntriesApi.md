# OpenapiClient::LogEntriesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_log_entry**](LogEntriesApi.md#get_log_entry) | **GET** /log_entries/{id} | Get a log entry |
| [**list_log_entries**](LogEntriesApi.md#list_log_entries) | **GET** /log_entries | List log entries |
| [**update_log_entry_channel**](LogEntriesApi.md#update_log_entry_channel) | **PUT** /log_entries/{id}/channel | Update log entry channel information. |


## get_log_entry

> <GetLogEntry200Response> get_log_entry(accept, content_type, id, opts)

Get a log entry

Get details for a specific incident log entry. This method provides additional information you can use to get at raw event data.  A log of all the events that happen to an Incident, and these are exposed as Log Entries.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#log-entries)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::LogEntriesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  include: 'incidents' # String | Array of additional Models to include in response.
}

begin
  # Get a log entry
  result = api_instance.get_log_entry(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->get_log_entry: #{e}"
end
```

#### Using the get_log_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLogEntry200Response>, Integer, Hash)> get_log_entry_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a log entry
  data, status_code, headers = api_instance.get_log_entry_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLogEntry200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->get_log_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**GetLogEntry200Response**](GetLogEntry200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_log_entries

> <ListIncidentLogEntries200Response> list_log_entries(accept, content_type, opts)

List log entries

List all of the incident log entries across the entire account.  A log of all the events that happen to an Incident, and these are exposed as Log Entries.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#log-entries)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::LogEntriesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search.
  is_overview: true, # Boolean | If `true`, will return a subset of log entries that show only the most important changes to the incident.
  include: 'incidents', # String | Array of additional Models to include in response.
  team_ids: ['inner_example'] # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
}

begin
  # List log entries
  result = api_instance.list_log_entries(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->list_log_entries: #{e}"
end
```

#### Using the list_log_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentLogEntries200Response>, Integer, Hash)> list_log_entries_with_http_info(accept, content_type, opts)

```ruby
begin
  # List log entries
  data, status_code, headers = api_instance.list_log_entries_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentLogEntries200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->list_log_entries_with_http_info: #{e}"
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
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |
| **is_overview** | **Boolean** | If &#x60;true&#x60;, will return a subset of log entries that show only the most important changes to the incident. | [optional][default to false] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |

### Return type

[**ListIncidentLogEntries200Response**](ListIncidentLogEntries200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_log_entry_channel

> update_log_entry_channel(accept, content_type, id, from, opts)

Update log entry channel information.

Update an existing incident log entry channel.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#log-entries)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::LogEntriesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  update_log_entry_channel_request: OpenapiClient::UpdateLogEntryChannelRequest.new({channel: OpenapiClient::UpdateLogEntryChannelRequestChannel.new({details: 'details_example', type: 'web_trigger'})}) # UpdateLogEntryChannelRequest | The log entry channel to be updated.
}

begin
  # Update log entry channel information.
  api_instance.update_log_entry_channel(accept, content_type, id, from, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->update_log_entry_channel: #{e}"
end
```

#### Using the update_log_entry_channel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_log_entry_channel_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Update log entry channel information.
  data, status_code, headers = api_instance.update_log_entry_channel_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling LogEntriesApi->update_log_entry_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **update_log_entry_channel_request** | [**UpdateLogEntryChannelRequest**](UpdateLogEntryChannelRequest.md) | The log entry channel to be updated. | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

