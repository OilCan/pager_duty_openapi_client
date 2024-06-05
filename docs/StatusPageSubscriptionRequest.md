# PagerDutyOpenapiClient::StatusPageSubscriptionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | The channel of the Subscription. |  |
| **contact** | **String** | The subscriber&#39;s contact - email address or webhook URL. |  |
| **status_page** | [**StatusPageSubscriptionRequestStatusPage**](StatusPageSubscriptionRequestStatusPage.md) |  |  |
| **subscribable_object** | [**SubscribableObject**](SubscribableObject.md) |  |  |
| **type** | **String** | A string that determines the schema of the object. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPageSubscriptionRequest.new(
  channel: null,
  contact: null,
  status_page: null,
  subscribable_object: null,
  type: null
)
```

