# PagerDutyOpenapiClient::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **type** | **String** | The type of notification. | [optional][readonly] |
| **started_at** | **Time** | The time at which the notification was sent | [optional][readonly] |
| **address** | **String** | The address where the notification was sent. This will be null for notification type &#x60;push_notification&#x60;. | [optional][readonly] |
| **user** | [**UserReference**](UserReference.md) |  | [optional] |
| **conference_address** | **String** | The address of the conference bridge | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Notification.new(
  id: null,
  type: null,
  started_at: null,
  address: null,
  user: null,
  conference_address: null,
  status: null
)
```

