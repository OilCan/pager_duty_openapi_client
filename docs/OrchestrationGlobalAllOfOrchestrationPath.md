# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional][readonly][default to &#39;service&#39;] |
| **parent** | [**OrchestrationGlobalAllOfOrchestrationPathParent**](OrchestrationGlobalAllOfOrchestrationPathParent.md) |  | [optional] |
| **sets** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPathSets&gt;**](OrchestrationGlobalAllOfOrchestrationPathSets.md) | Must contain at least a \&quot;start\&quot; set, but can contain any number of additional sets that are routed to by other rules to form a directional graph of rules. | [optional] |
| **catch_all** | [**OrchestrationGlobalAllOfOrchestrationPathCatchAll**](OrchestrationGlobalAllOfOrchestrationPathCatchAll.md) |  | [optional] |
| **created_at** | **Time** | The date/time the object was created. | [optional][readonly] |
| **created_by** | [**OrchestrationCacheVariableCreatedBy**](OrchestrationCacheVariableCreatedBy.md) |  | [optional] |
| **updated_at** | **Time** | The date/time the object was last updated. | [optional][readonly] |
| **updated_by** | [**OrchestrationCacheVariableUpdatedBy**](OrchestrationCacheVariableUpdatedBy.md) |  | [optional] |
| **version** | **String** | Version of these Orchestration Rules | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath.new(
  type: null,
  parent: null,
  sets: null,
  catch_all: null,
  created_at: null,
  created_by: null,
  updated_at: null,
  updated_by: null,
  version: null
)
```

