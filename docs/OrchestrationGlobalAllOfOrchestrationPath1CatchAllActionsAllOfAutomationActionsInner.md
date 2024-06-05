# PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Webhook. | [optional] |
| **url** | **String** | The API endpoint where PagerDuty&#39;s servers will send the webhook request. | [optional] |
| **auto_send** | **Boolean** | When true, PagerDuty&#39;s servers will automatically send this webhook request as soon as the resulting incident is created. When false, your incident responder will be able to manually trigger the Webhook via the PagerDuty website &amp; mobile app. | [optional][default to false] |
| **headers** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInnerHeadersInner&gt;**](OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInnerHeadersInner.md) | Specify custom key/value pairs that&#39;ll be sent with the webhook request as request headers. | [optional] |
| **parameters** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInnerParametersInner&gt;**](OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInnerParametersInner.md) | Specify custom key/value pairs that&#39;ll be included in the webhook request&#39;s JSON payload. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInner.new(
  name: null,
  url: null,
  auto_send: null,
  headers: null,
  parameters: null
)
```

