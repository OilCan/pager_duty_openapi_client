# PagerDutyOpenapiClient::UpdateOrchPathRouter200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orchestration_path** | [**OrchestrationRouterAllOfOrchestrationPath**](OrchestrationRouterAllOfOrchestrationPath.md) |  | [optional] |
| **warnings** | [**Array&lt;UpdateOrchPathRouter200ResponseAllOfWarningsInner&gt;**](UpdateOrchPathRouter200ResponseAllOfWarningsInner.md) | List of applicable warnings messages for each rule using a feature not available on your account plan. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateOrchPathRouter200Response.new(
  orchestration_path: null,
  warnings: null
)
```

