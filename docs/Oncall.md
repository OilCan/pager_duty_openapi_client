# PagerDutyOpenapiClient::Oncall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **escalation_policy** | [**EscalationPolicyReference**](EscalationPolicyReference.md) |  | [optional] |
| **user** | [**UserReference**](UserReference.md) |  | [optional] |
| **schedule** | [**ScheduleReference**](ScheduleReference.md) |  | [optional] |
| **escalation_level** | **Integer** | The escalation level for the on-call. | [optional][readonly] |
| **start** | **Time** | The start of the on-call. If &#x60;null&#x60;, the on-call is a permanent user on-call. | [optional][readonly] |
| **_end** | **Time** | The end of the on-call. If &#x60;null&#x60;, the user does not go off-call. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Oncall.new(
  escalation_policy: null,
  user: null,
  schedule: null,
  escalation_level: null,
  start: null,
  _end: null
)
```

