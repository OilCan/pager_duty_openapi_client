# PagerDutyOpenapiClient::ChangeEventsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_change_event**](ChangeEventsApi.md#create_change_event) | **POST** /change_events | Create a Change Event |
| [**get_change_event**](ChangeEventsApi.md#get_change_event) | **GET** /change_events/{id} | Get a Change Event |
| [**list_change_events**](ChangeEventsApi.md#list_change_events) | **GET** /change_events | List Change Events |
| [**list_incident_related_change_events**](ChangeEventsApi.md#list_incident_related_change_events) | **GET** /incidents/{id}/related_change_events | List related Change Events for an Incident |
| [**list_service_change_events**](ChangeEventsApi.md#list_service_change_events) | **GET** /services/{id}/change_events | List Change Events for a service |
| [**update_change_event**](ChangeEventsApi.md#update_change_event) | **PUT** /change_events/{id} | Update a Change Event |


## create_change_event

> create_change_event(accept, content_type)

Create a Change Event

Sending Change Events is documented as part of the V2 Events API. See [`Send Change Event`](https://developer.pagerduty.com/api-reference/b3A6Mjc0ODI2Ng-send-change-events-to-the-pager-duty-events-api). 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 

begin
  # Create a Change Event
  api_instance.create_change_event(accept, content_type)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->create_change_event: #{e}"
end
```

#### Using the create_change_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_change_event_with_http_info(accept, content_type)

```ruby
begin
  # Create a Change Event
  data, status_code, headers = api_instance.create_change_event_with_http_info(accept, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->create_change_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_change_event

> <GetChangeEvent200Response> get_change_event(accept, content_type, id)

Get a Change Event

Get details about an existing Change Event.  Scoped OAuth requires: `change_events.read` 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a Change Event
  result = api_instance.get_change_event(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->get_change_event: #{e}"
end
```

#### Using the get_change_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChangeEvent200Response>, Integer, Hash)> get_change_event_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a Change Event
  data, status_code, headers = api_instance.get_change_event_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChangeEvent200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->get_change_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetChangeEvent200Response**](GetChangeEvent200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_change_events

> <ListChangeEvents200Response> list_change_events(accept, content_type, opts)

List Change Events

List all of the existing Change Events.  Scoped OAuth requires: `change_events.read` 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  integration_ids: ['inner_example'], # Array<String> | An array of integration IDs. Only results related to these integrations will be returned.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
}

begin
  # List Change Events
  result = api_instance.list_change_events(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_change_events: #{e}"
end
```

#### Using the list_change_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChangeEvents200Response>, Integer, Hash)> list_change_events_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Change Events
  data, status_code, headers = api_instance.list_change_events_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChangeEvents200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_change_events_with_http_info: #{e}"
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
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **integration_ids** | [**Array&lt;String&gt;**](String.md) | An array of integration IDs. Only results related to these integrations will be returned. | [optional] |
| **since** | **Time** | The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes. | [optional] |

### Return type

[**ListChangeEvents200Response**](ListChangeEvents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_related_change_events

> <ListIncidentRelatedChangeEvents200Response> list_incident_related_change_events(id, accept, content_type, opts)

List related Change Events for an Incident

List related Change Events for an Incident, as well as the reason these changes are correlated with the incident.  Change events represent service changes such as deploys, build completion, and configuration changes, providing information that is critical during incident triage or hypercare. For more information on change events, see [Change Events](https://support.pagerduty.com/docs/change-events).  The Change Correlation feature provides incident responders with recent change events that are most relevant to that incident. Change Correlation informs the responder why a particular change event was surfaced and correlated to an incident based on three key factors which include time, related service, or intelligence (machine learning).  Scoped OAuth requires: `incidents.read` 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56 # Integer | The number of results per page.
}

begin
  # List related Change Events for an Incident
  result = api_instance.list_incident_related_change_events(id, accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_incident_related_change_events: #{e}"
end
```

#### Using the list_incident_related_change_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentRelatedChangeEvents200Response>, Integer, Hash)> list_incident_related_change_events_with_http_info(id, accept, content_type, opts)

```ruby
begin
  # List related Change Events for an Incident
  data, status_code, headers = api_instance.list_incident_related_change_events_with_http_info(id, accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentRelatedChangeEvents200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_incident_related_change_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |

### Return type

[**ListIncidentRelatedChangeEvents200Response**](ListIncidentRelatedChangeEvents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_change_events

> <ListChangeEvents200Response> list_service_change_events(id, accept, content_type, opts)

List Change Events for a service

List all of the existing Change Events for a service.  Scoped OAuth requires: `services.read` 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  integration_ids: ['inner_example'] # Array<String> | An array of integration IDs. Only results related to these integrations will be returned.
}

begin
  # List Change Events for a service
  result = api_instance.list_service_change_events(id, accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_service_change_events: #{e}"
end
```

#### Using the list_service_change_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChangeEvents200Response>, Integer, Hash)> list_service_change_events_with_http_info(id, accept, content_type, opts)

```ruby
begin
  # List Change Events for a service
  data, status_code, headers = api_instance.list_service_change_events_with_http_info(id, accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChangeEvents200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->list_service_change_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **since** | **Time** | The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes. | [optional] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **integration_ids** | [**Array&lt;String&gt;**](String.md) | An array of integration IDs. Only results related to these integrations will be returned. | [optional] |

### Return type

[**ListChangeEvents200Response**](ListChangeEvents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_change_event

> <GetChangeEvent200Response> update_change_event(accept, content_type, id, opts)

Update a Change Event

Update an existing Change Event  Scoped OAuth requires: `change_events.write` 

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

api_instance = PagerDutyOpenapiClient::ChangeEventsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  update_change_event_request: PagerDutyOpenapiClient::UpdateChangeEventRequest.new({change_event: PagerDutyOpenapiClient::ChangeEvent.new}) # UpdateChangeEventRequest | The Change Event to be updated.
}

begin
  # Update a Change Event
  result = api_instance.update_change_event(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->update_change_event: #{e}"
end
```

#### Using the update_change_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChangeEvent200Response>, Integer, Hash)> update_change_event_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a Change Event
  data, status_code, headers = api_instance.update_change_event_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChangeEvent200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ChangeEventsApi->update_change_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **update_change_event_request** | [**UpdateChangeEventRequest**](UpdateChangeEventRequest.md) | The Change Event to be updated. | [optional] |

### Return type

[**GetChangeEvent200Response**](GetChangeEvent200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

