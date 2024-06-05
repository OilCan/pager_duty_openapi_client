# PagerDutyOpenapiClient::NotificationSubscriberWithContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | The ID of the entity being subscribed | [optional] |
| **subscriber_type** | **String** | The type of the entity being subscribed | [optional] |
| **has_indirect_subscription** | **Boolean** | If this subcriber has an indirect subscription to this incident via another object | [optional] |
| **subscribed_via** | [**Array&lt;NotificationSubscriberWithContextSubscribedViaInner&gt;**](NotificationSubscriberWithContextSubscribedViaInner.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::NotificationSubscriberWithContext.new(
  subscriber_id: null,
  subscriber_type: null,
  has_indirect_subscription: null,
  subscribed_via: null
)
```

