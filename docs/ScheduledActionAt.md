# PagerDutyOpenapiClient::ScheduledActionAt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Must be set to named_time. |  |
| **name** | **String** | Designates either the start or the end of support hours. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ScheduledActionAt.new(
  type: null,
  name: null
)
```

