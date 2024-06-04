# OpenapiClient::AutomationActionsRunnerSidecarPostBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runner_type** | [**AutomationActionsRunnerTypeEnum**](AutomationActionsRunnerTypeEnum.md) |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | The list of teams associated with the Runner | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsRunnerSidecarPostBody.new(
  runner_type: null,
  name: us-west-2 prod runner,
  description: us-west-2 runner provisioned in the production environment by the SRE team,
  teams: null
)
```

