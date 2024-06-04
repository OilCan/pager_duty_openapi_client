# OpenapiClient::OrchestrationRouterAllOfOrchestrationPathActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route_to** | **String** | The ID of the target Service for the resulting alert. You can find the service you want to route to by calling the services endpoint. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationRouterAllOfOrchestrationPathActions.new(
  route_to: PSI2I2O
)
```

