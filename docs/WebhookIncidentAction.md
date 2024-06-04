# OpenapiClient::WebhookIncidentAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Uniquely identifies this outgoing webhook message; can be used for idempotency when processing the messages. | [optional][readonly] |
| **triggered_at** | **Time** | The date/time when this message was was sent. | [optional][readonly] |
| **webhook** | [**Webhook**](Webhook.md) |  | [optional] |
| **type** | **String** | The type of action being reported by this message. * &#x60;incident.trigger&#x60; - Sent when an incident is newly created/triggered. * &#x60;incident.acknowledge&#x60; - Sent when an incident is acknowledged by a user. * &#x60;incident.unacknowledge&#x60; - Sent when an incident is unacknowledged due to its acknowledgement timing out. * &#x60;incident.resolve&#x60; - Sent when an incident has been resolved. * &#x60;incident.assign&#x60; - Sent when an incident has been assigned to another user. Often occurs in concert with an &#x60;acknowledge&#x60;. * &#x60;incident.escalate&#x60; - Sent when an incident has been escalated to another user in the same escalation chain. * &#x60;incident.delegate&#x60; - Sent when an incident has been reassigned to another escalation policy. * &#x60;incident.annotate&#x60; - Sent when a note is created on an incident.  | [optional] |
| **incident** | [**Incident**](Incident.md) |  | [optional] |
| **log_entries** | [**Array&lt;WebhookIncidentActionAllOfLogEntries&gt;**](WebhookIncidentActionAllOfLogEntries.md) | Log Entries that correspond to the action this Webhook is reporting. Includes the channels. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookIncidentAction.new(
  id: null,
  triggered_at: null,
  webhook: null,
  type: null,
  incident: null,
  log_entries: null
)
```

