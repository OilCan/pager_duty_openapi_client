# OpenapiClient::IncidentWorkflowAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **domain_name** | **String** | The Verified Domain of the account that created the action | [optional] |
| **package_name** | **String** | The Package Name corresponding to the broad category of the Action | [optional] |
| **function_name** | **String** | The Function Name describing the specific functionality of the Action | [optional] |
| **version** | **Float** | The version of the Action | [optional] |
| **name** | **String** | The descriptive name of the Action | [optional] |
| **description** | **String** | A description of the Action | [optional] |
| **action_type** | **String** | The type of Action | [optional] |
| **trigger_type** | **String** | The type of Trigger this Action is, if action_type is trigger | [optional] |
| **tags** | **Array&lt;String&gt;** | A set of tags to apply to this action. | [optional] |
| **search_keywords** | **Array&lt;String&gt;** | A set of search keywords to apply to this action. | [optional] |
| **metadata** | **String** | JSON-formatted string of metadata pertaining to the Action | [optional] |
| **created_at** | **Time** | The date-time at which this Action was created | [optional] |
| **created_by_user_id** | **String** | The obfuscated Id of the User who created this Action | [optional] |
| **inputs** | [**Array&lt;IncidentWorkflowActionAllOfInputs&gt;**](IncidentWorkflowActionAllOfInputs.md) | Inputs whose values used during Action execution | [optional] |
| **outputs** | [**Array&lt;IncidentWorkflowActionAllOfOutputs&gt;**](IncidentWorkflowActionAllOfOutputs.md) | Outputs whose values set during Action execution | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowAction.new(
  type: null,
  domain_name: null,
  package_name: null,
  function_name: null,
  version: null,
  name: null,
  description: null,
  action_type: null,
  trigger_type: null,
  tags: null,
  search_keywords: null,
  metadata: null,
  created_at: null,
  created_by_user_id: null,
  inputs: null,
  outputs: null
)
```

