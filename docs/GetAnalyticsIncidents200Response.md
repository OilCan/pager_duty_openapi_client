# OpenapiClient::GetAnalyticsIncidents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first** | **String** | Cursor to identify the first object in the response. |  |
| **last** | **String** | Cursor to identify the last object in the response. |  |
| **limit** | **Integer** | Number of results to include in the batch. |  |
| **more** | **Boolean** | Indicates if there are more resources available than were returned. |  |
| **order** | **String** | The order in which the results were sorted;  asc for ascending, desc for descending. |  |
| **order_by** | **String** | The column that was used for ordering the results. |  |
| **filters** | [**GetAnalyticsIncidents200ResponseFilters**](GetAnalyticsIncidents200ResponseFilters.md) |  | [optional] |
| **time_zone** | **String** | The time zone that the results are in. |  |
| **data** | [**Array&lt;AnalyticsRawIncident&gt;**](AnalyticsRawIncident.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAnalyticsIncidents200Response.new(
  first: null,
  last: null,
  limit: null,
  more: null,
  order: null,
  order_by: null,
  filters: null,
  time_zone: null,
  data: null
)
```

