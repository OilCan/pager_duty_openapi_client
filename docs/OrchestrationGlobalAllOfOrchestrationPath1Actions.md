# PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1Actions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_to** | **String** | The ID of a Set from this Global Orchestration whose rules you also want to use with event that match this rule. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1Actions.new(
  route_to: null
)
```

