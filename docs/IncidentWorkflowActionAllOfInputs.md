# OpenapiClient::IncidentWorkflowActionAllOfInputs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Input | [optional] |
| **description** | **String** | Describes what the purpose of the Input | [optional] |
| **type** | **String** | The data type of this Input | [optional] |
| **default_value** | **String** | Serialized form of the default value that the input will take | [optional] |
| **is_required** | **Boolean** | Whether a value must be provided for this input | [optional] |
| **is_hidden** | **Boolean** | If true then this input will not be shown to users when configuring this action | [optional] |
| **advanced** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **connection_type_id** | **String** | The configured value of the Input | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowActionAllOfInputs.new(
  name: null,
  description: null,
  type: null,
  default_value: null,
  is_required: null,
  is_hidden: null,
  advanced: null,
  metadata: null,
  connection_type_id: null
)
```

