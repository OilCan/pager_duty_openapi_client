# PagerDutyOpenapiClient::EventRuleAllOfConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | **String** | Operator to combine sub-conditions. |  |
| **subconditions** | [**Array&lt;EventRuleAllOfConditionsSubconditions&gt;**](EventRuleAllOfConditionsSubconditions.md) | Array of sub-conditions. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleAllOfConditions.new(
  operator: null,
  subconditions: null
)
```

