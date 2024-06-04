# OpenapiClient::IncidentWorkflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **name** | **String** | A descriptive name for the Incident Workflow | [optional] |
| **description** | **String** | A description of what the Incident Workflow does | [optional] |
| **created_at** | **Time** | The timestamp this Incident Workflow was created | [optional][readonly] |
| **team** | [**IncidentWorkflowAllOfTeam**](IncidentWorkflowAllOfTeam.md) |  | [optional] |
| **steps** | [**Array&lt;IncidentWorkflowAllOfSteps&gt;**](IncidentWorkflowAllOfSteps.md) | The ordered list of steps that execute sequentially as part of the workflow | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflow.new(
  type: null,
  name: null,
  description: null,
  created_at: null,
  team: null,
  steps: null
)
```

