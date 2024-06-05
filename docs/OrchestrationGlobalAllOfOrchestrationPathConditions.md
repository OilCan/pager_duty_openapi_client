# PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPathConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** | A PCL condition string | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPathConditions.new(
  expression: event.summary matches part &#39;my service error&#39;
)
```

