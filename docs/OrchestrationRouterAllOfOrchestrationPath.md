# PagerDutyOpenapiClient::OrchestrationRouterAllOfOrchestrationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Object** | Indicates that these are a \&quot;router\&quot; type set of rules. | [optional] |
| **parent** | [**OrchestrationRouterAllOfOrchestrationPathParent**](OrchestrationRouterAllOfOrchestrationPathParent.md) |  | [optional] |
| **sets** | [**Array&lt;OrchestrationRouterAllOfOrchestrationPathSets&gt;**](OrchestrationRouterAllOfOrchestrationPathSets.md) | The Router contains a single set of rules (the \&quot;start\&quot; set). The Router evaluates Events against these Rules, one at a time, and routes each Event to a specific Service based on the first rule that matches. | [optional] |
| **catch_all** | [**OrchestrationRouterAllOfOrchestrationPathCatchAll**](OrchestrationRouterAllOfOrchestrationPathCatchAll.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationRouterAllOfOrchestrationPath.new(
  type: null,
  parent: null,
  sets: null,
  catch_all: null
)
```

