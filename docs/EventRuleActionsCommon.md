# PagerDutyOpenapiClient::EventRuleActionsCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotate** | [**EventRuleActionsCommonAnnotate**](EventRuleActionsCommonAnnotate.md) |  | [optional] |
| **event_action** | [**EventRuleActionsCommonEventAction**](EventRuleActionsCommonEventAction.md) |  | [optional] |
| **extractions** | [**Array&lt;EventRuleActionsCommonExtractionsInner&gt;**](EventRuleActionsCommonExtractionsInner.md) | Dynamically extract values to set and modify new and existing PD-CEF fields. | [optional] |
| **priority** | [**EventRuleActionsCommonPriority**](EventRuleActionsCommonPriority.md) |  | [optional] |
| **severity** | [**EventRuleActionsCommonSeverity**](EventRuleActionsCommonSeverity.md) |  | [optional] |
| **suppress** | [**EventRuleActionsCommonSuppress**](EventRuleActionsCommonSuppress.md) |  | [optional] |
| **suspend** | [**EventRuleActionsCommonSuspend**](EventRuleActionsCommonSuspend.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleActionsCommon.new(
  annotate: null,
  event_action: null,
  extractions: null,
  priority: null,
  severity: null,
  suppress: null,
  suspend: null
)
```

