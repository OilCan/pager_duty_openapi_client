# OpenapiClient::WebhookSubscriptionUpdateWebhookSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A short description of the webhook subscription. | [optional] |
| **events** | **Array&lt;String&gt;** | The set of outbound event types the subscription will receive. | [optional] |
| **filter** | [**WebhookSubscriptionUpdateWebhookSubscriptionFilter**](WebhookSubscriptionUpdateWebhookSubscriptionFilter.md) |  | [optional] |
| **active** | **Boolean** | If true, a webhook will be sent. True is the default state. If false, a webhook will not be sent. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookSubscriptionUpdateWebhookSubscription.new(
  description: null,
  events: null,
  filter: null,
  active: null
)
```

