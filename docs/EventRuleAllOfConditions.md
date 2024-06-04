# OpenapiClient::EventRuleAllOfConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | **String** | Operator to combine sub-conditions. |  |
| **subconditions** | [**Array&lt;EventRuleAllOfConditionsSubconditions&gt;**](EventRuleAllOfConditionsSubconditions.md) | Array of sub-conditions. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventRuleAllOfConditions.new(
  operator: null,
  subconditions: null
)
```

