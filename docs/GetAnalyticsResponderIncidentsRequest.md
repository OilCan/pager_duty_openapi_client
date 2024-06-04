# OpenapiClient::GetAnalyticsResponderIncidentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**GetAnalyticsIncidentsRequestFilters**](GetAnalyticsIncidentsRequestFilters.md) |  | [optional] |
| **starting_after** | **String** | A cursor to indicate the reference point that the results should follow | [optional] |
| **ending_before** | **String** | A cursor to indicate the reference point that the results should precede | [optional] |
| **order** | **String** | The order in which to display the results; asc for ascending, desc for descending. Defaults to &#x60;desc&#x60;. | [optional] |
| **order_by** | **String** | The column to use for ordering the results. Defaults to &#x60;incident_created_at&#x60;. | [optional] |
| **limit** | **Integer** | Number of results to include in each batch. Limits between 1 to 1000 are accepted. | [optional] |
| **time_zone** | **String** | The time zone to use for the results. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAnalyticsResponderIncidentsRequest.new(
  filters: null,
  starting_after: null,
  ending_before: null,
  order: null,
  order_by: null,
  limit: 20,
  time_zone: Etc/UTC
)
```

