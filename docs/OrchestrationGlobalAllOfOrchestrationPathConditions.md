# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** | A PCL condition string | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathConditions.new(
  expression: event.summary matches part &#39;my service error&#39;
)
```

