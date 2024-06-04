# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Object** | Indicates that these are a set of \&quot;global\&quot; rules. | [optional] |
| **parent** | [**OrchestrationGlobalAllOfOrchestrationPath1Parent**](OrchestrationGlobalAllOfOrchestrationPath1Parent.md) |  | [optional] |
| **sets** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPath1Sets&gt;**](OrchestrationGlobalAllOfOrchestrationPath1Sets.md) | You must define at least a \&quot;start\&quot; set, but you can also define any number of additional sets that are routed to by other rules to form a directional graph. | [optional] |
| **catch_all** | [**OrchestrationGlobalAllOfOrchestrationPath1CatchAll**](OrchestrationGlobalAllOfOrchestrationPath1CatchAll.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1.new(
  type: null,
  parent: null,
  sets: null,
  catch_all: null
)
```

