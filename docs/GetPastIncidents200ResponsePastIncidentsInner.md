# PagerDutyOpenapiClient::GetPastIncidents200ResponsePastIncidentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident** | [**GetPastIncidents200ResponsePastIncidentsInnerIncident**](GetPastIncidents200ResponsePastIncidentsInnerIncident.md) |  | [optional] |
| **score** | **Float** | The computed similarity score associated with the incident and parent incident  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetPastIncidents200ResponsePastIncidentsInner.new(
  incident: null,
  score: null
)
```

