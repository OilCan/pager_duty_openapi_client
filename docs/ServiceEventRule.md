# PagerDutyOpenapiClient::ServiceEventRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **position** | **Integer** | Position/index of the Event Rule on the Service.  Starting from position 0 (the first rule), rules are evaluated one-by-one until a matching Event Rule is found or the end of the list is reached. | [optional] |
| **actions** | [**EventRuleActionsCommon**](EventRuleActionsCommon.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ServiceEventRule.new(
  position: null,
  actions: null
)
```

