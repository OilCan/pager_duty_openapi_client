# PagerDutyOpenapiClient::GetAnalyticsIncidentResponsesByIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to include in each batch. Limits between 1 to 1000 are accepted. | [optional] |
| **order** | **String** | The order in which to display the results; asc for ascending, desc for descending. Defaults to &#x60;desc&#x60;. | [optional] |
| **order_by** | **String** | The column to use for ordering the results. | [optional] |
| **time_zone** | **String** | The time zone to use for the results. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetAnalyticsIncidentResponsesByIdRequest.new(
  limit: 20,
  order: null,
  order_by: null,
  time_zone: Etc/UTC
)
```

