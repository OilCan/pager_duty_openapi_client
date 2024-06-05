# PagerDutyOpenapiClient::UpdateRulesetEventRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule** | [**EventRule**](EventRule.md) |  | [optional] |
| **rule_id** | **String** | The id of the Event Rule to update. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateRulesetEventRuleRequest.new(
  rule: null,
  rule_id: null
)
```

