# PagerDutyOpenapiClient::StatusPageStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a Status entry. | [optional][readonly] |
| **_self** | **String** | The API resource URL of the Status. | [optional][readonly] |
| **description** | **String** | The description is a human-readable text that describes the Status level. | [optional] |
| **post_type** | **String** | The type of the Post. | [optional] |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  | [optional] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Status. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPageStatus.new(
  id: null,
  _self: null,
  description: null,
  post_type: null,
  status_page: null,
  type: null
)
```

