# PagerDutyOpenapiClient::CreateServiceDependencyRequestRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supporting_service** | [**CreateServiceDependencyRequestRelationshipsInnerSupportingService**](CreateServiceDependencyRequestRelationshipsInnerSupportingService.md) |  | [optional] |
| **dependent_service** | [**CreateServiceDependencyRequestRelationshipsInnerDependentService**](CreateServiceDependencyRequestRelationshipsInnerDependentService.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateServiceDependencyRequestRelationshipsInner.new(
  supporting_service: null,
  dependent_service: null
)
```

