# PagerDutyOpenapiClient::StatusPagePostUpdateImpactService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a Service entry. | [optional][readonly] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Service. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPagePostUpdateImpactService.new(
  id: null,
  type: null
)
```

