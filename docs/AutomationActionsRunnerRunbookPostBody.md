# PagerDutyOpenapiClient::AutomationActionsRunnerRunbookPostBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runner_type** | [**AutomationActionsRunnerTypeEnum**](AutomationActionsRunnerTypeEnum.md) |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **runbook_base_uri** | **String** | The base URI of the Runbook server to connect to. May only contain alphanumeric characters, periods, underscores and dashes. Specified as the subdomain portion of an RBA host, as in &lt;runbook_base_uri&gt;.runbook.pagerduty.cloud |  |
| **runbook_api_key** | **String** | The API key to connect to the Runbook server with. If omitted, the previously stored value will remain unchanged |  |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | The list of teams associated with the Runner | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AutomationActionsRunnerRunbookPostBody.new(
  runner_type: null,
  name: us-west-2 prod runner,
  description: us-west-2 runner provisioned in the production environment by the SRE team,
  runbook_base_uri: subdomain,
  runbook_api_key: null,
  teams: null
)
```

