# OpenapiClient::UpdateIncidentsRequestIncidentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the incident to update. |  |
| **type** | **String** | The incident type. |  |
| **status** | **String** | The new status of the incident. | [optional] |
| **resolution** | **String** | The resolution for this incident if status is set to resolved. | [optional] |
| **title** | **String** | A succinct description of the nature, symptoms, cause, or effect of the incident. | [optional] |
| **priority** | [**PriorityReference**](PriorityReference.md) |  | [optional] |
| **escalation_level** | **Integer** | Escalate the incident to this level in the escalation policy. | [optional] |
| **assignments** | [**Array&lt;UpdateIncidentsRequestIncidentsInnerAssignmentsInner&gt;**](UpdateIncidentsRequestIncidentsInnerAssignmentsInner.md) | Assign the incident to these assignees. | [optional] |
| **escalation_policy** | [**EscalationPolicyReference**](EscalationPolicyReference.md) |  | [optional] |
| **conference_bridge** | [**ConferenceBridge**](ConferenceBridge.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateIncidentsRequestIncidentsInner.new(
  id: null,
  type: null,
  status: null,
  resolution: null,
  title: null,
  priority: null,
  escalation_level: null,
  assignments: null,
  escalation_policy: null,
  conference_bridge: null
)
```

