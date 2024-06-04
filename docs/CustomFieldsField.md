# OpenapiClient::CustomFieldsField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The human-readable name of the field. This must be unique across an account. |  |
| **description** | **String** | A description of the data this field contains. | [optional] |
| **default_value** | [**CustomFieldsEditableFieldDefaultValue**](CustomFieldsEditableFieldDefaultValue.md) |  | [optional] |
| **id** | **String** | The ID of the resource. | [readonly] |
| **name** | **String** | The name of the field. May include ASCII characters, specifically lowercase letters, digits, and underescores. The &#x60;name&#x60; for a Field must be unique. |  |
| **summary** | **String** | A short-form, server-generated string that provides succinct, important information about an object suitable for primary labeling of an entity in a client. In many cases, this will be identical to &#x60;name&#x60;, though it is not intended to be an identifier. | [readonly] |
| **_self** | **String** | The API show URL at which the object is accessible | [readonly] |
| **type** | **String** |  | [readonly] |
| **created_at** | **Time** | The date/time the object was created at. | [readonly] |
| **updated_at** | **Time** | The date/time the object was last updated. | [readonly] |
| **data_type** | **String** | The kind of data the custom field is allowed to contain. |  |
| **field_type** | **String** | The type of data this field contains. In combination with the &#x60;data_type&#x60; field. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomFieldsField.new(
  display_name: null,
  description: null,
  default_value: null,
  id: null,
  name: null,
  summary: null,
  _self: null,
  type: null,
  created_at: null,
  updated_at: null,
  data_type: null,
  field_type: null
)
```

