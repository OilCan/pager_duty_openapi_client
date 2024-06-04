# OpenapiClient::OrchestrationIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Integration. | [optional][readonly] |
| **label** | **String** | Name of the Integration. | [optional] |
| **parameters** | [**OrchestrationIntegrationParameters**](OrchestrationIntegrationParameters.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationIntegration.new(
  id: null,
  label: null,
  parameters: null
)
```

