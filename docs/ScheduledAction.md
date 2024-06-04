# OpenapiClient::ScheduledAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of schedule action. Must be set to urgency_change. |  |
| **at** | [**ScheduledActionAt**](ScheduledActionAt.md) |  |  |
| **to_urgency** | **String** | Urgency level. Must be set to high. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScheduledAction.new(
  type: null,
  at: null,
  to_urgency: null
)
```

