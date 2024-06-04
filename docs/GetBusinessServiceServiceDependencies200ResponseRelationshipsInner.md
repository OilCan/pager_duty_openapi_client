# OpenapiClient::GetBusinessServiceServiceDependencies200ResponseRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supporting_service** | [**GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerSupportingService**](GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerSupportingService.md) |  | [optional] |
| **dependent_service** | [**GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerDependentService**](GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerDependentService.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetBusinessServiceServiceDependencies200ResponseRelationshipsInner.new(
  supporting_service: null,
  dependent_service: null,
  id: null,
  type: null
)
```

