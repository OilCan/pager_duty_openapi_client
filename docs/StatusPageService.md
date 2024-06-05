# PagerDutyOpenapiClient::StatusPageService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a Service entry. | [optional][readonly] |
| **_self** | **String** | The API resource URL of the Service. | [optional][readonly] |
| **name** | **String** | The name of the Service. | [optional] |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  | [optional] |
| **business_service** | [**StatusPageServiceBusinessService**](StatusPageServiceBusinessService.md) |  | [optional] |
| **type** | **String** | A string that determines the schema of the object. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPageService.new(
  id: null,
  _self: null,
  name: null,
  status_page: null,
  business_service: null,
  type: null
)
```

