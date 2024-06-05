# PagerDutyOpenapiClient::EventRuleAllOfTimeFrameScheduledWeekly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Integer** | The amount of milliseconds into the day at which the window starts. |  |
| **duration** | **Integer** | The duration of the window in milliseconds. |  |
| **timezone** | **String** | The timezone. |  |
| **weekdays** | **Array&lt;Integer&gt;** | An array of day values. Ex [1, 3, 5] is Monday, Wednesday, Friday. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleAllOfTimeFrameScheduledWeekly.new(
  start_time: null,
  duration: null,
  timezone: null,
  weekdays: null
)
```

