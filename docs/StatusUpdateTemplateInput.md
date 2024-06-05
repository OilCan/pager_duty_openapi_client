# PagerDutyOpenapiClient::StatusUpdateTemplateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | The incident id to render the template for | [optional] |
| **status_update** | [**StatusUpdateTemplateInputStatusUpdate**](StatusUpdateTemplateInputStatusUpdate.md) |  | [optional] |
| **external** | **Object** | An optional object collection that can be referenced in the template. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusUpdateTemplateInput.new(
  incident_id: null,
  status_update: null,
  external: null
)
```

