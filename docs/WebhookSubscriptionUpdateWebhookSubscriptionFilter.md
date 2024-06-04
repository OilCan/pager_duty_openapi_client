# OpenapiClient::WebhookSubscriptionUpdateWebhookSubscriptionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the object being used as the filter.  This field is required for all filter types except account_reference. | [optional] |
| **type** | **String** | The type of object being used as the filter. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookSubscriptionUpdateWebhookSubscriptionFilter.new(
  id: null,
  type: null
)
```

