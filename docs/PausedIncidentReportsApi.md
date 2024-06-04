# OpenapiClient::PausedIncidentReportsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_paused_incident_report_alerts**](PausedIncidentReportsApi.md#get_paused_incident_report_alerts) | **GET** /paused_incident_reports/alerts | Get Paused Incident Reporting on Alerts |
| [**get_paused_incident_report_counts**](PausedIncidentReportsApi.md#get_paused_incident_report_counts) | **GET** /paused_incident_reports/counts | Get Paused Incident Reporting counts |


## get_paused_incident_report_alerts

> <GetPausedIncidentReportAlerts200Response> get_paused_incident_report_alerts(accept, content_type, opts)

Get Paused Incident Reporting on Alerts

Returns the 5 most recent alerts that were triggered after being paused and the 5 most recent alerts that were resolved after being paused for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::PausedIncidentReportsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search.
  service_id: 'P123456', # String | Specifies a filter to limit the scope of reporting to a particular service
  suspended_by: 'auto_pause' # String | Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
}

begin
  # Get Paused Incident Reporting on Alerts
  result = api_instance.get_paused_incident_report_alerts(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PausedIncidentReportsApi->get_paused_incident_report_alerts: #{e}"
end
```

#### Using the get_paused_incident_report_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPausedIncidentReportAlerts200Response>, Integer, Hash)> get_paused_incident_report_alerts_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get Paused Incident Reporting on Alerts
  data, status_code, headers = api_instance.get_paused_incident_report_alerts_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPausedIncidentReportAlerts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PausedIncidentReportsApi->get_paused_incident_report_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |
| **service_id** | **String** | Specifies a filter to limit the scope of reporting to a particular service | [optional] |
| **suspended_by** | **String** | Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules. | [optional] |

### Return type

[**GetPausedIncidentReportAlerts200Response**](GetPausedIncidentReportAlerts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_paused_incident_report_counts

> <GetPausedIncidentReportCounts200Response> get_paused_incident_report_counts(accept, content_type, opts)

Get Paused Incident Reporting counts

Returns reporting counts for paused Incident usage for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: `incidents.read` 

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

api_instance = OpenapiClient::PausedIncidentReportsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search.
  service_id: 'P123456', # String | Specifies a filter to limit the scope of reporting to a particular service
  suspended_by: 'auto_pause' # String | Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
}

begin
  # Get Paused Incident Reporting counts
  result = api_instance.get_paused_incident_report_counts(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PausedIncidentReportsApi->get_paused_incident_report_counts: #{e}"
end
```

#### Using the get_paused_incident_report_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPausedIncidentReportCounts200Response>, Integer, Hash)> get_paused_incident_report_counts_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get Paused Incident Reporting counts
  data, status_code, headers = api_instance.get_paused_incident_report_counts_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPausedIncidentReportCounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PausedIncidentReportsApi->get_paused_incident_report_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **since** | **Time** | The start of the date range over which you want to search. | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. | [optional] |
| **service_id** | **String** | Specifies a filter to limit the scope of reporting to a particular service | [optional] |
| **suspended_by** | **String** | Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules. | [optional] |

### Return type

[**GetPausedIncidentReportCounts200Response**](GetPausedIncidentReportCounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

