# PagerDutyOpenapiClient::WebhookV2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Array&lt;WebhookIncidentAction&gt;**](WebhookIncidentAction.md) | An array of webhook messages. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhookV2Request.new(
  messages: null
)
```

