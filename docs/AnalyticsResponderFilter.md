# OpenapiClient::AnalyticsResponderFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**AnalyticsResponderFilterFilters**](AnalyticsResponderFilterFilters.md) |  | [optional] |
| **time_zone** | **String** | The time zone to use for the results and grouping. | [optional] |
| **order** | **String** | The order in which the results were sorted; asc for ascending, desc for descending. | [optional] |
| **order_by** | **String** | The column that was used for ordering the results. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyticsResponderFilter.new(
  filters: null,
  time_zone: Etc/UTC,
  order: null,
  order_by: user_id
)
```

