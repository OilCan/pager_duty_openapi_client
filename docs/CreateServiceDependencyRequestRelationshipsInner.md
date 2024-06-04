# OpenapiClient::CreateServiceDependencyRequestRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supporting_service** | [**CreateServiceDependencyRequestRelationshipsInnerSupportingService**](CreateServiceDependencyRequestRelationshipsInnerSupportingService.md) |  | [optional] |
| **dependent_service** | [**CreateServiceDependencyRequestRelationshipsInnerDependentService**](CreateServiceDependencyRequestRelationshipsInnerDependentService.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateServiceDependencyRequestRelationshipsInner.new(
  supporting_service: null,
  dependent_service: null
)
```

