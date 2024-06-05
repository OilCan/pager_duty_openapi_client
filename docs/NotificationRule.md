# PagerDutyOpenapiClient::NotificationRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;assignment_notification_rule&#39;] |
| **start_delay_in_minutes** | **Integer** | The delay before firing the rule, in minutes. |  |
| **contact_method** | [**ContactMethodReference**](ContactMethodReference.md) |  |  |
| **urgency** | **String** | Which incident urgency this rule is used for. Account must have the &#x60;urgencies&#x60; ability to have a low urgency notification rule. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::NotificationRule.new(
  type: null,
  start_delay_in_minutes: null,
  contact_method: null,
  urgency: null
)
```

