# PagerDutyOpenapiClient::UpdateOrchPathGlobal200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orchestration_path** | [**OrchestrationGlobalAllOfOrchestrationPath1**](OrchestrationGlobalAllOfOrchestrationPath1.md) |  |  |
| **warnings** | [**Array&lt;UpdateOrchPathGlobal200ResponseAllOfWarningsInner&gt;**](UpdateOrchPathGlobal200ResponseAllOfWarningsInner.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateOrchPathGlobal200Response.new(
  orchestration_path: null,
  warnings: null
)
```

