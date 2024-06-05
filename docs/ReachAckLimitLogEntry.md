# PagerDutyOpenapiClient::ReachAckLimitLogEntry

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

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ReachAckLimitLogEntry.new(
  type: null,
  created_at: null,
  channel: null,
  agent: null,
  note: null,
  contexts: null,
  service: null,
  incident: null,
  teams: null,
  event_details: null
)
```

