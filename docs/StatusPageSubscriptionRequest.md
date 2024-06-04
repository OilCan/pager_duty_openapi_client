# OpenapiClient::StatusPageSubscriptionRequest

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
require 'openapi_client'

instance = OpenapiClient::StatusPageSubscriptionRequest.new(
  channel: null,
  contact: null,
  status_page: null,
  subscribable_object: null,
  type: null
)
```

