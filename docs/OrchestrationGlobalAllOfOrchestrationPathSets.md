# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathSets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of this set of rules. Rules in other sets can route events into this set using the \&quot;route_to\&quot; properties. | [optional][default to &#39;start&#39;] |
| **rules** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPathRules&gt;**](OrchestrationGlobalAllOfOrchestrationPathRules.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathSets.new(
  id: null,
  rules: null
)
```

