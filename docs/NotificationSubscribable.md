# PagerDutyOpenapiClient::NotificationSubscribable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscribable_id** | **String** | The ID of the entity to subscribe to | [optional] |
| **subscribable_type** | **String** | The type of the entity being subscribed to | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::NotificationSubscribable.new(
  subscribable_id: null,
  subscribable_type: null
)
```

