# OpenapiClient::IncidentsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_incident**](IncidentsApi.md#create_incident) | **POST** /incidents | Create an Incident |
| [**create_incident_note**](IncidentsApi.md#create_incident_note) | **POST** /incidents/{id}/notes | Create a note on an incident |
| [**create_incident_notification_subscribers**](IncidentsApi.md#create_incident_notification_subscribers) | **POST** /incidents/{id}/status_updates/subscribers | Add Notification Subscribers |
| [**create_incident_responder_request**](IncidentsApi.md#create_incident_responder_request) | **POST** /incidents/{id}/responder_requests | Create a responder request for an incident |
| [**create_incident_snooze**](IncidentsApi.md#create_incident_snooze) | **POST** /incidents/{id}/snooze | Snooze an incident |
| [**create_incident_status_update**](IncidentsApi.md#create_incident_status_update) | **POST** /incidents/{id}/status_updates | Create a status update on an incident |
| [**get_incident**](IncidentsApi.md#get_incident) | **GET** /incidents/{id} | Get an incident |
| [**get_incident_alert**](IncidentsApi.md#get_incident_alert) | **GET** /incidents/{id}/alerts/{alert_id} | Get an alert |
| [**get_incident_field_values**](IncidentsApi.md#get_incident_field_values) | **GET** /incidents/{id}/custom_fields/values | Get Custom Field Values |
| [**get_incident_impacted_business_services**](IncidentsApi.md#get_incident_impacted_business_services) | **GET** /incidents/{id}/business_services/impacts | List Business Services impacted by the given Incident |
| [**get_incident_notification_subscribers**](IncidentsApi.md#get_incident_notification_subscribers) | **GET** /incidents/{id}/status_updates/subscribers | List Notification Subscribers |
| [**get_outlier_incident**](IncidentsApi.md#get_outlier_incident) | **GET** /incidents/{id}/outlier_incident | Get Outlier Incident |
| [**get_past_incidents**](IncidentsApi.md#get_past_incidents) | **GET** /incidents/{id}/past_incidents | Get Past Incidents |
| [**get_related_incidents**](IncidentsApi.md#get_related_incidents) | **GET** /incidents/{id}/related_incidents | Get Related Incidents |
| [**list_incident_alerts**](IncidentsApi.md#list_incident_alerts) | **GET** /incidents/{id}/alerts | List alerts for an incident |
| [**list_incident_log_entries**](IncidentsApi.md#list_incident_log_entries) | **GET** /incidents/{id}/log_entries | List log entries for an incident |
| [**list_incident_notes**](IncidentsApi.md#list_incident_notes) | **GET** /incidents/{id}/notes | List notes for an incident |
| [**list_incidents**](IncidentsApi.md#list_incidents) | **GET** /incidents | List incidents |
| [**merge_incidents**](IncidentsApi.md#merge_incidents) | **PUT** /incidents/{id}/merge | Merge incidents |
| [**put_incident_manual_business_service_association**](IncidentsApi.md#put_incident_manual_business_service_association) | **PUT** /incidents/{id}/business_services/{business_service_id}/impacts | Manually change an Incident&#39;s Impact on a Business Service. |
| [**remove_incident_notification_subscribers**](IncidentsApi.md#remove_incident_notification_subscribers) | **POST** /incidents/{id}/status_updates/unsubscribe | Remove Notification Subscriber |
| [**set_incident_field_values**](IncidentsApi.md#set_incident_field_values) | **PUT** /incidents/{id}/custom_fields/values | Update Custom Field Values |
| [**update_incident**](IncidentsApi.md#update_incident) | **PUT** /incidents/{id} | Update an incident |
| [**update_incident_alert**](IncidentsApi.md#update_incident_alert) | **PUT** /incidents/{id}/alerts/{alert_id} | Update an alert |
| [**update_incident_alerts**](IncidentsApi.md#update_incident_alerts) | **PUT** /incidents/{id}/alerts | Manage alerts |
| [**update_incidents**](IncidentsApi.md#update_incidents) | **PUT** /incidents | Manage incidents |


## create_incident

> <CreateIncident201Response> create_incident(accept, content_type, from, opts)

Create an Incident

Create an incident synchronously without a corresponding event from a monitoring service.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write`  This API operation has operation specific rate limits. See the [Rate Limits](https://developer.pagerduty.com/docs/72d3b724589e3-rest-api-rate-limits) page for more information. 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_incident_request: OpenapiClient::CreateIncidentRequest.new({incident: OpenapiClient::CreateIncidentRequestIncident.new({type: 'incident', title: 'title_example', service: OpenapiClient::ServiceReference.new({type: 'service_reference'})})}) # CreateIncidentRequest | 
}

begin
  # Create an Incident
  result = api_instance.create_incident(accept, content_type, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident: #{e}"
end
```

#### Using the create_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncident201Response>, Integer, Hash)> create_incident_with_http_info(accept, content_type, from, opts)

```ruby
begin
  # Create an Incident
  data, status_code, headers = api_instance.create_incident_with_http_info(accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncident201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_incident_request** | [**CreateIncidentRequest**](CreateIncidentRequest.md) |  | [optional] |

### Return type

[**CreateIncident201Response**](CreateIncident201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_note

> <CreateIncidentNote200Response> create_incident_note(accept, content_type, id, from, opts)

Create a note on an incident

Create a new note for the specified incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  A maximum of 2000 notes can be added to an incident.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_incident_note_request: OpenapiClient::CreateIncidentNoteRequest.new({note: OpenapiClient::CreateIncidentNoteRequestNote.new({content: 'content_example'})}) # CreateIncidentNoteRequest | 
}

begin
  # Create a note on an incident
  result = api_instance.create_incident_note(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_note: #{e}"
end
```

#### Using the create_incident_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentNote200Response>, Integer, Hash)> create_incident_note_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Create a note on an incident
  data, status_code, headers = api_instance.create_incident_note_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentNote200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_incident_note_request** | [**CreateIncidentNoteRequest**](CreateIncidentNoteRequest.md) |  | [optional] |

### Return type

[**CreateIncidentNote200Response**](CreateIncidentNote200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_notification_subscribers

> <CreateBusinessServiceNotificationSubscribers200Response> create_incident_notification_subscribers(accept, id, opts)

Add Notification Subscribers

Subscribe the given entities to Incident Status Update Notifications.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_business_service_notification_subscribers_request: OpenapiClient::CreateBusinessServiceNotificationSubscribersRequest.new({subscribers: [OpenapiClient::NotificationSubscriber.new]}) # CreateBusinessServiceNotificationSubscribersRequest | The entities to subscribe.
}

begin
  # Add Notification Subscribers
  result = api_instance.create_incident_notification_subscribers(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_notification_subscribers: #{e}"
end
```

#### Using the create_incident_notification_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessServiceNotificationSubscribers200Response>, Integer, Hash)> create_incident_notification_subscribers_with_http_info(accept, id, opts)

```ruby
begin
  # Add Notification Subscribers
  data, status_code, headers = api_instance.create_incident_notification_subscribers_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessServiceNotificationSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_notification_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_business_service_notification_subscribers_request** | [**CreateBusinessServiceNotificationSubscribersRequest**](CreateBusinessServiceNotificationSubscribersRequest.md) | The entities to subscribe. | [optional] |

### Return type

[**CreateBusinessServiceNotificationSubscribers200Response**](CreateBusinessServiceNotificationSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_responder_request

> <CreateIncidentResponderRequest200Response> create_incident_responder_request(accept, content_type, id, from, opts)

Create a responder request for an incident

Send a new responder request for the specified incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_incident_responder_request_request: OpenapiClient::CreateIncidentResponderRequestRequest.new({requester_id: 'requester_id_example', message: 'message_example', responder_request_targets: [OpenapiClient::ResponderRequestTargetReference.new]}) # CreateIncidentResponderRequestRequest | 
}

begin
  # Create a responder request for an incident
  result = api_instance.create_incident_responder_request(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_responder_request: #{e}"
end
```

#### Using the create_incident_responder_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentResponderRequest200Response>, Integer, Hash)> create_incident_responder_request_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Create a responder request for an incident
  data, status_code, headers = api_instance.create_incident_responder_request_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentResponderRequest200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_responder_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_incident_responder_request_request** | [**CreateIncidentResponderRequestRequest**](CreateIncidentResponderRequestRequest.md) |  | [optional] |

### Return type

[**CreateIncidentResponderRequest200Response**](CreateIncidentResponderRequest200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_snooze

> <CreateIncident201Response> create_incident_snooze(accept, content_type, id, from, opts)

Snooze an incident

Snooze an incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_incident_snooze_request: OpenapiClient::CreateIncidentSnoozeRequest.new({duration: 37}) # CreateIncidentSnoozeRequest | 
}

begin
  # Snooze an incident
  result = api_instance.create_incident_snooze(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_snooze: #{e}"
end
```

#### Using the create_incident_snooze_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncident201Response>, Integer, Hash)> create_incident_snooze_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Snooze an incident
  data, status_code, headers = api_instance.create_incident_snooze_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncident201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_snooze_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_incident_snooze_request** | [**CreateIncidentSnoozeRequest**](CreateIncidentSnoozeRequest.md) |  | [optional] |

### Return type

[**CreateIncident201Response**](CreateIncident201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_status_update

> <CreateIncidentStatusUpdate200Response> create_incident_status_update(accept, content_type, id, from, opts)

Create a status update on an incident

Create a new status update for the specified incident. Optionally pass `subject` and `html_message` properties in the request body to override the email notification that gets sent.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_incident_status_update_request: OpenapiClient::CreateIncidentStatusUpdateRequest.new({message: 'message_example'}) # CreateIncidentStatusUpdateRequest | 
}

begin
  # Create a status update on an incident
  result = api_instance.create_incident_status_update(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_status_update: #{e}"
end
```

#### Using the create_incident_status_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentStatusUpdate200Response>, Integer, Hash)> create_incident_status_update_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Create a status update on an incident
  data, status_code, headers = api_instance.create_incident_status_update_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentStatusUpdate200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->create_incident_status_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_incident_status_update_request** | [**CreateIncidentStatusUpdateRequest**](CreateIncidentStatusUpdateRequest.md) |  | [optional] |

### Return type

[**CreateIncidentStatusUpdate200Response**](CreateIncidentStatusUpdate200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_incident

> <CreateIncident201Response> get_incident(accept, content_type, id, opts)

Get an incident

Show detailed information about an incident. Accepts either an incident id, or an incident number.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'acknowledgers' # String | Array of additional details to include.
}

begin
  # Get an incident
  result = api_instance.get_incident(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident: #{e}"
end
```

#### Using the get_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncident201Response>, Integer, Hash)> get_incident_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get an incident
  data, status_code, headers = api_instance.get_incident_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncident201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateIncident201Response**](CreateIncident201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_alert

> <GetIncidentAlert200Response> get_incident_alert(accept, content_type, id, alert_id)

Get an alert

Show detailed information about an alert. Accepts an alert id.  An incident represents a problem or an issue that needs to be addressed and resolved.  When a service sends an event to PagerDuty, an alert and corresponding incident is triggered in PagerDuty.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
alert_id = 'alert_id_example' # String | The id of the alert to retrieve.

begin
  # Get an alert
  result = api_instance.get_incident_alert(accept, content_type, id, alert_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_alert: #{e}"
end
```

#### Using the get_incident_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentAlert200Response>, Integer, Hash)> get_incident_alert_with_http_info(accept, content_type, id, alert_id)

```ruby
begin
  # Get an alert
  data, status_code, headers = api_instance.get_incident_alert_with_http_info(accept, content_type, id, alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentAlert200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **alert_id** | **String** | The id of the alert to retrieve. |  |

### Return type

[**GetIncidentAlert200Response**](GetIncidentAlert200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_field_values

> <GetIncidentFieldValues200Response> get_incident_field_values(id)

Get Custom Field Values

Get custom field values for an incident.  <!-- theme: warning -->  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
id = 'id_example' # String | The ID of the resource.

begin
  # Get Custom Field Values
  result = api_instance.get_incident_field_values(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_field_values: #{e}"
end
```

#### Using the get_incident_field_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentFieldValues200Response>, Integer, Hash)> get_incident_field_values_with_http_info(id)

```ruby
begin
  # Get Custom Field Values
  data, status_code, headers = api_instance.get_incident_field_values_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentFieldValues200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_field_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetIncidentFieldValues200Response**](GetIncidentFieldValues200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_impacted_business_services

> <GetIncidentImpactedBusinessServices200Response> get_incident_impacted_business_services(accept, id, x_early_access)

List Business Services impacted by the given Incident

Retrieve a list of Business Services that are being impacted by the given Incident. Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!

begin
  # List Business Services impacted by the given Incident
  result = api_instance.get_incident_impacted_business_services(accept, id, x_early_access)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_impacted_business_services: #{e}"
end
```

#### Using the get_incident_impacted_business_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentImpactedBusinessServices200Response>, Integer, Hash)> get_incident_impacted_business_services_with_http_info(accept, id, x_early_access)

```ruby
begin
  # List Business Services impacted by the given Incident
  data, status_code, headers = api_instance.get_incident_impacted_business_services_with_http_info(accept, id, x_early_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentImpactedBusinessServices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_impacted_business_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |

### Return type

[**GetIncidentImpactedBusinessServices200Response**](GetIncidentImpactedBusinessServices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_notification_subscribers

> <GetIncidentNotificationSubscribers200Response> get_incident_notification_subscribers(accept, id)

List Notification Subscribers

Retrieve a list of Notification Subscribers on the Incident.  <!-- theme: warning --> > Users must be added through `POST /incident/{id}/status_updates/subscribers` to be returned from this endpoint. Scoped OAuth requires: `subscribers.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # List Notification Subscribers
  result = api_instance.get_incident_notification_subscribers(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_notification_subscribers: #{e}"
end
```

#### Using the get_incident_notification_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentNotificationSubscribers200Response>, Integer, Hash)> get_incident_notification_subscribers_with_http_info(accept, id)

```ruby
begin
  # List Notification Subscribers
  data, status_code, headers = api_instance.get_incident_notification_subscribers_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentNotificationSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_notification_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetIncidentNotificationSubscribers200Response**](GetIncidentNotificationSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_outlier_incident

> <GetOutlierIncident200Response> get_outlier_incident(accept, content_type, id, opts)

Get Outlier Incident

Gets Outlier Incident information for a given Incident on its Service.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#outlier-incident)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  additional_details: 'incident' # String | Array of additional attributes to any of the returned incidents for related incidents.
}

begin
  # Get Outlier Incident
  result = api_instance.get_outlier_incident(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_outlier_incident: #{e}"
end
```

#### Using the get_outlier_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOutlierIncident200Response>, Integer, Hash)> get_outlier_incident_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get Outlier Incident
  data, status_code, headers = api_instance.get_outlier_incident_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOutlierIncident200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_outlier_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **additional_details** | **String** | Array of additional attributes to any of the returned incidents for related incidents. | [optional] |

### Return type

[**GetOutlierIncident200Response**](GetOutlierIncident200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_past_incidents

> <GetPastIncidents200Response> get_past_incidents(accept, content_type, id, opts)

Get Past Incidents

Past Incidents returns Incidents within the past 6 months that have similar metadata and were generated on the same Service as the parent Incident. By default, 5 Past Incidents are returned. Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#past_incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results to be returned in the response.
  total: true # Boolean | By default the `total` field in the response body is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated with the total number of Past Incidents. 
}

begin
  # Get Past Incidents
  result = api_instance.get_past_incidents(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_past_incidents: #{e}"
end
```

#### Using the get_past_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPastIncidents200Response>, Integer, Hash)> get_past_incidents_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get Past Incidents
  data, status_code, headers = api_instance.get_past_incidents_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPastIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_past_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results to be returned in the response. | [optional][default to 5] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in the response body is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated with the total number of Past Incidents.  | [optional][default to false] |

### Return type

[**GetPastIncidents200Response**](GetPastIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_related_incidents

> <GetRelatedIncidents200Response> get_related_incidents(accept, content_type, id, opts)

Get Related Incidents

Returns the 20 most recent Related Incidents that are impacting other Responders and Services. Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#related_incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  additional_details: 'incident' # String | Array of additional attributes to any of the returned incidents for related incidents.
}

begin
  # Get Related Incidents
  result = api_instance.get_related_incidents(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_related_incidents: #{e}"
end
```

#### Using the get_related_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRelatedIncidents200Response>, Integer, Hash)> get_related_incidents_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get Related Incidents
  data, status_code, headers = api_instance.get_related_incidents_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRelatedIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->get_related_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **additional_details** | **String** | Array of additional attributes to any of the returned incidents for related incidents. | [optional] |

### Return type

[**GetRelatedIncidents200Response**](GetRelatedIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_alerts

> <ListIncidentAlerts200Response> list_incident_alerts(accept, content_type, id, opts)

List alerts for an incident

List alerts for the specified incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  alert_key: 'alert_key_example', # String | Alert de-duplication key.
  statuses: 'triggered', # String | Return only alerts with the given statuses. (More status codes may be introduced in the future.)
  sort_by: 'created_at', # String | Used to specify both the field you wish to sort the results on (created_at/resolved_at), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. A maximum of two fields can be included, separated by a comma. Sort direction defaults to ascending.
  include: 'services' # String | Array of additional details to include.
}

begin
  # List alerts for an incident
  result = api_instance.list_incident_alerts(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_alerts: #{e}"
end
```

#### Using the list_incident_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentAlerts200Response>, Integer, Hash)> list_incident_alerts_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List alerts for an incident
  data, status_code, headers = api_instance.list_incident_alerts_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **alert_key** | **String** | Alert de-duplication key. | [optional] |
| **statuses** | **String** | Return only alerts with the given statuses. (More status codes may be introduced in the future.) | [optional] |
| **sort_by** | **String** | Used to specify both the field you wish to sort the results on (created_at/resolved_at), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. A maximum of two fields can be included, separated by a comma. Sort direction defaults to ascending. | [optional] |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**ListIncidentAlerts200Response**](ListIncidentAlerts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_log_entries

> <ListIncidentLogEntries200Response> list_incident_log_entries(accept, content_type, id, opts)

List log entries for an incident

List log entries for the specified incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  A Log Entry are a record of all events on your account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search.
  is_overview: true, # Boolean | If `true`, will return a subset of log entries that show only the most important changes to the incident.
  include: 'incidents' # String | Array of additional Models to include in response.
}

begin
  # List log entries for an incident
  result = api_instance.list_incident_log_entries(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_log_entries: #{e}"
end
```

#### Using the list_incident_log_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentLogEntries200Response>, Integer, Hash)> list_incident_log_entries_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List log entries for an incident
  data, status_code, headers = api_instance.list_incident_log_entries_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentLogEntries200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_log_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |
| **is_overview** | **Boolean** | If &#x60;true&#x60;, will return a subset of log entries that show only the most important changes to the incident. | [optional][default to false] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**ListIncidentLogEntries200Response**](ListIncidentLogEntries200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_notes

> <ListIncidentNotes200Response> list_incident_notes(accept, content_type, id)

List notes for an incident

List existing notes for the specified incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # List notes for an incident
  result = api_instance.list_incident_notes(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_notes: #{e}"
end
```

#### Using the list_incident_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentNotes200Response>, Integer, Hash)> list_incident_notes_with_http_info(accept, content_type, id)

```ruby
begin
  # List notes for an incident
  data, status_code, headers = api_instance.list_incident_notes_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentNotes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incident_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**ListIncidentNotes200Response**](ListIncidentNotes200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incidents

> <ListIncidents200Response> list_incidents(accept, content_type, opts)

List incidents

List existing incidents.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page. Maximum of 10000.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  date_range: 'all', # String | When set to all, the since and until parameters and defaults are ignored.
  incident_key: 'incident_key_example', # String | Incident de-duplication key. Incidents with child alerts do not have an incident key; querying by incident key will return incidents whose alerts have alert_key matching the given incident key.
  service_ids: ['inner_example'], # Array<String> | Returns only the incidents associated with the passed service(s). This expects one or more service IDs.
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  user_ids: ['inner_example'], # Array<String> | Returns only the incidents currently assigned to the passed user(s). This expects one or more user IDs. Note: When using the assigned_to_user filter, you will only receive incidents with statuses of triggered or acknowledged. This is because resolved incidents are not assigned to any user.
  urgencies: 'high', # String | Array of the urgencies of the incidents to be returned. Defaults to all urgencies. Account must have the `urgencies` ability to do this.
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  statuses: 'triggered', # String | Return only incidents with the given statuses. To query multiple statuses, pass `statuses[]` more than once, for example: `https://api.pagerduty.com/incidents?statuses[]=triggered&statuses[]=acknowledged`. (More status codes may be introduced in the future.)
  sort_by: ['inner_example'], # Array<String> | Used to specify both the field you wish to sort the results on (incident_number/created_at/resolved_at/urgency), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. A maximum of two fields can be included, separated by a comma. Sort direction defaults to ascending. The account must have the `urgencies` ability to sort by the urgency.
  include: 'acknowledgers', # String | Array of additional details to include.
  since: 'since_example', # String | The start of the date range over which you want to search. Maximum range is 6 months and default is 1 month.
  _until: '_until_example' # String | The end of the date range over which you want to search. Maximum range is 6 months and default is 1 month.
}

begin
  # List incidents
  result = api_instance.list_incidents(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incidents: #{e}"
end
```

#### Using the list_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidents200Response>, Integer, Hash)> list_incidents_with_http_info(accept, content_type, opts)

```ruby
begin
  # List incidents
  data, status_code, headers = api_instance.list_incidents_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->list_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. Maximum of 10000. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **date_range** | **String** | When set to all, the since and until parameters and defaults are ignored. | [optional] |
| **incident_key** | **String** | Incident de-duplication key. Incidents with child alerts do not have an incident key; querying by incident key will return incidents whose alerts have alert_key matching the given incident key. | [optional] |
| **service_ids** | [**Array&lt;String&gt;**](String.md) | Returns only the incidents associated with the passed service(s). This expects one or more service IDs. | [optional] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **user_ids** | [**Array&lt;String&gt;**](String.md) | Returns only the incidents currently assigned to the passed user(s). This expects one or more user IDs. Note: When using the assigned_to_user filter, you will only receive incidents with statuses of triggered or acknowledged. This is because resolved incidents are not assigned to any user. | [optional] |
| **urgencies** | **String** | Array of the urgencies of the incidents to be returned. Defaults to all urgencies. Account must have the &#x60;urgencies&#x60; ability to do this. | [optional] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **statuses** | **String** | Return only incidents with the given statuses. To query multiple statuses, pass &#x60;statuses[]&#x60; more than once, for example: &#x60;https://api.pagerduty.com/incidents?statuses[]&#x3D;triggered&amp;statuses[]&#x3D;acknowledged&#x60;. (More status codes may be introduced in the future.) | [optional] |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Used to specify both the field you wish to sort the results on (incident_number/created_at/resolved_at/urgency), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. A maximum of two fields can be included, separated by a comma. Sort direction defaults to ascending. The account must have the &#x60;urgencies&#x60; ability to sort by the urgency. | [optional] |
| **include** | **String** | Array of additional details to include. | [optional] |
| **since** | **String** | The start of the date range over which you want to search. Maximum range is 6 months and default is 1 month. | [optional] |
| **_until** | **String** | The end of the date range over which you want to search. Maximum range is 6 months and default is 1 month. | [optional] |

### Return type

[**ListIncidents200Response**](ListIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_incidents

> <MergeIncidents200Response> merge_incidents(accept, content_type, id, from, opts)

Merge incidents

Merge a list of source incidents into this incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  merge_incidents_request: OpenapiClient::MergeIncidentsRequest.new({source_incidents: [OpenapiClient::IncidentReference.new({type: 'incident_reference'})]}) # MergeIncidentsRequest | 
}

begin
  # Merge incidents
  result = api_instance.merge_incidents(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->merge_incidents: #{e}"
end
```

#### Using the merge_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MergeIncidents200Response>, Integer, Hash)> merge_incidents_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Merge incidents
  data, status_code, headers = api_instance.merge_incidents_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MergeIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->merge_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **merge_incidents_request** | [**MergeIncidentsRequest**](MergeIncidentsRequest.md) |  | [optional] |

### Return type

[**MergeIncidents200Response**](MergeIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_incident_manual_business_service_association

> <PutIncidentManualBusinessServiceAssociation200Response> put_incident_manual_business_service_association(accept, id, business_service_id, x_early_access, opts)

Manually change an Incident's Impact on a Business Service.

Change Impact of an Incident on a Business Service. Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
business_service_id = 'business_service_id_example' # String | The business service ID.
x_early_access = 'x_early_access_example' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value `business-impact-early-access`. Do not use this endpoint in production, as it may change!
opts = {
  put_incident_manual_business_service_association_request: OpenapiClient::PutIncidentManualBusinessServiceAssociationRequest.new({relation: 'impacted'}) # PutIncidentManualBusinessServiceAssociationRequest | The `impacted` relation will cause the Business Service and any Services that it supports to become impacted by this incident.  The `not_impacted` relation will remove the Incident's Impact from the specified Business Service.  The effect of adding or removing Impact to a Business Service in this way will also change the propagation of Impact to other Services supported by that Business Service.
}

begin
  # Manually change an Incident's Impact on a Business Service.
  result = api_instance.put_incident_manual_business_service_association(accept, id, business_service_id, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->put_incident_manual_business_service_association: #{e}"
end
```

#### Using the put_incident_manual_business_service_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutIncidentManualBusinessServiceAssociation200Response>, Integer, Hash)> put_incident_manual_business_service_association_with_http_info(accept, id, business_service_id, x_early_access, opts)

```ruby
begin
  # Manually change an Incident's Impact on a Business Service.
  data, status_code, headers = api_instance.put_incident_manual_business_service_association_with_http_info(accept, id, business_service_id, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutIncidentManualBusinessServiceAssociation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->put_incident_manual_business_service_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **business_service_id** | **String** | The business service ID. |  |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header with the value &#x60;business-impact-early-access&#x60;. Do not use this endpoint in production, as it may change! | [default to &#39;business-impact-early-access&#39;] |
| **put_incident_manual_business_service_association_request** | [**PutIncidentManualBusinessServiceAssociationRequest**](PutIncidentManualBusinessServiceAssociationRequest.md) | The &#x60;impacted&#x60; relation will cause the Business Service and any Services that it supports to become impacted by this incident.  The &#x60;not_impacted&#x60; relation will remove the Incident&#39;s Impact from the specified Business Service.  The effect of adding or removing Impact to a Business Service in this way will also change the propagation of Impact to other Services supported by that Business Service. | [optional] |

### Return type

[**PutIncidentManualBusinessServiceAssociation200Response**](PutIncidentManualBusinessServiceAssociation200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_incident_notification_subscribers

> <RemoveBusinessServiceNotificationSubscriber200Response> remove_incident_notification_subscribers(accept, id, opts)

Remove Notification Subscriber

Unsubscribes the matching Subscribers from Incident Status Update Notifications.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_business_service_notification_subscribers_request: OpenapiClient::CreateBusinessServiceNotificationSubscribersRequest.new({subscribers: [OpenapiClient::NotificationSubscriber.new]}) # CreateBusinessServiceNotificationSubscribersRequest | The entities to unsubscribe.
}

begin
  # Remove Notification Subscriber
  result = api_instance.remove_incident_notification_subscribers(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->remove_incident_notification_subscribers: #{e}"
end
```

#### Using the remove_incident_notification_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveBusinessServiceNotificationSubscriber200Response>, Integer, Hash)> remove_incident_notification_subscribers_with_http_info(accept, id, opts)

```ruby
begin
  # Remove Notification Subscriber
  data, status_code, headers = api_instance.remove_incident_notification_subscribers_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveBusinessServiceNotificationSubscriber200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->remove_incident_notification_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_business_service_notification_subscribers_request** | [**CreateBusinessServiceNotificationSubscribersRequest**](CreateBusinessServiceNotificationSubscribersRequest.md) | The entities to unsubscribe. | [optional] |

### Return type

[**RemoveBusinessServiceNotificationSubscriber200Response**](RemoveBusinessServiceNotificationSubscriber200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_incident_field_values

> <GetIncidentFieldValues200Response> set_incident_field_values(id, opts)

Update Custom Field Values

Set custom field values for an incident.  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
id = 'id_example' # String | The ID of the resource.
opts = {
  set_incident_field_values_request: OpenapiClient::SetIncidentFieldValuesRequest.new({custom_fields: [OpenapiClient::ValueByFieldID.new]}) # SetIncidentFieldValuesRequest | 
}

begin
  # Update Custom Field Values
  result = api_instance.set_incident_field_values(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->set_incident_field_values: #{e}"
end
```

#### Using the set_incident_field_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentFieldValues200Response>, Integer, Hash)> set_incident_field_values_with_http_info(id, opts)

```ruby
begin
  # Update Custom Field Values
  data, status_code, headers = api_instance.set_incident_field_values_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentFieldValues200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->set_incident_field_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **set_incident_field_values_request** | [**SetIncidentFieldValuesRequest**](SetIncidentFieldValuesRequest.md) |  | [optional] |

### Return type

[**GetIncidentFieldValues200Response**](GetIncidentFieldValues200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incident

> <UpdateIncident200Response> update_incident(accept, content_type, id, from, opts)

Update an incident

Acknowledge, resolve, escalate or reassign an incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  update_incident_request: OpenapiClient::UpdateIncidentRequest.new({incident: OpenapiClient::UpdateIncidentRequestIncident.new({type: 'incident'})}) # UpdateIncidentRequest | 
}

begin
  # Update an incident
  result = api_instance.update_incident(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident: #{e}"
end
```

#### Using the update_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateIncident200Response>, Integer, Hash)> update_incident_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Update an incident
  data, status_code, headers = api_instance.update_incident_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateIncident200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **update_incident_request** | [**UpdateIncidentRequest**](UpdateIncidentRequest.md) |  | [optional] |

### Return type

[**UpdateIncident200Response**](UpdateIncident200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incident_alert

> <GetIncidentAlert200Response> update_incident_alert(accept, content_type, id, alert_id, from, opts)

Update an alert

Resolve an alert or associate an alert with a new parent incident.  An incident represents a problem or an issue that needs to be addressed and resolved.  When a service sends an event to PagerDuty, an alert and corresponding incident is triggered in PagerDuty.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
alert_id = 'alert_id_example' # String | The id of the alert to retrieve.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  get_incident_alert200_response: OpenapiClient::GetIncidentAlert200Response.new({alert: OpenapiClient::Alert.new({type: 'alert'})}) # GetIncidentAlert200Response | The parameters of the alert to update.
}

begin
  # Update an alert
  result = api_instance.update_incident_alert(accept, content_type, id, alert_id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident_alert: #{e}"
end
```

#### Using the update_incident_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentAlert200Response>, Integer, Hash)> update_incident_alert_with_http_info(accept, content_type, id, alert_id, from, opts)

```ruby
begin
  # Update an alert
  data, status_code, headers = api_instance.update_incident_alert_with_http_info(accept, content_type, id, alert_id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentAlert200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **alert_id** | **String** | The id of the alert to retrieve. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **get_incident_alert200_response** | [**GetIncidentAlert200Response**](GetIncidentAlert200Response.md) | The parameters of the alert to update. | [optional] |

### Return type

[**GetIncidentAlert200Response**](GetIncidentAlert200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incident_alerts

> <ListIncidentAlerts200Response> update_incident_alerts(accept, content_type, id, from, opts)

Manage alerts

Resolve multiple alerts or associate them with different incidents.  An incident represents a problem or an issue that needs to be addressed and resolved. An alert represents a digital signal that was emitted to PagerDuty by the monitoring systems that detected or identified the issue.  A maximum of 500 alerts may be updated at a time. If more than this number of alerts are given, the API will respond with status 413 (Request Entity Too Large).  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write` 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  update_incident_alerts_request: OpenapiClient::UpdateIncidentAlertsRequest.new({alerts: [OpenapiClient::Alert.new({type: 'alert'})]}) # UpdateIncidentAlertsRequest | 
}

begin
  # Manage alerts
  result = api_instance.update_incident_alerts(accept, content_type, id, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident_alerts: #{e}"
end
```

#### Using the update_incident_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentAlerts200Response>, Integer, Hash)> update_incident_alerts_with_http_info(accept, content_type, id, from, opts)

```ruby
begin
  # Manage alerts
  data, status_code, headers = api_instance.update_incident_alerts_with_http_info(accept, content_type, id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incident_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **update_incident_alerts_request** | [**UpdateIncidentAlertsRequest**](UpdateIncidentAlertsRequest.md) |  | [optional] |

### Return type

[**ListIncidentAlerts200Response**](ListIncidentAlerts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incidents

> <ListIncidents200Response> update_incidents(accept, content_type, from, opts)

Manage incidents

Acknowledge, resolve, escalate or reassign one or more incidents.  An incident represents a problem or an issue that needs to be addressed and resolved.  A maximum of 250 incidents may be updated at a time. If more than this number of incidents are given, the API will respond with status 413 (Request Entity Too Large).  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#incidents)  Scoped OAuth requires: `incidents.write`  This API operation has operation specific rate limits. See the [Rate Limits](https://developer.pagerduty.com/docs/72d3b724589e3-rest-api-rate-limits) page for more information. 

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

api_instance = OpenapiClient::IncidentsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  update_incidents_request: OpenapiClient::UpdateIncidentsRequest.new({incidents: [OpenapiClient::UpdateIncidentsRequestIncidentsInner.new({id: 'id_example', type: 'incident'})]}) # UpdateIncidentsRequest | 
}

begin
  # Manage incidents
  result = api_instance.update_incidents(accept, content_type, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incidents: #{e}"
end
```

#### Using the update_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidents200Response>, Integer, Hash)> update_incidents_with_http_info(accept, content_type, from, opts)

```ruby
begin
  # Manage incidents
  data, status_code, headers = api_instance.update_incidents_with_http_info(accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentsApi->update_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **update_incidents_request** | [**UpdateIncidentsRequest**](UpdateIncidentsRequest.md) |  | [optional] |

### Return type

[**ListIncidents200Response**](ListIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

