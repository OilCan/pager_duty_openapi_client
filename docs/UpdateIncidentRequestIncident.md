# PagerDutyOpenapiClient::UpdateIncidentRequestIncident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The incident type. |  |
| **status** | **String** | The new status of the incident. | [optional] |
| **priority** | [**PriorityReference**](PriorityReference.md) |  | [optional] |
| **resolution** | **String** | The resolution for this incident if status is set to resolved. | [optional] |
| **title** | **String** | The new title of the incident. | [optional] |
| **escalation_level** | **Integer** | Escalate the incident to this level in the escalation policy. | [optional] |
| **assignments** | [**Array&lt;UpdateIncidentsRequestIncidentsInnerAssignmentsInner&gt;**](UpdateIncidentsRequestIncidentsInnerAssignmentsInner.md) | Assign the incident to these assignees. | [optional] |
| **escalation_policy** | [**EscalationPolicyReference**](EscalationPolicyReference.md) |  | [optional] |
| **urgency** | **String** | The urgency of the incident. | [optional] |
| **conference_bridge** | [**ConferenceBridge**](ConferenceBridge.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateIncidentRequestIncident.new(
  type: null,
  status: null,
  priority: null,
  resolution: null,
  title: null,
  escalation_level: null,
  assignments: null,
  escalation_policy: null,
  urgency: null,
  conference_bridge: null
)
```

