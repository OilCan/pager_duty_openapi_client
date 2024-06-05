# PagerDutyOpenapiClient::EditableTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template (&#x60;status_update&#x60; is the only supported template at this time) | [optional] |
| **name** | **String** | The name of the template | [optional] |
| **description** | **String** | Description of the template | [optional] |
| **templated_fields** | [**EditableTemplateTemplatedFields**](EditableTemplateTemplatedFields.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EditableTemplate.new(
  template_type: null,
  name: null,
  description: null,
  templated_fields: null
)
```

