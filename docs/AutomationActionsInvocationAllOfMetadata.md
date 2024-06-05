# PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**AutomationActionsInvocationAllOfMetadataAgent**](AutomationActionsInvocationAllOfMetadataAgent.md) |  |  |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadata.new(
  agent: null,
  incident: null
)
```

