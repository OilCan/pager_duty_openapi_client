# PagerDutyOpenapiClient::EmailContactMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **send_short_email** | **Boolean** | Send an abbreviated email message instead of the standard email output. Useful for email-to-SMS gateways and email based pagers. | [optional][default to false] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EmailContactMethod.new(
  type: null,
  send_short_email: null
)
```

