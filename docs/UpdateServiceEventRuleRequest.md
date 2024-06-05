# PagerDutyOpenapiClient::UpdateServiceEventRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule** | [**ServiceEventRule**](ServiceEventRule.md) |  | [optional] |
| **rule_id** | **String** | The id of the Event Rule to update on the Service. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateServiceEventRuleRequest.new(
  rule: null,
  rule_id: null
)
```

