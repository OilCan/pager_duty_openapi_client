# PagerDutyOpenapiClient::EventRuleActionsCommonSuppress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Boolean** |  |  |
| **threshold_value** | **Integer** | The number of occurences needed during the window of time to trigger the theshold. | [optional] |
| **threshold_time_unit** | **String** | The time unit for the window of time. | [optional] |
| **threshold_time_amount** | **Integer** | The amount of time units for the window of time. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleActionsCommonSuppress.new(
  value: null,
  threshold_value: null,
  threshold_time_unit: null,
  threshold_time_amount: null
)
```

