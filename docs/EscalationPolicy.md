# PagerDutyOpenapiClient::EscalationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;escalation_policy&#39;] |
| **name** | **String** | The name of the escalation policy. |  |
| **description** | **String** | Escalation policy description. | [optional] |
| **num_loops** | **Integer** | The number of times the escalation policy will repeat after reaching the end of its escalation. | [optional][default to 0] |
| **on_call_handoff_notifications** | **String** | Determines how on call handoff notifications will be sent for users on the escalation policy. Defaults to \&quot;if_has_services\&quot;. | [optional] |
| **escalation_rules** | [**Array&lt;EscalationRule&gt;**](EscalationRule.md) |  |  |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) |  | [optional][readonly] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | Team associated with the policy. Account must have the &#x60;teams&#x60; ability to use this parameter. Only one team may be associated with the policy. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EscalationPolicy.new(
  type: null,
  name: null,
  description: null,
  num_loops: null,
  on_call_handoff_notifications: null,
  escalation_rules: null,
  services: null,
  teams: null
)
```

