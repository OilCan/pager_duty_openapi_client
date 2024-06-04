# OpenapiClient::IncidentWorkflowActionInvocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **action_id** | **String** | Reference to the Action that was invoked | [optional] |
| **inputs** | [**Array&lt;IncidentWorkflowActionInvocationInputsInner&gt;**](IncidentWorkflowActionInvocationInputsInner.md) |  | [optional] |
| **outputs** | [**Array&lt;IncidentWorkflowActionInvocationOutputsInner&gt;**](IncidentWorkflowActionInvocationOutputsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowActionInvocation.new(
  id: null,
  type: null,
  action_id: null,
  inputs: null,
  outputs: null
)
```

