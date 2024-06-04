# OpenapiClient::GetAnalyticsIncidentResponsesById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | The Incident ID passed into the request. | [optional] |
| **limit** | **Integer** | Number of results to include in the batch. | [optional] |
| **order** | **String** | The order in which the results were sorted; asc for ascending, desc for descending. | [optional] |
| **order_by** | **String** | The column that was used for ordering the results. | [optional] |
| **time_zone** | **String** | The time zone that the results are in. | [optional] |
| **responses** | [**Array&lt;AnalyticsRawIncidentResponses&gt;**](AnalyticsRawIncidentResponses.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAnalyticsIncidentResponsesById200Response.new(
  incident_id: null,
  limit: null,
  order: null,
  order_by: null,
  time_zone: null,
  responses: null
)
```

