# PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the variable | [optional] |
| **path** | **String** | Path to a field in an event, in dot-notation. | [optional] |
| **type** | **String** | The type of operation to populate the variable. Currently only Regex-based variable extraction is supported. | [optional] |
| **value** | **String** | A RE2 regular expression. If it contains one or more capture groups, their values will be extracted and appended together. If it contains no capture groups, the whole match is used. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsVariables.new(
  name: server_name,
  path: event.summary,
  type: null,
  value: High CPU on (.*) server
)
```

