# PagerDutyOpenapiClient::BusinessService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the business service. | [optional] |
| **description** | **String** | The user-provided description of the business service. | [optional] |
| **point_of_contact** | **String** | The point of contact assigned to this service. | [optional] |
| **team** | [**Team3**](Team3.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::BusinessService.new(
  name: null,
  description: null,
  point_of_contact: null,
  team: null
)
```

