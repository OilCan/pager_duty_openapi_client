# PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **severity** | **String** | Set the severity of the resulting alert. | [optional] |
| **event_action** | **String** | Set whether the resulting alert status is trigger or resolve. | [optional] |
| **variables** | [**Array&lt;OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsVariables&gt;**](OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsVariables.md) | Populate variables from event payloads and use those variables in other event actions. | [optional] |
| **extractions** | [**Array&lt;OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractions&gt;**](OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractions.md) | Dynamically extract values to set and modify new and existing PD-CEF fields. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActions.new(
  severity: null,
  event_action: null,
  variables: null,
  extractions: null
)
```

