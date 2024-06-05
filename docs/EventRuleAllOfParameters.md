# PagerDutyOpenapiClient::EventRuleAllOfParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value for the operation. For example, an RE2 regular expression for regex-type variables. |  |
| **path** | **String** | Path to a field in an event, in dot-notation. For Event Rules on a Service, this will have to be a PD-CEF field. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EventRuleAllOfParameters.new(
  value: null,
  path: null
)
```

