# OpenapiClient::ConvertServiceEventRulesToEventOrchestration400ResponseErrorErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The ID of the Service Event Rule that couldn&#39;t be successfully converted. | [optional][readonly] |
| **position** | **Integer** | The position of the Service Event Rule that couldn&#39;t be successfully converted. | [optional][readonly] |
| **messages** | **Array&lt;String&gt;** | Human friendly explanations of why this Event Rule couldn&#39;t be converted into an equivalent Event Orchestration Rule. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConvertServiceEventRulesToEventOrchestration400ResponseErrorErrorsInner.new(
  rule_id: null,
  position: null,
  messages: null
)
```

