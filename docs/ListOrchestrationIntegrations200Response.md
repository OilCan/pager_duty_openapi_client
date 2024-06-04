# OpenapiClient::ListOrchestrationIntegrations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integrations** | [**Array&lt;OrchestrationIntegration&gt;**](OrchestrationIntegration.md) |  | [optional] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListOrchestrationIntegrations200Response.new(
  integrations: null,
  total: null
)
```

