# PagerDutyOpenapiClient::Override

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **start** | **Time** | The start date and time for the override. |  |
| **_end** | **Time** | The end date and time for the override. |  |
| **user** | [**UserReference**](UserReference.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Override.new(
  id: null,
  start: null,
  _end: null,
  user: null
)
```

