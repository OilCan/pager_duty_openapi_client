# OpenapiClient::RenderedTemplateWarnings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_subject** | **Array&lt;String&gt;** | List of warnings for email_subject | [optional] |
| **email_body** | **Array&lt;String&gt;** | List of warnings for email_body | [optional] |
| **message** | **Array&lt;String&gt;** | List of warnings for message field | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RenderedTemplateWarnings.new(
  email_subject: null,
  email_body: null,
  message: null
)
```

