# PagerDutyOpenapiClient::GetAnalyticsResponderIncidents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | Cursor to identify the first object in the response. | [optional] |
| **last** | **String** | Cursor to identify the last object in the response. | [optional] |
| **responder_id** | **String** | The Responder ID passed into the request. | [optional] |
| **limit** | **Integer** | Number of results to include in the batch. | [optional] |
| **order** | **String** | The order in which the results were sorted; asc for ascending, desc for descending. | [optional] |
| **order_by** | **String** | The column that was used for ordering the results. | [optional] |
| **time_zone** | **String** | The time zone that the results are in. | [optional] |
| **filters** | [**GetAnalyticsIncidents200ResponseFilters**](GetAnalyticsIncidents200ResponseFilters.md) |  | [optional] |
| **data** | [**Array&lt;AnalyticsRawResponderIncidents&gt;**](AnalyticsRawResponderIncidents.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetAnalyticsResponderIncidents200Response.new(
  first: null,
  last: null,
  responder_id: null,
  limit: null,
  order: null,
  order_by: null,
  time_zone: null,
  filters: null,
  data: null
)
```

