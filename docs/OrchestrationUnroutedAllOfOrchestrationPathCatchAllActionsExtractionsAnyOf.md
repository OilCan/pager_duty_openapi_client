# OpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractionsAnyOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The PD-CEF field that will be set with the value from the template. | [optional] |
| **template** | **String** | A value that will be used to populate the target PD-CEF field. You can include variables extracted from the payload by using string interpolation. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractionsAnyOf.new(
  target: event.summary,
  template: High CPU on {{hostname}} server
)
```

