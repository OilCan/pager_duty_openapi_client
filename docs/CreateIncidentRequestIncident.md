# PagerDutyOpenapiClient::CreateIncidentRequestIncident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **title** | **String** | A succinct description of the nature, symptoms, cause, or effect of the incident. |  |
| **service** | [**ServiceReference**](ServiceReference.md) |  |  |
| **priority** | [**PriorityReference**](PriorityReference.md) |  | [optional] |
| **urgency** | **String** | The urgency of the incident | [optional] |
| **body** | [**IncidentBody**](IncidentBody.md) |  | [optional] |
| **incident_key** | **String** | A string which identifies the incident. Sending subsequent requests referencing the same service and with the same incident_key will result in those requests being rejected if an open incident matches that incident_key. | [optional] |
| **assignments** | [**Array&lt;UpdateIncidentsRequestIncidentsInnerAssignmentsInner&gt;**](UpdateIncidentsRequestIncidentsInnerAssignmentsInner.md) | Assign the incident to these assignees. Cannot be specified if an escalation policy is given. | [optional] |
| **escalation_policy** | [**EscalationPolicyReference**](EscalationPolicyReference.md) |  | [optional] |
| **conference_bridge** | [**ConferenceBridge**](ConferenceBridge.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateIncidentRequestIncident.new(
  type: null,
  title: null,
  service: null,
  priority: null,
  urgency: null,
  body: null,
  incident_key: null,
  assignments: null,
  escalation_policy: null,
  conference_bridge: null
)
```

