# PagerDutyOpenapiClient::FlexibleTimeWindowIntelligentAlertGroupingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_window** | **Integer** | The maximum amount of time allowed between Alerts. Any Alerts arriving greater than &#x60;time_window&#x60; seconds apart will not be grouped together. This is a rolling time window and is counted from the most recently grouped alert. The window is extended every time a new alert is added to the group, up to 24 hours. To use the \&quot;recommended_time_window,\&quot; set the value to 0, otherwise the value must be between 300 and 3600. | [optional] |
| **recommended_time_window** | **Integer** | In order to ensure your Service has the optimal grouping window, we use data science to calculate your Service&#x60;s average Alert inter-arrival time. We encourage customer&#x60;s to use this value, please set &#x60;time_window&#x60; to 0 to use the &#x60;recommended_time_window&#x60;. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::FlexibleTimeWindowIntelligentAlertGroupingConfig.new(
  time_window: null,
  recommended_time_window: null
)
```

