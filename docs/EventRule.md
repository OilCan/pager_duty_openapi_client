# PagerDutyOpenapiClient::EventRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Event Rule. | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible. | [optional][readonly] |
| **disabled** | **Boolean** | Indicates whether the Event Rule is disabled and would therefore not be evaluated. | [optional] |
| **conditions** | [**EventRuleAllOfConditions**](EventRuleAllOfConditions.md) |  | [optional] |
| **time_frame** | [**EventRuleAllOfTimeFrame**](EventRuleAllOfTimeFrame.md) |  | [optional] |
| **variables** | [**Array&lt;EventRuleAllOfVariables&gt;**](EventRuleAllOfVariables.md) | [Early Access] Populate variables from event payloads and use those variables in other event actions. | [optional] |
| **position** | **Integer** | Position/index of the Event Rule in the Ruleset.  Starting from position 0 (the first rule), rules are evaluated one-by-one until a matching rule is found. | [optional] |
| **catch_all** | **Boolean** | Indicates whether the Event Rule is the last Event Rule of the Ruleset that serves as a catch-all. It has limited functionality compared to other rules and always matches. | [optional][readonly] |
| **actions** | [**EventRuleAllOfActions**](EventRuleAllOfActions.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRule.new(
  id: null,
  _self: null,
  disabled: null,
  conditions: null,
  time_frame: null,
  variables: null,
  position: null,
  catch_all: null,
  actions: null
)
```

