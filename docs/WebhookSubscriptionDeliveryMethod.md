# PagerDutyOpenapiClient::WebhookSubscriptionDeliveryMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **secret** | **String** | The secret used to sign webhook payloads. Only provided on the initial create response. | [optional][readonly] |
| **temporarily_disabled** | **Boolean** | Whether or not this webhook subscription is temporarily disabled. Becomes &#x60;true&#x60; if the delivery method URL is repeatedly rejected by the server. | [optional] |
| **type** | **String** | Indicates the type of the delivery method. | [default to &#39;http_delivery_method&#39;] |
| **url** | **String** | The destination URL for webhook delivery. |  |
| **custom_headers** | **Array&lt;String&gt;** | Optional headers to be set on this webhook subscription when sent. The header values are redacted in GET requests, but are not redacted on the webhook when delivered to the webhook&#39;s endpoint. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhookSubscriptionDeliveryMethod.new(
  id: null,
  secret: null,
  temporarily_disabled: null,
  type: null,
  url: null,
  custom_headers: null
)
```

