# PagerDutyOpenapiClient::WebhookSubscriptionUpdateWebhookSubscriptionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the object being used as the filter.  This field is required for all filter types except account_reference. | [optional] |
| **type** | **String** | The type of object being used as the filter. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhookSubscriptionUpdateWebhookSubscriptionFilter.new(
  id: null,
  type: null
)
```

