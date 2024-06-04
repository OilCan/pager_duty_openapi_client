# OpenapiClient::EscalationRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **escalation_delay_in_minutes** | **Integer** | The number of minutes before an unacknowledged incident escalates away from this rule. |  |
| **targets** | [**Array&lt;EscalationTargetReference&gt;**](EscalationTargetReference.md) | The targets an incident should be assigned to upon reaching this rule. |  |
| **escalation_rule_assignment_strategy** | **String** | The strategy used to assign the escalation rule to an incident. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EscalationRule.new(
  id: null,
  escalation_delay_in_minutes: null,
  targets: null,
  escalation_rule_assignment_strategy: null
)
```

