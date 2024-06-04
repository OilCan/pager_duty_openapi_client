# OpenapiClient::IncidentWorkflowTriggerAllOfPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restricted** | **Boolean** | If true, indicates that the Trigger can only be started by authorized Users. If false, any user can start this Trigger. Applicable only to manual Triggers. | [optional] |
| **team_id** | **String** | The ID of the team whose members can manually start this Trigger. Required and allowed if and only if permissions.restricted is true. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentWorkflowTriggerAllOfPermissions.new(
  restricted: null,
  team_id: null
)
```

