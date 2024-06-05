# PagerDutyOpenapiClient::DeleteServiceDependencyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationships** | [**Array&lt;CreateServiceDependencyRequestRelationshipsInner&gt;**](CreateServiceDependencyRequestRelationshipsInner.md) | List of all service dependencies to be deleted. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::DeleteServiceDependencyRequest.new(
  relationships: null
)
```

