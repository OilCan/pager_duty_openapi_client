# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the rule | [optional][readonly] |
| **label** | **String** | A description of this rule&#39;s purpose. | [optional] |
| **conditions** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPathConditions&gt;**](OrchestrationGlobalAllOfOrchestrationPathConditions.md) | Each of these conditions is evaluated to check if an event matches this rule. The rule is considered a match if **any** of these conditions match. | [optional] |
| **actions** | **Object** | When an event matches this rule, these are the actions that will be taken to change the resulting alert and incident. | [optional] |
| **disabled** | **Boolean** | Indicates whether the rule is disabled and would therefore not be evaluated. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPathRules.new(
  id: null,
  label: null,
  conditions: null,
  actions: null,
  disabled: null
)
```

