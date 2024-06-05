# PagerDutyOpenapiClient::RenderedTemplateWarnings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_subject** | **Array&lt;String&gt;** | List of warnings for email_subject | [optional] |
| **email_body** | **Array&lt;String&gt;** | List of warnings for email_body | [optional] |
| **message** | **Array&lt;String&gt;** | List of warnings for message field | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::RenderedTemplateWarnings.new(
  email_subject: null,
  email_body: null,
  message: null
)
```

