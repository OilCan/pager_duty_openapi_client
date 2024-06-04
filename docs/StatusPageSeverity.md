# OpenapiClient::StatusPageSeverity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a Severity entry. | [optional][readonly] |
| **_self** | **String** | The API resource URL of the Severity. | [optional][readonly] |
| **description** | **String** | The description is a human-readable text that describes the Severity level. | [optional] |
| **post_type** | **String** | The type of the Post. | [optional] |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  | [optional] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Severity. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatusPageSeverity.new(
  id: null,
  _self: null,
  description: null,
  post_type: null,
  status_page: null,
  type: null
)
```

