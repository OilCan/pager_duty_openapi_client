# OpenapiClient::AcknowledgeLogEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **created_at** | **Time** | Time at which the log entry was created. | [optional][readonly] |
| **channel** | [**Channel**](Channel.md) |  | [optional] |
| **agent** | [**AgentReference**](AgentReference.md) |  | [optional] |
| **note** | **String** | Optional field containing a note, if one was included with the log entry. | [optional][readonly] |
| **contexts** | [**Array&lt;Context&gt;**](Context.md) | Contexts to be included with the trigger such as links to graphs or images. | [optional][readonly] |
| **service** | [**ServiceReference**](ServiceReference.md) |  | [optional] |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | Will consist of references unless included | [optional][readonly] |
| **event_details** | [**LogEntryAllOfEventDetails**](LogEntryAllOfEventDetails.md) |  | [optional] |
| **acknowledgement_timeout** | **Integer** | Duration for which the acknowledgement lasts, in seconds. Services can contain an &#x60;acknowledgement_timeout&#x60; property, which specifies the length of time acknowledgements should last for. Each time an incident is acknowledged, this timeout is copied into the acknowledgement log entry. This property is optional, as older log entries may not contain it. It may also be &#x60;null&#x60;, as acknowledgements can be performed on incidents whose services have no &#x60;acknowledgement_timeout&#x60; set. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AcknowledgeLogEntry.new(
  type: null,
  created_at: null,
  channel: null,
  agent: null,
  note: null,
  contexts: null,
  service: null,
  incident: null,
  teams: null,
  event_details: null,
  acknowledgement_timeout: null
)
```

