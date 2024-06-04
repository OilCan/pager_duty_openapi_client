# OpenapiClient::AutomationActionsScriptActionWithTeams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **action_type** | [**Schema**](Schema.md) |  |  |
| **action_classification** | [**AutomationActionsActionClassificationEnum**](AutomationActionsActionClassificationEnum.md) |  | [optional] |
| **runner** | **String** |  | [optional] |
| **runner_type** | [**AutomationActionsRunnerTypeEnum**](AutomationActionsRunnerTypeEnum.md) |  | [optional] |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) |  | [optional] |
| **privileges** | [**AutomationActionsUserPermissions**](AutomationActionsUserPermissions.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **creation_time** | **Time** | The date/time |  |
| **modify_time** | **Time** | The date/time |  |
| **last_run** | **Time** | The date/time | [optional] |
| **last_run_by** | [**AutomationActionsAbstractActionAllOfLastRunBy**](AutomationActionsAbstractActionAllOfLastRunBy.md) |  | [optional] |
| **action_data_reference** | [**AutomationActionsScriptActionDataReference**](AutomationActionsScriptActionDataReference.md) |  |  |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsScriptActionWithTeams.new(
  name: Restart apache,
  description: Restarts apache on the us-west-2-shopping-cart host,
  action_type: null,
  action_classification: null,
  runner: null,
  runner_type: null,
  services: null,
  privileges: null,
  metadata: null,
  creation_time: null,
  modify_time: null,
  last_run: null,
  last_run_by: null,
  action_data_reference: null,
  teams: null
)
```

