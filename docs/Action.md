# OpenapiClient::Action

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Uniquely identifies this outgoing webhook message; can be used for idempotency when processing the messages. | [optional][readonly] |
| **triggered_at** | **Time** | The date/time when this message was was sent. | [optional][readonly] |
| **webhook** | [**Webhook**](Webhook.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Action.new(
  id: null,
  triggered_at: null,
  webhook: null
)
```

