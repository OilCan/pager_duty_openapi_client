# OpenapiClient::Incident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_number** | **Integer** | The number of the incident. This is unique across your account. | [optional][readonly] |
| **title** | **String** | A succinct description of the nature, symptoms, cause, or effect of the incident. | [optional] |
| **created_at** | **Time** | The time the incident was first triggered. | [optional][readonly] |
| **updated_at** | **Time** | The time the incident was last modified. | [optional] |
| **status** | **String** | The current status of the incident. | [optional] |
| **incident_key** | **String** | The incident&#39;s de-duplication key. | [optional][readonly] |
| **service** | [**IncidentAllOfService**](IncidentAllOfService.md) |  | [optional] |
| **assignments** | [**Array&lt;Assignment&gt;**](Assignment.md) | List of all assignments for this incident. This list will be empty if the &#x60;Incident.status&#x60; is &#x60;resolved&#x60;. Returns a user reference for each assignment. Full user definitions will be returned if the &#x60;include[]&#x3D;assignees&#x60; query parameter is provided. | [optional] |
| **assigned_via** | **String** | How the current incident assignments were decided.  Note that &#x60;direct_assignment&#x60; incidents will not escalate up the attached &#x60;escalation_policy&#x60; | [optional][readonly] |
| **last_status_change_at** | **Time** | The time the status of the incident last changed. If the incident is not currently acknowledged or resolved, this will be the incident&#39;s &#x60;updated_at&#x60;. | [optional][readonly] |
| **resolved_at** | **Time** | The time the incident became \&quot;resolved\&quot; or &#x60;null&#x60; if the incident is not resolved. | [optional] |
| **first_trigger_log_entry** | [**IncidentAllOfFirstTriggerLogEntry**](IncidentAllOfFirstTriggerLogEntry.md) |  | [optional] |
| **alert_counts** | [**AlertCount**](AlertCount.md) |  | [optional] |
| **is_mergeable** | **Boolean** | Whether the incident is mergeable. Only incidents that have alerts, or that are manually created can be merged. | [optional][readonly] |
| **escalation_policy** | [**IncidentAllOfEscalationPolicy**](IncidentAllOfEscalationPolicy.md) |  | [optional] |
| **teams** | [**Array&lt;IncidentAllOfTeams&gt;**](IncidentAllOfTeams.md) | The teams involved in the incident’s lifecycle. If the &#x60;include[]&#x3D;teams&#x60; query parameter is provided, the full team definitions will be returned. | [optional] |
| **pending_actions** | [**Array&lt;IncidentAction&gt;**](IncidentAction.md) | The list of pending_actions on the incident. A pending_action object contains a type of action which can be escalate, unacknowledge, resolve or urgency_change. A pending_action object contains at, the time at which the action will take place. An urgency_change pending_action will contain to, the urgency that the incident will change to. | [optional][readonly] |
| **acknowledgements** | [**Array&lt;Acknowledgement&gt;**](Acknowledgement.md) | List of all acknowledgements for this incident. This list will be empty if the &#x60;Incident.status&#x60; is &#x60;resolved&#x60; or &#x60;triggered&#x60;. If the &#x60;include[]&#x3D;acknowledgers&#x60; query parameter is provided, the full user or service definitions will be returned for each acknowledgement entry. | [optional] |
| **alert_grouping** | [**IncidentAllOfAlertGrouping**](IncidentAllOfAlertGrouping.md) |  | [optional] |
| **last_status_change_by** | [**IncidentAllOfLastStatusChangeBy**](IncidentAllOfLastStatusChangeBy.md) |  | [optional] |
| **priority** | [**Priority**](Priority.md) |  | [optional] |
| **resolve_reason** | [**ResolveReason**](ResolveReason.md) |  | [optional] |
| **conference_bridge** | [**ConferenceBridge**](ConferenceBridge.md) | The conference bridge information attached to the incident. Only returned if the &#x60;include[]&#x3D;conference_bridge&#x60; query parameter is provided. | [optional] |
| **incidents_responders** | [**Array&lt;IncidentsRespondersReference&gt;**](IncidentsRespondersReference.md) | The responders on the incident. Only returned if the account has access to the [responder requests](https://support.pagerduty.com/docs/add-responders) feature. | [optional][readonly] |
| **responder_requests** | [**Array&lt;ResponderRequest&gt;**](ResponderRequest.md) | Previous responder requests made on this incident. Only returned if the account has access to the [responder requests](https://support.pagerduty.com/docs/add-responders) feature. | [optional][readonly] |
| **urgency** | **String** | The current urgency of the incident. | [optional] |
| **body** | [**IncidentBody**](IncidentBody.md) | The additional incident body details. Only returned if the &#x60;include[]&#x3D;body&#x60; query parameter is provided. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Incident.new(
  incident_number: null,
  title: null,
  created_at: 2019-12-01T20:00Z,
  updated_at: 2019-12-01T21:02Z,
  status: null,
  incident_key: null,
  service: null,
  assignments: null,
  assigned_via: null,
  last_status_change_at: 2019-12-01T21:01Z,
  resolved_at: 2019-12-01T21:01Z,
  first_trigger_log_entry: null,
  alert_counts: null,
  is_mergeable: null,
  escalation_policy: null,
  teams: null,
  pending_actions: null,
  acknowledgements: null,
  alert_grouping: null,
  last_status_change_by: null,
  priority: null,
  resolve_reason: null,
  conference_bridge: null,
  incidents_responders: null,
  responder_requests: null,
  urgency: null,
  body: null
)
```

