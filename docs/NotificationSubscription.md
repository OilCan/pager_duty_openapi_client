# PagerDutyOpenapiClient::NotificationSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | The ID of the entity being subscribed | [optional] |
| **subscriber_type** | **String** | The type of the entity being subscribed | [optional] |
| **subscribable_id** | **String** | The ID of the entity being subscribed to | [optional] |
| **subscribable_type** | **String** | The type of the entity being subscribed to | [optional] |
| **account_id** | **String** | The ID of the account belonging to the subscriber entity | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::NotificationSubscription.new(
  subscriber_id: null,
  subscriber_type: null,
  subscribable_id: null,
  subscribable_type: null,
  account_id: null
)
```

