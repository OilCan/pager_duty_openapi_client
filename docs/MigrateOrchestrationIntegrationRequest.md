# OpenapiClient::MigrateOrchestrationIntegrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_id** | **String** | The ID of the Event Orchestration you&#39;ll be moving the Integration away from |  |
| **source_type** | **String** | The type of of the &#x60;source_id&#x60; object |  |
| **integration_id** | **String** | The ID of the Integration you&#39;ll be moving |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MigrateOrchestrationIntegrationRequest.new(
  source_id: null,
  source_type: null,
  integration_id: null
)
```

