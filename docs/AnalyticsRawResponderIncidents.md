# PagerDutyOpenapiClient::AnalyticsRawResponderIncidents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_created_at** | **String** | Timestamp of when the incident was created. | [optional] |
| **incident_description** | **String** | The incident description. | [optional] |
| **incident_id** | **String** | Incident ID | [optional] |
| **incident_number** | **Integer** | The PagerDuty incident number. | [optional] |
| **incident_priority_id** | **String** | ID of the incident&#39;s priority level. | [optional] |
| **incident_priority_name** | **String** | The user-provided short name of the priority. | [optional] |
| **incident_priority_order** | **Integer** | The numerical value used to sort priorities. Higher values are higher priority. | [optional] |
| **incident_urgency** | **String** | Notification level | [optional] |
| **mean_time_to_acknowledge_seconds** | **Integer** | Mean time from this user being assigned to an incident until this user acknowledges the incident. | [optional] |
| **responder_id** | **String** | ID of the responder. | [optional] |
| **responder_name** | **String** | Name of the responder. | [optional] |
| **service_id** | **String** | ID of the service that the incident triggered on. | [optional] |
| **service_name** | **String** | Name of the service that the incident triggered on. | [optional] |
| **service_team_id** | **String** | ID of the team that owns the related service. | [optional] |
| **service_team_name** | **String** | Name of the team that owns the related service. | [optional] |
| **total_acknowledgements** | **Integer** | Total acknowledgements from the responder on the incident. | [optional] |
| **total_business_hour_interruptions** | **Integer** | Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone. | [optional] |
| **total_engaged_seconds** | **Integer** | Total engaged time across all responders for incidents. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. | [optional] |
| **total_interruptions** | **Integer** | Total number of unique interruptions for the responder during the incident. | [optional] |
| **total_manual_escalations_from** | **Integer** | Total times the responder was manually escalated away from the incident. | [optional] |
| **total_manual_escalations_to** | **Integer** | Total times the responder was manually escalated to the incident. | [optional] |
| **total_off_hour_interruptions** | **String** | Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone. | [optional] |
| **total_reassignments_from** | **Integer** | Total times the responder was reassigned away from the incident. | [optional] |
| **total_reassignments_to** | **Integer** | Total times the responder was reassigned to the incident. | [optional] |
| **total_sleep_hour_interruptions** | **Integer** | Total number of unique interruptions during sleep hours; 10pm-8am every day, based on the user’s time zone. | [optional] |
| **total_timeout_escalations_from** | **Integer** | Total times the responder was escalated away from the incident due to timeout. | [optional] |
| **total_timeout_escalations_to** | **Integer** | Total times the responder was escalated to the incident due to timeout. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AnalyticsRawResponderIncidents.new(
  incident_created_at: null,
  incident_description: null,
  incident_id: null,
  incident_number: null,
  incident_priority_id: null,
  incident_priority_name: null,
  incident_priority_order: null,
  incident_urgency: null,
  mean_time_to_acknowledge_seconds: null,
  responder_id: null,
  responder_name: null,
  service_id: null,
  service_name: null,
  service_team_id: null,
  service_team_name: null,
  total_acknowledgements: null,
  total_business_hour_interruptions: null,
  total_engaged_seconds: null,
  total_interruptions: null,
  total_manual_escalations_from: null,
  total_manual_escalations_to: null,
  total_off_hour_interruptions: null,
  total_reassignments_from: null,
  total_reassignments_to: null,
  total_sleep_hour_interruptions: null,
  total_timeout_escalations_from: null,
  total_timeout_escalations_to: null
)
```

