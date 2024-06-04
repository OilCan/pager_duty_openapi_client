# OpenapiClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_url** | **String** | The url endpoint the webhook payload is sent to. | [optional] |
| **name** | **String** | The name of the webhook. | [optional] |
| **webhook_object** | [**WebhookObject**](WebhookObject.md) |  | [optional] |
| **config** | **Object** | The object that contains webhook configuration values depending on the webhook type specification. | [optional] |
| **outbound_integration** | [**OutboundIntegrationReference**](OutboundIntegrationReference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Webhook.new(
  endpoint_url: null,
  name: null,
  webhook_object: null,
  config: null,
  outbound_integration: null
)
```

