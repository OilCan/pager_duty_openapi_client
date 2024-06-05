# PagerDutyOpenapiClient::GetBusinessServiceServiceDependencies200ResponseRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supporting_service** | [**GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerSupportingService**](GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerSupportingService.md) |  | [optional] |
| **dependent_service** | [**GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerDependentService**](GetBusinessServiceServiceDependencies200ResponseRelationshipsInnerDependentService.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetBusinessServiceServiceDependencies200ResponseRelationshipsInner.new(
  supporting_service: null,
  dependent_service: null,
  id: null,
  type: null
)
```

