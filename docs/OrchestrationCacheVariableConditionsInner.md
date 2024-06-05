# PagerDutyOpenapiClient::OrchestrationCacheVariableConditionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** | A PCL condition string.  Note: The &#x60;trigger_count&#x60; and &#x60;resetting_trigger_count&#x60; operators are unsupported for Cache Variables  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationCacheVariableConditionsInner.new(
  expression: event.summary matches part &#39;my service error&#39;
)
```

