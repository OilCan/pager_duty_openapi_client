# PagerDutyOpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The identifier of the Action to execute |  |
| **description** | **String** | Description of the Action | [optional][readonly] |
| **inputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner.md) | An unordered list of standard inputs used to configure the Action to execute |  |
| **outputs** | [**Array&lt;IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner&gt;**](IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfigurationOutputsInner.md) | An unordered list of outputs this action produces | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInlineStepsInputsInnerValueStepsInnerAllOfActionConfiguration.new(
  action_id: null,
  description: null,
  inputs: null,
  outputs: null
)
```

