# PagerDutyOpenapiClient::CreateScheduleOverride201ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Float** | HTTP Status Code reflecting the result of creating this specific override, e.g. 201 for success, 400 for invalid parameters. | [optional] |
| **errors** | **Array&lt;String&gt;** | If present, an array of strings representing human-readable explanations for errors found. | [optional] |
| **override** | [**Override**](Override.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateScheduleOverride201ResponseInner.new(
  status: null,
  errors: null,
  override: null
)
```

