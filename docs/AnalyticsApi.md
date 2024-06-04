# OpenapiClient::AnalyticsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_analytics_incident_responses_by_id**](AnalyticsApi.md#get_analytics_incident_responses_by_id) | **GET** /analytics/raw/incidents/{id}/responses | Get raw responses from a single incident |
| [**get_analytics_incidents**](AnalyticsApi.md#get_analytics_incidents) | **POST** /analytics/raw/incidents | Get raw data - multiple incidents |
| [**get_analytics_incidents_by_id**](AnalyticsApi.md#get_analytics_incidents_by_id) | **GET** /analytics/raw/incidents/{id} | Get raw data - single incident |
| [**get_analytics_metrics_incidents_all**](AnalyticsApi.md#get_analytics_metrics_incidents_all) | **POST** /analytics/metrics/incidents/all | Get aggregated incident data |
| [**get_analytics_metrics_incidents_escalation_policy**](AnalyticsApi.md#get_analytics_metrics_incidents_escalation_policy) | **POST** /analytics/metrics/incidents/escalation_policies | Get aggregated escalation policy data |
| [**get_analytics_metrics_incidents_escalation_policy_all**](AnalyticsApi.md#get_analytics_metrics_incidents_escalation_policy_all) | **POST** /analytics/metrics/incidents/escalation_policies/all | Get aggregated metrics for all escalation policies |
| [**get_analytics_metrics_incidents_service**](AnalyticsApi.md#get_analytics_metrics_incidents_service) | **POST** /analytics/metrics/incidents/services | Get aggregated service data |
| [**get_analytics_metrics_incidents_service_all**](AnalyticsApi.md#get_analytics_metrics_incidents_service_all) | **POST** /analytics/metrics/incidents/services/all | Get aggregated metrics for all services |
| [**get_analytics_metrics_incidents_team**](AnalyticsApi.md#get_analytics_metrics_incidents_team) | **POST** /analytics/metrics/incidents/teams | Get aggregated team data |
| [**get_analytics_metrics_incidents_team_all**](AnalyticsApi.md#get_analytics_metrics_incidents_team_all) | **POST** /analytics/metrics/incidents/teams/all | Get aggregated metrics for all teams |
| [**get_analytics_metrics_responders_all**](AnalyticsApi.md#get_analytics_metrics_responders_all) | **POST** /analytics/metrics/responders/all | Get aggregated metrics for all responders |
| [**get_analytics_metrics_responders_team**](AnalyticsApi.md#get_analytics_metrics_responders_team) | **POST** /analytics/metrics/responders/teams | Get responder data aggregated by team |
| [**get_analytics_responder_incidents**](AnalyticsApi.md#get_analytics_responder_incidents) | **POST** /analytics/raw/responders/{responder_id}/incidents | Get raw incidents for a single responder_id |


## get_analytics_incident_responses_by_id

> <GetAnalyticsIncidentResponsesById200Response> get_analytics_incident_responses_by_id(id, accept, content_type, opts)

Get raw responses from a single incident

Provides enriched responder data for a single incident.  Example metrics include Time to Respond, Responder Type, and Response Status. See metric definitions below.  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incident responses appear in the Analytics API. Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  get_analytics_incident_responses_by_id_request: OpenapiClient::GetAnalyticsIncidentResponsesByIdRequest.new # GetAnalyticsIncidentResponsesByIdRequest | Parameters to apply to the dataset.
}

begin
  # Get raw responses from a single incident
  result = api_instance.get_analytics_incident_responses_by_id(id, accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incident_responses_by_id: #{e}"
end
```

#### Using the get_analytics_incident_responses_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsIncidentResponsesById200Response>, Integer, Hash)> get_analytics_incident_responses_by_id_with_http_info(id, accept, content_type, opts)

```ruby
begin
  # Get raw responses from a single incident
  data, status_code, headers = api_instance.get_analytics_incident_responses_by_id_with_http_info(id, accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsIncidentResponsesById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incident_responses_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **get_analytics_incident_responses_by_id_request** | [**GetAnalyticsIncidentResponsesByIdRequest**](GetAnalyticsIncidentResponsesByIdRequest.md) | Parameters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsIncidentResponsesById200Response**](GetAnalyticsIncidentResponsesById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_incidents

> <GetAnalyticsIncidents200Response> get_analytics_incidents(accept, content_type, opts)

Get raw data - multiple incidents

Provides enriched incident data and metrics for multiple incidents.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#incidents-list).  <!-- theme: info --> > A `team_ids` or `service_ids` filter is required for [user-level API keys](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or keys generated through an OAuth flow. Account-level API keys do not have this requirement. <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  get_analytics_incidents_request: OpenapiClient::GetAnalyticsIncidentsRequest.new # GetAnalyticsIncidentsRequest | Parameters and filters to apply to the dataset.
}

begin
  # Get raw data - multiple incidents
  result = api_instance.get_analytics_incidents(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incidents: #{e}"
end
```

#### Using the get_analytics_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsIncidents200Response>, Integer, Hash)> get_analytics_incidents_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get raw data - multiple incidents
  data, status_code, headers = api_instance.get_analytics_incidents_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **get_analytics_incidents_request** | [**GetAnalyticsIncidentsRequest**](GetAnalyticsIncidentsRequest.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsIncidents200Response**](GetAnalyticsIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_incidents_by_id

> <AnalyticsRawIncident> get_analytics_incidents_by_id(id, accept, content_type)

Get raw data - single incident

Provides enriched incident data and metrics for a single incident.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#incidents-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 

begin
  # Get raw data - single incident
  result = api_instance.get_analytics_incidents_by_id(id, accept, content_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incidents_by_id: #{e}"
end
```

#### Using the get_analytics_incidents_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticsRawIncident>, Integer, Hash)> get_analytics_incidents_by_id_with_http_info(id, accept, content_type)

```ruby
begin
  # Get raw data - single incident
  data, status_code, headers = api_instance.get_analytics_incidents_by_id_with_http_info(id, accept, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticsRawIncident>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_incidents_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |

### Return type

[**AnalyticsRawIncident**](AnalyticsRawIncident.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytics_metrics_incidents_all

> <GetAnalyticsMetricsIncidentsAll200Response> get_analytics_metrics_incidents_all(accept, content_type, opts)

Get aggregated incident data

Provides aggregated enriched metrics for incidents.  The provided metrics are aggregated by day, week, month using the aggregate_unit parameter, or for the entire period if no aggregate_unit is provided.  <!-- theme: info --> > A `team_ids` or `service_ids` filter is required for [user-level API keys](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or keys generated through an OAuth flow. Account-level API keys do not have this requirement. <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated incident data
  result = api_instance.get_analytics_metrics_incidents_all(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_all: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsAll200Response>, Integer, Hash)> get_analytics_metrics_incidents_all_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated incident data
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_all_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsAll200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsAll200Response**](GetAnalyticsMetricsIncidentsAll200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_escalation_policy

> <GetAnalyticsMetricsIncidentsEscalationPolicy200Response> get_analytics_metrics_incidents_escalation_policy(accept, content_type, opts)

Get aggregated escalation policy data

Provides aggregated metrics for incidents aggregated into units of time by escalation policy.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#escalation-policy-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated escalation policy data
  result = api_instance.get_analytics_metrics_incidents_escalation_policy(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_escalation_policy: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_escalation_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsEscalationPolicy200Response>, Integer, Hash)> get_analytics_metrics_incidents_escalation_policy_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated escalation policy data
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_escalation_policy_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsEscalationPolicy200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsEscalationPolicy200Response**](GetAnalyticsMetricsIncidentsEscalationPolicy200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_escalation_policy_all

> <GetAnalyticsMetricsIncidentsEscalationPolicy200Response> get_analytics_metrics_incidents_escalation_policy_all(accept, content_type, opts)

Get aggregated metrics for all escalation policies

Provides aggregated metrics across all escalation policies.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#escalation-policy-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated metrics for all escalation policies
  result = api_instance.get_analytics_metrics_incidents_escalation_policy_all(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_escalation_policy_all: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_escalation_policy_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsEscalationPolicy200Response>, Integer, Hash)> get_analytics_metrics_incidents_escalation_policy_all_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated metrics for all escalation policies
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_escalation_policy_all_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsEscalationPolicy200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_escalation_policy_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsEscalationPolicy200Response**](GetAnalyticsMetricsIncidentsEscalationPolicy200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_service

> <GetAnalyticsMetricsIncidentsService200Response> get_analytics_metrics_incidents_service(accept, content_type, opts)

Get aggregated service data

Provides aggregated metrics for incidents aggregated into units of time by service.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#services-list). Data can be aggregated by day, week or month in addition to by service, or provided just as a collection of aggregates for each service in the dataset for the entire period.  If a unit is provided, each row in the returned dataset will include a 'range_start' timestamp.  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated service data
  result = api_instance.get_analytics_metrics_incidents_service(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_service: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsService200Response>, Integer, Hash)> get_analytics_metrics_incidents_service_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated service data
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_service_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsService200Response**](GetAnalyticsMetricsIncidentsService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_service_all

> <GetAnalyticsMetricsIncidentsService200Response> get_analytics_metrics_incidents_service_all(accept, content_type, opts)

Get aggregated metrics for all services

Provides aggregated metrics across all services.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#services-list).  <!-- theme: info --> > A `team_ids` or `service_ids` filter is required for [user-level API keys](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or keys generated through an OAuth flow. Account-level API keys do not have this requirement. <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated metrics for all services
  result = api_instance.get_analytics_metrics_incidents_service_all(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_service_all: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_service_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsService200Response>, Integer, Hash)> get_analytics_metrics_incidents_service_all_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated metrics for all services
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_service_all_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_service_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsService200Response**](GetAnalyticsMetricsIncidentsService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_team

> <GetAnalyticsMetricsIncidentsService200Response> get_analytics_metrics_incidents_team(accept, content_type, opts)

Get aggregated team data

Provides aggregated metrics for incidents aggregated into units of time by team.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#teams-list). Data can be aggregated by day, week or month in addition to by team, or provided just as a collection of aggregates for each team in the dataset for the entire period.  If a unit is provided, each row in the returned dataset will include a 'range_start' timestamp.  <!-- theme: info --> > A `team_ids` or `service_ids` filter is required for [user-level API keys](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or keys generated through an OAuth flow. Account-level API keys do not have this requirement. <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated team data
  result = api_instance.get_analytics_metrics_incidents_team(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_team: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsService200Response>, Integer, Hash)> get_analytics_metrics_incidents_team_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated team data
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_team_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsService200Response**](GetAnalyticsMetricsIncidentsService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_incidents_team_all

> <GetAnalyticsMetricsIncidentsService200Response> get_analytics_metrics_incidents_team_all(accept, content_type, opts)

Get aggregated metrics for all teams

Provides aggregated metrics across all teams.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#teams-list).  <!-- theme: info --> > A `team_ids` or `service_ids` filter is required for [user-level API keys](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or keys generated through an OAuth flow. Account-level API keys do not have this requirement. <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_model: OpenapiClient::AnalyticsModel.new # AnalyticsModel | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated metrics for all teams
  result = api_instance.get_analytics_metrics_incidents_team_all(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_team_all: #{e}"
end
```

#### Using the get_analytics_metrics_incidents_team_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsIncidentsService200Response>, Integer, Hash)> get_analytics_metrics_incidents_team_all_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated metrics for all teams
  data, status_code, headers = api_instance.get_analytics_metrics_incidents_team_all_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsIncidentsService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_incidents_team_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_model** | [**AnalyticsModel**](AnalyticsModel.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsIncidentsService200Response**](GetAnalyticsMetricsIncidentsService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_responders_all

> <GetAnalyticsMetricsRespondersAll200Response> get_analytics_metrics_responders_all(accept, content_type, opts)

Get aggregated metrics for all responders

Provides aggregated incident metrics for all selected responders.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#responders-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_responder_filter: OpenapiClient::AnalyticsResponderFilter.new # AnalyticsResponderFilter | Parameters and filters to apply to the dataset.
}

begin
  # Get aggregated metrics for all responders
  result = api_instance.get_analytics_metrics_responders_all(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_responders_all: #{e}"
end
```

#### Using the get_analytics_metrics_responders_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsRespondersAll200Response>, Integer, Hash)> get_analytics_metrics_responders_all_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get aggregated metrics for all responders
  data, status_code, headers = api_instance.get_analytics_metrics_responders_all_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsRespondersAll200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_responders_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_responder_filter** | [**AnalyticsResponderFilter**](AnalyticsResponderFilter.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsRespondersAll200Response**](GetAnalyticsMetricsRespondersAll200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_metrics_responders_team

> <GetAnalyticsMetricsRespondersAll200Response> get_analytics_metrics_responders_team(accept, content_type, opts)

Get responder data aggregated by team

Provides incident metrics aggregated by responder.  Example metrics include Seconds to Resolve, Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#responders-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  analytics_responder_filter: OpenapiClient::AnalyticsResponderFilter.new # AnalyticsResponderFilter | Parameters and filters to apply to the dataset.
}

begin
  # Get responder data aggregated by team
  result = api_instance.get_analytics_metrics_responders_team(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_responders_team: #{e}"
end
```

#### Using the get_analytics_metrics_responders_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsMetricsRespondersAll200Response>, Integer, Hash)> get_analytics_metrics_responders_team_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get responder data aggregated by team
  data, status_code, headers = api_instance.get_analytics_metrics_responders_team_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsMetricsRespondersAll200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_metrics_responders_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **analytics_responder_filter** | [**AnalyticsResponderFilter**](AnalyticsResponderFilter.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsMetricsRespondersAll200Response**](GetAnalyticsMetricsRespondersAll200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_responder_incidents

> <GetAnalyticsResponderIncidents200Response> get_analytics_responder_incidents(responder_id, accept, content_type, opts)

Get raw incidents for a single responder_id

Provides enriched incident data and metrics for a specific responder.  Example metrics include Mean Seconds to Resolve, Mean Seconds to Engage, Snoozed Seconds, and Sleep Hour Interruptions. Metric definitions can be found in our [Knowledge Base](https://support.pagerduty.com/docs/insights#incidents-list).  <!-- theme: info --> > **Note:** Analytics data is updated once per day. It takes up to 24 hours before new incidents appear in the Analytics API.  Scoped OAuth requires: `analytics.read` 

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

api_instance = OpenapiClient::AnalyticsApi.new
responder_id = 'responder_id_example' # String | The ID of the responder.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  get_analytics_responder_incidents_request: OpenapiClient::GetAnalyticsResponderIncidentsRequest.new # GetAnalyticsResponderIncidentsRequest | Parameters and filters to apply to the dataset.
}

begin
  # Get raw incidents for a single responder_id
  result = api_instance.get_analytics_responder_incidents(responder_id, accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_responder_incidents: #{e}"
end
```

#### Using the get_analytics_responder_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalyticsResponderIncidents200Response>, Integer, Hash)> get_analytics_responder_incidents_with_http_info(responder_id, accept, content_type, opts)

```ruby
begin
  # Get raw incidents for a single responder_id
  data, status_code, headers = api_instance.get_analytics_responder_incidents_with_http_info(responder_id, accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalyticsResponderIncidents200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_responder_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **responder_id** | **String** | The ID of the responder. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **get_analytics_responder_incidents_request** | [**GetAnalyticsResponderIncidentsRequest**](GetAnalyticsResponderIncidentsRequest.md) | Parameters and filters to apply to the dataset. | [optional] |

### Return type

[**GetAnalyticsResponderIncidents200Response**](GetAnalyticsResponderIncidents200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

