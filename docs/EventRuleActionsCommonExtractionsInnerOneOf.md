# PagerDutyOpenapiClient::EventRuleActionsCommonExtractionsInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The PD-CEF field that will be set with the value from the regex. |  |
| **source** | **String** | The path to the event field where the regex will be applied to extract a value. |  |
| **regex** | **String** | A RE2 regular expression.  If it contains one or more capture groups, their values will be extracted and appended together.  If it contains no capture groups, the whole match is used. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleActionsCommonExtractionsInnerOneOf.new(
  target: null,
  source: null,
  regex: null
)
```

