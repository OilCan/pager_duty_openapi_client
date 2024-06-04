# OpenapiClient::CreateServiceDependency200ResponseRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supporting_service** | [**CreateServiceDependency200ResponseRelationshipsInnerSupportingService**](CreateServiceDependency200ResponseRelationshipsInnerSupportingService.md) |  | [optional] |
| **dependent_service** | [**CreateServiceDependency200ResponseRelationshipsInnerDependentService**](CreateServiceDependency200ResponseRelationshipsInnerDependentService.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateServiceDependency200ResponseRelationshipsInner.new(
  supporting_service: null,
  dependent_service: null,
  id: null,
  type: null
)
```

