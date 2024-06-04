# OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The identifier of the Action to execute |  |
| **description** | **String** | Description of the Action | [optional][readonly] |
| **inputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner.md) | An unordered list of standard inputs used to configure the Action to execute |  |
| **inline_steps_inputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInner.md) | An unordered list of specialized inputs used to configure a workflow-within-a-workflow | [optional] |
| **outputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner.md) | An unordered list of outputs this action produces | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfiguration.new(
  action_id: null,
  description: null,
  inputs: null,
  inline_steps_inputs: null,
  outputs: null
)
```

