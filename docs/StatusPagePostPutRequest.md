# OpenapiClient::StatusPagePostPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Post. |  |
| **title** | **String** | The title given to a Post. |  |
| **post_type** | **String** | The type of the Post. |  |
| **starts_at** | **Time** | The date and time the Post intent becomes effective - only for maintenance post type. |  |
| **ends_at** | **Time** | The date and time the Post intent is concluded - only for maintenance post type. |  |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatusPagePostPutRequest.new(
  type: null,
  title: null,
  post_type: null,
  starts_at: null,
  ends_at: null,
  status_page: null
)
```

