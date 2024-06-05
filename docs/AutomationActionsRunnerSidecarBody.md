# PagerDutyOpenapiClient::AutomationActionsRunnerSidecarBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AutomationActionsRunnerSidecarBody.new(
  name: us-west-2 prod runner,
  description: us-west-2 runner provisioned in the production environment by the SRE team
)
```

