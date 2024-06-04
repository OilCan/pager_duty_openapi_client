# OpenapiClient::AnalyticsIncidentMetricsEscalationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distinct_responder_count** | **Integer** | Distinct count of responders who engaged in incidents on the escalation policy | [optional] |
| **escalation_policy_id** | **String** | ID of the escalation policy the incident was last assigned to. Not included when aggregating by all. | [optional] |
| **escalation_policy_name** | **String** | Name of the escalation policy the incident was last assigned to. Not included when aggregating by all. | [optional] |
| **mean_assignment_count** | **Integer** | Mean count of instances where responders were assigned an incident (including through reassignment or escalation) or accepted a responder request. | [optional] |
| **mean_engaged_seconds** | **Integer** | Mean engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. | [optional] |
| **mean_engaged_user_count** | **Integer** | Mean number of users who engaged with an incident. *Engaged* is defined as acknowledging an incident or accepting a responder request in it. | [optional] |
| **mean_seconds_to_engage** | **Integer** | A measure of *people response time*. This metric measures the time from the first user engagement (acknowledge or responder accept) to the last. This metric is only used for incidents with **multiple responders**; for incidents with one or no engaged users, this value is null. | [optional] |
| **mean_seconds_to_first_ack** | **Integer** | Mean time between the start of an incident, and the first responder to acknowledge. | [optional] |
| **mean_seconds_to_mobilize** | **Integer** | Mean time between the start of an incident, and the last additional responder to acknowledge. For incidents with one or no engaged users, this value is null. | [optional] |
| **mean_seconds_to_resolve** | **Integer** | Mean time from when an incident was triggered until it was resolved. | [optional] |
| **mean_user_defined_engaged_seconds** | **Integer** | Mean engaged time across all responders. Engaged time is measured from the time  a user engages with an incident (by acknowledging or accepting a responder request)  until the incident is resolved. This may include periods in which the incidents were snoozed. This metric uses the incident response effort values that  [users have defined](https://support.pagerduty.com/docs/edit-incidents#edit-incident-duration), if they exist. | [optional] |
| **range_start** | **String** | Start of the date range that the metrics were calculated for. Only included when an aggregate unit is specified in the request. | [optional] |
| **team_id** | **String** | ID of the team the incident was assigned to. Not included when aggregating by all. | [optional] |
| **team_name** | **String** | Name of the team the incident was assigned to. Not included when aggregating by all. | [optional] |
| **total_business_hour_interruptions** | **Integer** | Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone. | [optional] |
| **total_engaged_seconds** | **Integer** | Total engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. | [optional] |
| **total_escalation_count** | **Integer** | Total count of instances where an incident is escalated between responders assigned to an escalation policy. | [optional] |
| **total_incident_count** | **Integer** | The total number of incidents that were created. | [optional] |
| **total_incidents_acknowledged** | **Integer** | The total count of assigned incidents acknowledged.  Only explicit incident acknowledgment counts; reassign, resolve, and escalation actions do not imply acknowledgement. | [optional] |
| **total_incidents_auto_resolved** | **Object** | The total count of incidents that were resolved automatically.  This count includes incidents resolved via an integration and those that were [auto-resolved in PagerDuty](https://support.pagerduty.com/docs/configurable-service-settings#auto-resolution). | [optional] |
| **total_incidents_manual_escalated** | **Integer** | The total count of incidents that were manually escalated. | [optional] |
| **total_incidents_reassigned** | **Integer** | The total count of incidents that were reassigned. | [optional] |
| **total_incidents_timeout_escalated** | **Integer** | The total count of incidents that were escalated due to timeouts. | [optional] |
| **total_interruptions** | **Integer** | Total number of unique interruptions. | [optional] |
| **total_notifications** | **Integer** | The total count of incident notifications sent via email, SMS, phone call and push. | [optional] |
| **total_off_hour_interruptions** | **Integer** | Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone. | [optional] |
| **total_sleep_hour_interruptions** | **Integer** | Total number of unique interruptions during sleep hours; 10pm-8am every day, based on the user’s time zone. | [optional] |
| **total_snoozed_seconds** | **Integer** | Total number of seconds incidents were snoozed. | [optional] |
| **total_user_defined_engaged_seconds** | **Integer** | Total engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. This metric uses the edited incident response effort values that  [users have defined](https://support.pagerduty.com/docs/edit-incidents#edit-incident-duration), if they exist. | [optional] |
| **up_time_pct** | **Float** | The percentage of time in the defined date range that the service was not interrupted by a [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents). Not included when aggregating by all. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AnalyticsIncidentMetricsEscalationPolicy.new(
  distinct_responder_count: null,
  escalation_policy_id: null,
  escalation_policy_name: null,
  mean_assignment_count: null,
  mean_engaged_seconds: null,
  mean_engaged_user_count: null,
  mean_seconds_to_engage: null,
  mean_seconds_to_first_ack: null,
  mean_seconds_to_mobilize: null,
  mean_seconds_to_resolve: null,
  mean_user_defined_engaged_seconds: null,
  range_start: null,
  team_id: null,
  team_name: null,
  total_business_hour_interruptions: null,
  total_engaged_seconds: null,
  total_escalation_count: null,
  total_incident_count: null,
  total_incidents_acknowledged: null,
  total_incidents_auto_resolved: null,
  total_incidents_manual_escalated: null,
  total_incidents_reassigned: null,
  total_incidents_timeout_escalated: null,
  total_interruptions: null,
  total_notifications: null,
  total_off_hour_interruptions: null,
  total_sleep_hour_interruptions: null,
  total_snoozed_seconds: null,
  total_user_defined_engaged_seconds: null,
  up_time_pct: null
)
```

