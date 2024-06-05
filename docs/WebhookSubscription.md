# PagerDutyOpenapiClient::WebhookSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **type** | **String** | The type indicating the schema of the object. | [default to &#39;webhook_subscription&#39;] |
| **active** | **Boolean** | Determines whether this subscription will produce webhook events. | [optional][default to true] |
| **delivery_method** | [**WebhookSubscriptionDeliveryMethod**](WebhookSubscriptionDeliveryMethod.md) |  |  |
| **description** | **String** | A short description of the webhook subscription. | [optional] |
| **events** | **Array&lt;String&gt;** | The set of outbound event types the webhook will receive. |  |
| **filter** | [**WebhookSubscriptionFilter**](WebhookSubscriptionFilter.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhookSubscription.new(
  id: null,
  type: null,
  active: null,
  delivery_method: null,
  description: null,
  events: null,
  filter: null
)
```

