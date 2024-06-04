# OpenapiClient::IncidentWorkflowTriggerAllOfWorkflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** | A string that determines the schema of the object. This must be the standard name for the entity, suffixed by &#x60;_reference&#x60; if the object is a reference. | [optional][readonly] |
| **name** | **String** | A descriptive name for the Incident Workflow | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowTriggerAllOfWorkflow.new(
  id: null,
  type: null,
  name: null,
  _self: null,
  html_url: null
)
```

