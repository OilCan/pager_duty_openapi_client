# PagerDutyOpenapiClient::CreateIncidentStatusUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The message to be posted as a status update. |  |
| **subject** | **String** | The subject to be sent for the custom html email status update. Required if sending custom html email. | [optional] |
| **html_message** | **String** | The html content to be sent for the custom html email status update. Required if sending custom html email. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateIncidentStatusUpdateRequest.new(
  message: null,
  subject: null,
  html_message: null
)
```

