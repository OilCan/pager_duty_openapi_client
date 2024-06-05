# PagerDutyOpenapiClient::EditableTemplateTemplatedFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_subject** | **String** | The subject of the e-mail | [optional] |
| **email_body** | **String** | The HTML body of the e-mail message | [optional] |
| **message** | **String** | The short-message of the template (SMS, Push notification, Slack, etc) | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EditableTemplateTemplatedFields.new(
  email_subject: null,
  email_body: null,
  message: null
)
```

