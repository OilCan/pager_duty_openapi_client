# OpenapiClient::DeleteServiceDependencyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationships** | [**Array&lt;CreateServiceDependencyRequestRelationshipsInner&gt;**](CreateServiceDependencyRequestRelationshipsInner.md) | List of all service dependencies to be deleted. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeleteServiceDependencyRequest.new(
  relationships: null
)
```

