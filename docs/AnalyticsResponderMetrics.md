# OpenapiClient::AnalyticsResponderMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mean_engaged_seconds** | **Integer** | Mean engaged time across all responders for incidents that match the given filters. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. | [optional] |
| **mean_time_to_acknowledge_seconds** | **Integer** | The average time between when an incident is first assigned to a user and when the incident is first acknowledged by that user. Reassign, resolve, and escalation actions do not imply acknowledgement. | [optional] |
| **responder_id** | **Integer** | ID of the responder (user). Not included when aggregating by all responders. | [optional] |
| **responder_name** | **String** | Name of the responder (user). Not included when aggregating by all responders. | [optional] |
| **team_id** | **String** | ID of the team associated with the responder. Not included when aggregating by all responders. | [optional] |
| **team_name** | **String** | Name of the team associated with the responder. Not included when aggregating by all responders. | [optional] |
| **total_business_hour_interruptions** | **Integer** | Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone. | [optional] |
| **total_engaged_seconds** | **Integer** | Total engaged time across all responders for incidents. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. | [optional] |
| **total_incident_count** | **Integer** | The total number of incidents that were created. | [optional] |
| **total_incidents_acknowledged** | **Integer** | The total count of assigned incidents acknowledged by the user.  Only explicit incident acknowledgment counts; reassign, resolve, and escalation actions do not imply acknowledgement. | [optional] |
| **total_incidents_manual_escalated_from** | **Integer** | The total count of the user’s assigned incidents that were manually escalated away from a user without acknowledgement. | [optional] |
| **total_incidents_manual_escalated_to** | **Integer** | The total count of incidents the user was manually escalated to. | [optional] |
| **total_incidents_reassigned_from** | **Integer** | The total count of a user&#39;s assigned incidents that were reassigned away from the user to another user or escalation policy. | [optional] |
| **total_incidents_reassigned_to** | **Integer** | The total count of incidents the user was reassigned to. | [optional] |
| **total_incidents_timeout_escalated_from** | **Integer** | The total count of the user’s assigned incidents that were escalated due to timeouts. | [optional] |
| **total_incidents_timeout_escalated_to** | **Integer** | The total count of incidents the user was escalated to due to timeouts. | [optional] |
| **total_interruptions** | **Integer** | Total number of unique interruptions. | [optional] |
| **total_notifications** | **Integer** | The total count of incident notifications sent via email, SMS, phone call and push. | [optional] |
| **total_off_hour_interruptions** | **Integer** | Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone. | [optional] |
| **total_seconds_on_call** | **Integer** | Total seconds the responder was on call. | [optional] |
| **total_seconds_on_call_level_1** | **Integer** | Total seconds the responder was on call at level 1 of their escalation policy. | [optional] |
| **total_seconds_on_call_level_2_plus** | **Integer** | Total seconds the responder was on call at level 2 or higher of their escalation policy. | [optional] |
| **total_sleep_hour_interruptions** | **Integer** | Total number of unique interruptions during sleep hours; 10pm-8am every day, based on the user’s time zone. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyticsResponderMetrics.new(
  mean_engaged_seconds: null,
  mean_time_to_acknowledge_seconds: null,
  responder_id: null,
  responder_name: null,
  team_id: null,
  team_name: null,
  total_business_hour_interruptions: null,
  total_engaged_seconds: null,
  total_incident_count: null,
  total_incidents_acknowledged: null,
  total_incidents_manual_escalated_from: null,
  total_incidents_manual_escalated_to: null,
  total_incidents_reassigned_from: null,
  total_incidents_reassigned_to: null,
  total_incidents_timeout_escalated_from: null,
  total_incidents_timeout_escalated_to: null,
  total_interruptions: null,
  total_notifications: null,
  total_off_hour_interruptions: null,
  total_seconds_on_call: null,
  total_seconds_on_call_level_1: null,
  total_seconds_on_call_level_2_plus: null,
  total_sleep_hour_interruptions: null
)
```

