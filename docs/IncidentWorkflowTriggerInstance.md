# OpenapiClient::IncidentWorkflowTriggerInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **name** | **String** | A descriptive name for the Incident Workflow Instance | [optional] |
| **description** | **String** | A description of what the Incident Workflow does | [optional] |
| **status** | **String** | The current status of the Incident Workflow Instance | [optional] |
| **started_at** | **Time** | The timestamp this Incident Workflow started | [optional][readonly] |
| **ended_at** | **Time** | The timestamp this Incident Workflow ended | [optional][readonly] |
| **workflow** | [**IncidentWorkflowTriggerInstanceAllOfWorkflow**](IncidentWorkflowTriggerInstanceAllOfWorkflow.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowTriggerInstance.new(
  type: null,
  name: null,
  description: null,
  status: null,
  started_at: null,
  ended_at: null,
  workflow: null
)
```

