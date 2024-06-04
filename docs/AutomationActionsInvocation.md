# OpenapiClient::AutomationActionsInvocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_snapshot** | [**AutomationActionsInvocationAllOfActionSnapshot**](AutomationActionsInvocationAllOfActionSnapshot.md) |  |  |
| **runner_id** | **String** |  |  |
| **timing** | [**Array&lt;AutomationActionsInvocationAllOfTiming&gt;**](AutomationActionsInvocationAllOfTiming.md) | A list of state transitions with timestamps, sorted in ascending order by timestamp. Only the &#39;created&#39; transition is guaranteed to exist at any time. |  |
| **duration** | **Integer** | The duration of the invocation&#39;s execution time. | [optional] |
| **state** | [**Schema**](Schema.md) |  |  |
| **action_id** | **String** |  |  |
| **metadata** | [**AutomationActionsInvocationAllOfMetadata**](AutomationActionsInvocationAllOfMetadata.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsInvocation.new(
  action_snapshot: null,
  runner_id: null,
  timing: null,
  duration: 23,
  state: null,
  action_id: null,
  metadata: null
)
```

