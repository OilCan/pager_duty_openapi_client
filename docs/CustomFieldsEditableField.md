# PagerDutyOpenapiClient::CustomFieldsEditableField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The human-readable name of the field. This must be unique across an account. | [optional] |
| **description** | **String** | A description of the data this field contains. | [optional] |
| **default_value** | [**CustomFieldsEditableFieldDefaultValue**](CustomFieldsEditableFieldDefaultValue.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CustomFieldsEditableField.new(
  display_name: null,
  description: null,
  default_value: null
)
```

