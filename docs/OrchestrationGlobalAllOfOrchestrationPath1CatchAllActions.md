# OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suppress** | **Boolean** | If true, the resulting alert is suppressed. Suppressed alerts will not trigger an incident. | [optional] |
| **suspend** | **Integer** | The number of seconds to suspend the resulting alert before triggering. This effectively pauses incident notifications. If a resolve event arrives before the alert triggers then PagerDuty won&#39;t create an incident for this the resulting alert. | [optional] |
| **drop_event** | **Boolean** | If true, this event will be dropped. Dropped events will not trigger or resolve an alert or an incident. Dropped events will not be evaluated against router rules. | [optional] |
| **priority** | **String** | The ID of the priority you want to set on resulting incident. You can find the list of priority IDs for your account by calling the priorities endpoint. | [optional] |
| **annotate** | **String** | Add this text as a note on the resulting incident. AIOps users can additionally use the {{event}} variable to include elements of the event payload in the note. | [optional] |
| **automation_actions** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInner&gt;**](OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfAutomationActionsInner.md) | Create a Webhoook associated with the resulting incident. | [optional] |
| **incident_custom_field_updates** | [**Array&lt;OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfIncidentCustomFieldUpdatesInner&gt;**](OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfIncidentCustomFieldUpdatesInner.md) | Configure custom field updates for the incident. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActions.new(
  suppress: null,
  suspend: null,
  drop_event: null,
  priority: P53ZZH5,
  annotate: null,
  automation_actions: null,
  incident_custom_field_updates: null
)
```

