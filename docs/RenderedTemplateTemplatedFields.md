# PagerDutyOpenapiClient::RenderedTemplateTemplatedFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_subject** | **String** | The rendered e-mail subject | [optional] |
| **email_body** | **String** | The rendered e-mail body | [optional] |
| **message** | **String** | The rendered short message (SMS, Push, Slack, etc) | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::RenderedTemplateTemplatedFields.new(
  email_subject: null,
  email_body: null,
  message: null
)
```

