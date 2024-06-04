# OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for this Input. Input names are unique per action and should be used to find a specific Input. |  |
| **parameter_type** | **String** | The data type of this Input | [optional][readonly] |
| **value** | **String** | The configured value of the Input |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowAllOfStepsAllOfActionConfigurationInputsInner.new(
  name: null,
  parameter_type: null,
  value: null
)
```

