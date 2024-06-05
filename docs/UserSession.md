# PagerDutyOpenapiClient::UserSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **user_id** | **String** |  | [readonly] |
| **created_at** | **Time** | The date/time the user session was first created. | [readonly] |
| **type** | **String** | The type of the session | [readonly] |
| **summary** | **String** | The summary of the session | [readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UserSession.new(
  id: null,
  user_id: null,
  created_at: null,
  type: null,
  summary: null
)
```

