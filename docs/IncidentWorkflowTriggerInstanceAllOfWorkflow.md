# OpenapiClient::IncidentWorkflowTriggerInstanceAllOfWorkflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional][readonly] |
| **type** | **String** | A string that determines the schema of the object. This must be the standard name for the entity, suffixed by &#x60;_reference&#x60; if the object is a reference. | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowTriggerInstanceAllOfWorkflow.new(
  id: null,
  name: null,
  type: null,
  _self: null,
  html_url: null
)
```

