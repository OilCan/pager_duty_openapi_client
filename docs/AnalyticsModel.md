# OpenapiClient::AnalyticsModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**AnalyticsModelFilters**](AnalyticsModelFilters.md) |  | [optional] |
| **time_zone** | **String** | The time zone to use for the results and grouping. Must be in tzdata format. See list of accepted values [here](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). | [optional] |
| **order** | **String** | The order in which the results were sorted; asc for ascending, desc for descending. | [optional] |
| **order_by** | **String** | The column that was used for ordering the results. | [optional] |
| **aggregate_unit** | **String** | The time unit to aggregate metrics by.  If no value is provided, the metrics will be aggregated for the entire period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyticsModel.new(
  filters: null,
  time_zone: Etc/UTC,
  order: null,
  order_by: created_at,
  aggregate_unit: day
)
```

