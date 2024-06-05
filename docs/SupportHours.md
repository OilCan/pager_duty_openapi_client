# PagerDutyOpenapiClient::SupportHours

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of support hours | [optional][default to &#39;fixed_time_per_day&#39;] |
| **time_zone** | **String** | The time zone for the support hours | [optional] |
| **days_of_week** | **Array&lt;Integer&gt;** |  | [optional][readonly] |
| **start_time** | **String** | The support hours&#39; starting time of day (date portion is ignored) | [optional] |
| **end_time** | **String** | The support hours&#39; ending time of day (date portion is ignored) | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::SupportHours.new(
  type: null,
  time_zone: null,
  days_of_week: null,
  start_time: null,
  end_time: null
)
```

