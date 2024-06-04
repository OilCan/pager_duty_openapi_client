# OpenapiClient::OrchestrationUnroutedAllOfOrchestrationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Object** | Indicates that these are a \&quot;unrouted\&quot; type set of rules. | [optional] |
| **parent** | [**OrchestrationUnroutedAllOfOrchestrationPathParent**](OrchestrationUnroutedAllOfOrchestrationPathParent.md) |  | [optional] |
| **sets** | [**Array&lt;OrchestrationUnroutedAllOfOrchestrationPathSets&gt;**](OrchestrationUnroutedAllOfOrchestrationPathSets.md) | An Unrouted Orchestration must contain at least a \&quot;start\&quot; set, but can contain any number of additional sets that are routed to by other rules to form a directional graph. | [optional] |
| **catch_all** | [**OrchestrationUnroutedAllOfOrchestrationPathCatchAll**](OrchestrationUnroutedAllOfOrchestrationPathCatchAll.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationUnroutedAllOfOrchestrationPath.new(
  type: null,
  parent: null,
  sets: null,
  catch_all: null
)
```

