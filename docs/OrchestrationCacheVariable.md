# OpenapiClient::OrchestrationCacheVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** | The name of the Cache Variable |  |
| **configuration** | [**OrchestrationCacheVariableConfiguration**](OrchestrationCacheVariableConfiguration.md) |  |  |
| **conditions** | [**Array&lt;OrchestrationCacheVariableConditionsInner&gt;**](OrchestrationCacheVariableConditionsInner.md) | Each of these conditions is evaluated to check if an event matches this rule. The rule is considered a match if **any** of these conditions match. | [optional] |
| **disabled** | **Boolean** | Indicates whether the Cache Variable is disabled and would therefore not be evaluated. | [optional] |
| **created_at** | **Time** | The date/time the object was created. | [optional][readonly] |
| **created_by** | [**OrchestrationCacheVariableCreatedBy**](OrchestrationCacheVariableCreatedBy.md) |  | [optional] |
| **updated_at** | **Time** | The date/time the object was last updated. | [optional][readonly] |
| **updated_by** | [**OrchestrationCacheVariableUpdatedBy**](OrchestrationCacheVariableUpdatedBy.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationCacheVariable.new(
  id: null,
  name: null,
  configuration: null,
  conditions: null,
  disabled: null,
  created_at: null,
  created_by: null,
  updated_at: null,
  updated_by: null
)
```

