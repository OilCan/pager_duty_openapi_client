# PagerDutyOpenapiClient::ConvertServiceEventRulesToEventOrchestration200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_status** | **String** | Did PagerDuty successfully create equivalent Event Orchestration rules | [optional][readonly] |
| **converted_to** | **String** | the API URL at which the newly created Event Orchestration rules are accessible | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ConvertServiceEventRulesToEventOrchestration200Response.new(
  convert_status: null,
  converted_to: null
)
```

