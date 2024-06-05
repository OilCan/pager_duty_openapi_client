# PagerDutyOpenapiClient::EventRuleAllOfTimeFrame

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_between** | [**EventRuleAllOfTimeFrameActiveBetween**](EventRuleAllOfTimeFrameActiveBetween.md) |  | [optional] |
| **scheduled_weekly** | [**EventRuleAllOfTimeFrameScheduledWeekly**](EventRuleAllOfTimeFrameScheduledWeekly.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleAllOfTimeFrame.new(
  active_between: null,
  scheduled_weekly: null
)
```

