# PagerDutyOpenapiClient::CreateAutomationActionsRunner201ResponseRunner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runner_type** | [**AutomationActionsRunnerTypeEnum**](AutomationActionsRunnerTypeEnum.md) |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **last_seen** | **Time** |  | [optional] |
| **status** | [**AutomationActionsRunnerStatusEnum**](AutomationActionsRunnerStatusEnum.md) |  |  |
| **creation_time** | **Time** |  |  |
| **runbook_base_uri** | **String** | The base URI of the Runbook server to connect to. May only contain alphanumeric characters, periods, underscores and dashes. Specified as the subdomain portion of an RBA host, as in &lt;runbook_base_uri&gt;.runbook.pagerduty.cloud | [optional] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | The list of teams associated with the Runner | [optional][readonly] |
| **privileges** | [**AutomationActionsUserPermissions**](AutomationActionsUserPermissions.md) |  | [optional] |
| **associated_actions** | [**AutomationActionsRunnerAllOfAssociatedActions**](AutomationActionsRunnerAllOfAssociatedActions.md) |  | [optional] |
| **metadata** | **Object** | Additional metadata | [optional] |
| **secret** | **String** | Secret used for authentication of sidecar runner_types | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateAutomationActionsRunner201ResponseRunner.new(
  runner_type: null,
  name: us-west-2 prod runner,
  description: us-west-2 runner provisioned in the production environment by the SRE team,
  last_seen: null,
  status: null,
  creation_time: null,
  runbook_base_uri: subdomain,
  teams: null,
  privileges: null,
  associated_actions: null,
  metadata: null,
  secret: null
)
```

