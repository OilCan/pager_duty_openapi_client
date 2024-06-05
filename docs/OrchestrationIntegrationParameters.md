# PagerDutyOpenapiClient::OrchestrationIntegrationParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_key** | **String** | Routing Key used to send Events to this Orchestration | [optional][readonly] |
| **type** | **String** |  | [optional][readonly][default to &#39;global&#39;] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationIntegrationParameters.new(
  routing_key: null,
  type: null
)
```

