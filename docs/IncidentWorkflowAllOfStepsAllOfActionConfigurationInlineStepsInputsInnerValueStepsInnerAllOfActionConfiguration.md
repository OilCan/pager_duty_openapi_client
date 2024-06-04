# OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The identifier of the Action to execute |  |
| **description** | **String** | Description of the Action | [optional][readonly] |
| **inputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner.md) | An unordered list of standard inputs used to configure the Action to execute |  |
| **outputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner.md) | An unordered list of outputs this action produces | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfiguration.new(
  action_id: null,
  description: null,
  inputs: null,
  outputs: null
)
```

