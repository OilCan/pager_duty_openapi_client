# OpenapiClient::CustomFieldsFieldValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the field. |  |
| **name** | **String** | The name of the field. May include ASCII characters, specifically lowercase letters, digits, and underescores. The &#x60;name&#x60; for a Field must be unique. |  |
| **type** | **String** | Determines the type of the reference. |  |
| **display_name** | **String** | The human-readable name of the field. This must be unique across an account. |  |
| **field_type** | **String** | The type of data this field contains. In combination with the &#x60;data_type&#x60; field. |  |
| **data_type** | **String** | The kind of data the custom field is allowed to contain. |  |
| **description** | **String** | A description of the data this field contains. |  |
| **value** | [**CustomFieldsFieldValueValue**](CustomFieldsFieldValueValue.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomFieldsFieldValue.new(
  id: null,
  name: null,
  type: null,
  display_name: null,
  field_type: null,
  data_type: null,
  description: null,
  value: null
)
```

