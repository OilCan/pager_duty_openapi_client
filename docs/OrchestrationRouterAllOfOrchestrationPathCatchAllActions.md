# PagerDutyOpenapiClient::OrchestrationRouterAllOfOrchestrationPathCatchAllActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_to** | **String** | With a value of &#39;unrouted&#39;, all events are sent to the Unrouted Orchestration. | [optional][default to &#39;unrouted&#39;] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationRouterAllOfOrchestrationPathCatchAllActions.new(
  route_to: null
)
```

