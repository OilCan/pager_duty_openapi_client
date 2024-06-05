# PagerDutyOpenapiClient::CustomFieldsFieldOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. | [readonly] |
| **type** | **String** |  |  |
| **created_at** | **Time** | The date/time the object was created at. | [readonly] |
| **updated_at** | **Time** | The date/time the object was last updated. | [readonly] |
| **data** | [**CustomFieldsEditableFieldOptionData**](CustomFieldsEditableFieldOptionData.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CustomFieldsFieldOption.new(
  id: null,
  type: null,
  created_at: null,
  updated_at: null,
  data: null
)
```

