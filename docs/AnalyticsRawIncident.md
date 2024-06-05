# PagerDutyOpenapiClient::AnalyticsRawIncident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acknowledged_user_ids** | **Array&lt;String&gt;** | The IDs of the users who acknowledged the incident. | [optional] |
| **acknowledged_user_names** | **Array&lt;String&gt;** | The names of the users who acknowledged the incident. | [optional] |
| **acknowledgement_count** | **Integer** | Total count of acknowledgements in the incident. | [optional] |
| **active_user_count** | **Integer** | Total number of responders who either acknowledged the incident or accepted a responder request. | [optional] |
| **assigned_user_ids** | **Array&lt;String&gt;** | The IDs of the users who were assigned the incident. | [optional] |
| **assigned_user_names** | **Array&lt;String&gt;** | The names of the users who were assigned the incident. | [optional] |
| **assignment_count** | **Integer** | Total count of instances where responders were assigned an incident (including through reassignment or escalation). | [optional] |
| **auto_resolved** | **Boolean** | Whether or not the incident resolved automatically, either via an integration  or [auto-resolved in PagerDuty](https://support.pagerduty.com/docs/configurable-service-settings#auto-resolution). | [optional] |
| **business_hour_interruptions** | **Integer** | Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone. | [optional] |
| **created_at** | **String** | Timestamp of when the incident was created. | [optional] |
| **description** | **String** | The incident description | [optional] |
| **engaged_seconds** | **Integer** | Total engaged time across all responders for this incident.  Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved.  This may include periods in which the incidents were snoozed. | [optional] |
| **engaged_user_count** | **Integer** | Total number of users who engaged (acknowledged, accepted responder request) in the incident. | [optional] |
| **escalation_count** | **Integer** | Total count of instances where an incident is escalated between responders assigned to an escalation policy. | [optional] |
| **escalation_policy_id** | **String** | ID of the escalation policy the incident was assigned to. | [optional] |
| **escalation_policy_name** | **String** | Name of the escalation policy the incident was assigned to. | [optional] |
| **id** | **String** | Incident ID | [optional] |
| **incident_number** | **Integer** | The PagerDuty incident number. | [optional] |
| **joined_user_ids** | **Array&lt;String&gt;** | The IDs of the users who either acknowledged the incident or accepted a responder request. | [optional] |
| **joined_user_names** | **Array&lt;String&gt;** | The names of the users who either acknowledged the incident or accepted a responder request. | [optional] |
| **major** | **Boolean** | An incident is classified as a [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents) if it has one of the two highest priorities, or if multiple responders are added and acknowledge the incident. | [optional] |
| **manual_escalation_count** | **Integer** | Total count of manual escalations in the incident. | [optional] |
| **off_hour_interruptions** | **Integer** | Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone. | [optional] |
| **priority_id** | **String** | ID of the incident&#39;s priority level. | [optional] |
| **priority_name** | **String** | The user-provided short name of the priority. | [optional] |
| **priority_order** | **Integer** | The numerical value used to sort priorities. Higher values are higher priority. | [optional] |
| **reassignment_count** | **Integer** | Total count of reassignments in the incident. | [optional] |
| **resolved_at** | **String** | Timestamp of when the incident was resolved. | [optional] |
| **resolved_by_user_id** | **String** | ID of the user who resolved the incident. | [optional] |
| **resolved_by_user_name** | **String** | Name of the user who resolved the incident. | [optional] |
| **seconds_to_engage** | **Integer** | A measure of *people response time*. This metric measures the time from the first user engagement (acknowledge or responder accept) to the last. This metric is only used for incidents with **multiple responders**; for incidents with one or no engaged users, this value is null. | [optional] |
| **seconds_to_first_ack** | **Integer** | Time between the start of an incident, and the first responder to acknowledge. | [optional] |
| **seconds_to_mobilize** | **Integer** | Time between the start of an incident, and the last additional responder to acknowledge. If an incident has one or no responders, the value will be null. | [optional] |
| **seconds_to_resolve** | **Integer** | Time from when an incident was triggered until it was resolved. | [optional] |
| **service_id** | **String** | ID of the service that the incident triggered on. | [optional] |
| **service_name** | **String** | Name of the service that the incident triggered on. | [optional] |
| **sleep_hour_interruptions** | **Integer** | Total number of unique interruptions during sleep hours; 10pm-8am every day, based on the user’s time zone. | [optional] |
| **snoozed_seconds** | **Integer** | Total seconds the incident has been snoozed for. | [optional] |
| **status** | **String** | The incident status. Can be one of &#x60;triggered&#x60;, &#x60;acknowledged&#x60;, or &#x60;resolved&#x60;. | [optional] |
| **team_id** | **String** | ID of the team the incident was assigned to. | [optional] |
| **team_name** | **String** | Name of the team the incident was assigned to. | [optional] |
| **timeout_escalation_count** | **Integer** | Total count of timeout escalations in the incident. | [optional] |
| **total_interruptions** | **Integer** | Total number of unique interruptions in the incident. | [optional] |
| **total_notifications** | **Integer** | Total number of notifications sent for the incident. | [optional] |
| **urgency** | **String** | Notification level | [optional] |
| **user_defined_effort_seconds** | **Integer** | The total response effort in seconds, [as defined by the user](https://support.pagerduty.com/docs/editing-incidents#edit-incident-duration). | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AnalyticsRawIncident.new(
  acknowledged_user_ids: null,
  acknowledged_user_names: null,
  acknowledgement_count: null,
  active_user_count: null,
  assigned_user_ids: null,
  assigned_user_names: null,
  assignment_count: null,
  auto_resolved: null,
  business_hour_interruptions: null,
  created_at: null,
  description: null,
  engaged_seconds: null,
  engaged_user_count: null,
  escalation_count: null,
  escalation_policy_id: null,
  escalation_policy_name: null,
  id: null,
  incident_number: null,
  joined_user_ids: null,
  joined_user_names: null,
  major: null,
  manual_escalation_count: null,
  off_hour_interruptions: null,
  priority_id: null,
  priority_name: null,
  priority_order: null,
  reassignment_count: null,
  resolved_at: null,
  resolved_by_user_id: null,
  resolved_by_user_name: null,
  seconds_to_engage: null,
  seconds_to_first_ack: null,
  seconds_to_mobilize: null,
  seconds_to_resolve: null,
  service_id: null,
  service_name: null,
  sleep_hour_interruptions: null,
  snoozed_seconds: null,
  status: null,
  team_id: null,
  team_name: null,
  timeout_escalation_count: null,
  total_interruptions: null,
  total_notifications: null,
  urgency: null,
  user_defined_effort_seconds: null
)
```

