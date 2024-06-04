# OpenapiClient::ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAllActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suppress** | **Boolean** | If true, the resulting alert is suppressed. Suppressed alerts will not trigger an incident. | [optional] |
| **suspend** | **Integer** | The number of seconds to suspend the resulting alert before triggering. This effectively pauses incident notifications. If a resolve event arrives before the alert triggers then PagerDuty won&#39;t create an incident for this the resulting alert. | [optional] |
| **pagerduty_automation_actions** | [**Array&lt;ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAllActionsAllOfPagerdutyAutomationActionsInner&gt;**](ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAllActionsAllOfPagerdutyAutomationActionsInner.md) | Configure an Automation Action associated with the resulting incident. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAllActions.new(
  suppress: null,
  suspend: null,
  pagerduty_automation_actions: null
)
```

