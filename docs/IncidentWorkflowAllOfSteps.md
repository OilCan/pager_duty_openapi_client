# OpenapiClient::IncidentWorkflowAllOfSteps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **name** | **String** | A descriptive name for the Step |  |
| **description** | **String** | A description of the action performed by the Step | [optional][readonly] |
| **action_configuration** | [**IncidentWorkflowAllOfStepsAllOfActionConfiguration**](IncidentWorkflowAllOfStepsAllOfActionConfiguration.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowAllOfSteps.new(
  type: null,
  name: null,
  description: null,
  action_configuration: null
)
```

