# OpenapiClient::ListAutomationActionInvocations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invocations** | [**Array&lt;AutomationActionsInvocation&gt;**](AutomationActionsInvocation.md) | List of invocations sorted by creation_time in reverse chronological order (newest invocations first). At most 25 invocations are returned. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListAutomationActionInvocations200Response.new(
  invocations: null
)
```

