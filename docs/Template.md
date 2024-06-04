# OpenapiClient::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template (&#x60;status_update&#x60; is the only supported template at this time) | [optional] |
| **name** | **String** | The name of the template | [optional] |
| **description** | **String** | Description of the template | [optional] |
| **templated_fields** | [**EditableTemplateTemplatedFields**](EditableTemplateTemplatedFields.md) |  | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **summary** | **String** | A short-form, server-generated string that provides succinct, important information about an object suitable for primary labeling of an entity in a client. In many cases, this will be identical to &#x60;name&#x60;, though it is not intended to be an identifier. | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |
| **type** | **String** |  | [optional] |
| **created_by** | [**TemplateAllOfCreatedBy**](TemplateAllOfCreatedBy.md) |  | [optional] |
| **updated_by** | [**TemplateAllOfUpdatedBy**](TemplateAllOfUpdatedBy.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Template.new(
  template_type: null,
  name: null,
  description: null,
  templated_fields: null,
  id: null,
  summary: null,
  _self: null,
  html_url: null,
  type: null,
  created_by: null,
  updated_by: null
)
```

