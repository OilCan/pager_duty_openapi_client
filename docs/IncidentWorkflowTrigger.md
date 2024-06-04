# OpenapiClient::IncidentWorkflowTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **trigger_type_name** | **String** | Human readable name for the trigger type | [optional][readonly] |
| **trigger_type** | **String** |  | [optional] |
| **condition** | **String** | A PCL condition string.  If specified, the trigger will execute when the condition is met on an incident.  If unspecified, the trigger will execute on incident creation.  Required if trigger_type is “conditional”, not allowed if trigger_type is “manual”.  | [optional] |
| **trigger_url** | **String** |  | [optional][readonly] |
| **workflow** | [**IncidentWorkflowTriggerAllOfWorkflow**](IncidentWorkflowTriggerAllOfWorkflow.md) |  | [optional] |
| **services** | [**Array&lt;IncidentWorkflowTriggerAllOfServices&gt;**](IncidentWorkflowTriggerAllOfServices.md) | An optional array of Services associated with this workflow. Incidents in any of the listed Services are eligible to fire this Trigger | [optional] |
| **is_subscribed_to_all_services** | **Boolean** | Indicates that the Trigger should be associated with All Services | [optional] |
| **permissions** | [**IncidentWorkflowTriggerAllOfPermissions**](IncidentWorkflowTriggerAllOfPermissions.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowTrigger.new(
  type: null,
  trigger_type_name: null,
  trigger_type: null,
  condition: null,
  trigger_url: null,
  workflow: null,
  services: null,
  is_subscribed_to_all_services: null,
  permissions: null
)
```

