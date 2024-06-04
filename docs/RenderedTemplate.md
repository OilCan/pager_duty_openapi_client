# OpenapiClient::RenderedTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templated_fields** | [**RenderedTemplateTemplatedFields**](RenderedTemplateTemplatedFields.md) |  | [optional] |
| **warnings** | [**RenderedTemplateWarnings**](RenderedTemplateWarnings.md) |  | [optional] |
| **errors** | **Array&lt;String&gt;** | List of errors | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RenderedTemplate.new(
  templated_fields: null,
  warnings: null,
  errors: null
)
```

