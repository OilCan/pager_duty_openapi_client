# PagerDutyOpenapiClient::IncidentAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **at** | **Time** |  |  |
| **to** | **String** | The urgency that the incident will change to. This field is only present when the type is &#x60;urgency_change&#x60;. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::IncidentAction.new(
  type: null,
  at: null,
  to: null
)
```

