# PagerDutyOpenapiClient::UpdateOrchPathService200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orchestration_path** | [**ServiceOrchestrationAllOfOrchestrationPath**](ServiceOrchestrationAllOfOrchestrationPath.md) |  | [optional] |
| **warnings** | [**Array&lt;UpdateOrchPathGlobal200ResponseAllOfWarningsInner&gt;**](UpdateOrchPathGlobal200ResponseAllOfWarningsInner.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateOrchPathService200Response.new(
  orchestration_path: null,
  warnings: null
)
```

