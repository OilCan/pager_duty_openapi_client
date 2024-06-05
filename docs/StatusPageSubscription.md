# PagerDutyOpenapiClient::StatusPageSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | The channel of the subscription. | [optional] |
| **contact** | **String** | The subscriber&#39;s contact - email address, webhook URL, etc... | [optional] |
| **id** | **String** | The ID of the Subscription. | [optional] |
| **_self** | **String** | The path in which the Subscription resource is accessible. | [optional] |
| **status** | **String** | The status of the Subscription. | [optional] |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  | [optional] |
| **subscribable_object** | [**SubscribableObject1**](SubscribableObject1.md) |  | [optional] |
| **type** | **String** | A string that determines the schema of the object. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPageSubscription.new(
  channel: null,
  contact: null,
  id: null,
  _self: null,
  status: null,
  status_page: null,
  subscribable_object: null,
  type: null
)
```

