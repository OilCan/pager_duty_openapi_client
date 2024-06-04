# OpenapiClient::IncidentWorkflowInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **type** | **String** | A string that determines the schema of the object. This must be the standard name for the entity, suffixed by &#x60;_reference&#x60; if the object is a reference. | [optional][readonly] |
| **incident** | [**Reference**](Reference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowInstance.new(
  id: null,
  type: null,
  incident: null
)
```

