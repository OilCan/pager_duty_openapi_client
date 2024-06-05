# PagerDutyOpenapiClient::ListAutomationActionInvocations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invocations** | [**Array&lt;AutomationActionsInvocation&gt;**](AutomationActionsInvocation.md) | List of invocations sorted by creation_time in reverse chronological order (newest invocations first). At most 25 invocations are returned. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ListAutomationActionInvocations200Response.new(
  invocations: null
)
```

