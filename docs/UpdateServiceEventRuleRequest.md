# OpenapiClient::UpdateServiceEventRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule** | [**ServiceEventRule**](ServiceEventRule.md) |  | [optional] |
| **rule_id** | **String** | The id of the Event Rule to update on the Service. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateServiceEventRuleRequest.new(
  rule: null,
  rule_id: null
)
```

