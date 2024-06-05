# PagerDutyOpenapiClient::CreateServiceDependencyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationships** | [**Array&lt;CreateServiceDependencyRequestRelationshipsInner&gt;**](CreateServiceDependencyRequestRelationshipsInner.md) | List of all service dependencies to be created. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateServiceDependencyRequest.new(
  relationships: null
)
```

