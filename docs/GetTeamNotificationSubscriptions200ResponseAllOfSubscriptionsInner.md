# PagerDutyOpenapiClient::GetTeamNotificationSubscriptions200ResponseAllOfSubscriptionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription** | [**NotificationSubscription**](NotificationSubscription.md) |  | [optional] |
| **subscribable_name** | **String** | The name of the subscribable | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetTeamNotificationSubscriptions200ResponseAllOfSubscriptionsInner.new(
  subscription: null,
  subscribable_name: null
)
```

