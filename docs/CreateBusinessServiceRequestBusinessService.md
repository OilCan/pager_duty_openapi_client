# PagerDutyOpenapiClient::CreateBusinessServiceRequestBusinessService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Business Service. | [optional] |
| **description** | **String** | The description of the Business Service. | [optional] |
| **point_of_contact** | **String** | The owner of the Business Service. | [optional] |
| **team** | [**Team1**](Team1.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateBusinessServiceRequestBusinessService.new(
  name: null,
  description: null,
  point_of_contact: null,
  team: null
)
```

