# PagerDutyOpenapiClient::Restriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Specify the types of &#x60;restriction&#x60;. |  |
| **duration_seconds** | **Integer** | The duration of the restriction in seconds. |  |
| **start_time_of_day** | **String** | The start time in HH:mm:ss format. |  |
| **start_day_of_week** | **Integer** | Only required for use with a &#x60;weekly_restriction&#x60; restriction type. The first day of the weekly rotation schedule as [ISO 8601 day](https://en.wikipedia.org/wiki/ISO_week_date) (1 is Monday, etc.) | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Restriction.new(
  type: null,
  duration_seconds: null,
  start_time_of_day: null,
  start_day_of_week: null
)
```

