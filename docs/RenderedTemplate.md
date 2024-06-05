# PagerDutyOpenapiClient::RenderedTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templated_fields** | [**RenderedTemplateTemplatedFields**](RenderedTemplateTemplatedFields.md) |  | [optional] |
| **warnings** | [**RenderedTemplateWarnings**](RenderedTemplateWarnings.md) |  | [optional] |
| **errors** | **Array&lt;String&gt;** | List of errors | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::RenderedTemplate.new(
  templated_fields: null,
  warnings: null,
  errors: null
)
```

