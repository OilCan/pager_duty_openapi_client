# OpenapiClient::AutomationActionsInvocationAllOfActionSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **action_type** | [**Schema**](Schema.md) |  |  |
| **action_data_reference** | [**AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference**](AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsInvocationAllOfActionSnapshot.new(
  name: Restart apache,
  action_type: null,
  action_data_reference: null
)
```

