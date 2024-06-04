# OpenapiClient::Service

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;service&#39;] |
| **name** | **String** | The name of the service. | [optional] |
| **description** | **String** | The user-provided description of the service. | [optional] |
| **auto_resolve_timeout** | **Integer** | Time in seconds that an incident is automatically resolved if left open for that long. Value is &#x60;null&#x60; if the feature is disabled. Value must not be negative. Setting this field to &#x60;0&#x60;, &#x60;null&#x60; (or unset in POST request) will disable the feature. | [optional][default to 14400] |
| **acknowledgement_timeout** | **Integer** | Time in seconds that an incident changes to the Triggered State after being Acknowledged. Value is &#x60;null&#x60; if the feature is disabled. Value must not be negative. Setting this field to &#x60;0&#x60;, &#x60;null&#x60; (or unset in POST request) will disable the feature. | [optional][default to 1800] |
| **created_at** | **Time** | The date/time when this service was created | [optional][readonly] |
| **status** | **String** | The current state of the Service. Valid statuses are:   - &#x60;active&#x60;: The service is enabled and has no open incidents. This is the only status a service can be created with. - &#x60;warning&#x60;: The service is enabled and has one or more acknowledged incidents. - &#x60;critical&#x60;: The service is enabled and has one or more triggered incidents. - &#x60;maintenance&#x60;: The service is under maintenance, no new incidents will be triggered during maintenance mode. - &#x60;disabled&#x60;: The service is disabled and will not have any new triggered incidents.  | [optional][default to &#39;active&#39;] |
| **last_incident_timestamp** | **Time** | The date/time when the most recent incident was created for this service. | [optional][readonly] |
| **escalation_policy** | [**EscalationPolicyReference**](EscalationPolicyReference.md) |  |  |
| **response_play** | [**ServiceAllOfResponsePlay**](ServiceAllOfResponsePlay.md) |  | [optional] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | The set of teams associated with this service. | [optional][readonly] |
| **integrations** | [**Array&lt;IntegrationReference&gt;**](IntegrationReference.md) | An array containing Integration objects that belong to this service. If &#x60;integrations&#x60; is passed as an argument, these are full objects - otherwise, these are references. | [optional][readonly] |
| **incident_urgency_rule** | [**IncidentUrgencyRule**](IncidentUrgencyRule.md) |  | [optional] |
| **support_hours** | [**SupportHours**](SupportHours.md) |  | [optional] |
| **scheduled_actions** | [**Array&lt;ScheduledAction&gt;**](ScheduledAction.md) | An array containing scheduled actions for the service. | [optional] |
| **addons** | [**Array&lt;AddonReference&gt;**](AddonReference.md) | The array of Add-ons associated with this service. | [optional][readonly] |
| **alert_creation** | **String** | Whether a service creates only incidents, or both alerts and incidents. A service must create alerts in order to enable incident merging. * \&quot;create_incidents\&quot; - The service will create one incident and zero alerts for each incoming event. * \&quot;create_alerts_and_incidents\&quot; - The service will create one incident and one associated alert for each incoming event. This attribute has been deprecated as all services will be migrated to use alerts and incidents. Afterward, the incident only service setting will no longer be available. For details, please refer to the knowledge base: https://support.pagerduty.com/docs/alerts#enable-and-disable-alerts-on-a-service.  | [optional][default to &#39;create_alerts_and_incidents&#39;] |
| **alert_grouping_parameters** | [**AlertGroupingParameters**](AlertGroupingParameters.md) |  | [optional] |
| **alert_grouping** | **String** | Defines how alerts on this service will be automatically grouped into incidents. Note that the alert grouping features are available only on certain plans. There are three available options: * null - No alert grouping on the service. Each alert will create a separate incident; * \&quot;time\&quot; - All alerts within a specified duration will be grouped into the same incident. This duration is set in the &#x60;alert_grouping_timeout&#x60; setting (described below). Available on Standard, Enterprise, and Event Intelligence plans; * \&quot;intelligent\&quot; - Alerts will be intelligently grouped based on a machine learning model that looks at the alert summary, timing, and the history of grouped alerts. Available on Enterprise and Event Intelligence plans  | [optional] |
| **alert_grouping_timeout** | **Integer** | The duration in minutes within which to automatically group incoming alerts. This setting applies only when &#x60;alert_grouping&#x60; is set to &#x60;time&#x60;. To continue grouping alerts until the Incident is resolved, set this value to &#x60;0&#x60;.  | [optional] |
| **auto_pause_notifications_parameters** | [**AutoPauseNotificationsParameters**](AutoPauseNotificationsParameters.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Service.new(
  type: null,
  name: null,
  description: null,
  auto_resolve_timeout: null,
  acknowledgement_timeout: null,
  created_at: null,
  status: null,
  last_incident_timestamp: null,
  escalation_policy: null,
  response_play: null,
  teams: null,
  integrations: null,
  incident_urgency_rule: null,
  support_hours: null,
  scheduled_actions: null,
  addons: null,
  alert_creation: null,
  alert_grouping_parameters: null,
  alert_grouping: null,
  alert_grouping_timeout: null,
  auto_pause_notifications_parameters: null
)
```

