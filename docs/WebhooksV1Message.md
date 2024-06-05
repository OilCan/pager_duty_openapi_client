# PagerDutyOpenapiClient::WebhooksV1Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Uniquely identifies this outgoing webhook message; can be used for idempotency when processing the messages. | [optional][readonly] |
| **type** | **String** | The type of action being reported by this message. | [optional][readonly] |
| **created_on** | **Time** | The date/time when the incident changed state. | [optional][readonly] |
| **data** | [**WebhooksV1MessageData**](WebhooksV1MessageData.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhooksV1Message.new(
  id: null,
  type: null,
  created_on: null,
  data: null
)
```

