# OpenapiClient::UpdateOrchPathUnrouted200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orchestration_path** | [**OrchestrationUnroutedAllOfOrchestrationPath**](OrchestrationUnroutedAllOfOrchestrationPath.md) |  | [optional] |
| **warnings** | [**Array&lt;UpdateOrchPathRouter200ResponseAllOfWarningsInner&gt;**](UpdateOrchPathRouter200ResponseAllOfWarningsInner.md) | List of applicable warnings messages for each rule using a feature not available on your account plan. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateOrchPathUnrouted200Response.new(
  orchestration_path: null,
  warnings: null
)
```

