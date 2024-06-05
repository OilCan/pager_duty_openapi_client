# PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The PD-CEF field that will be set with the value from the regex. | [optional] |
| **template** | **String** | A value that will be used to populate the target PD-CEF field. You can include variables extracted from the payload by using string interpolation. | [optional] |
| **regex** | **String** | A RE2 regular expression. If it contains one or more capture groups, their values will be extracted and appended together. If it contains no capture groups, the whole match is used. | [optional] |
| **source** | **String** | The path to the event field where the regex will be applied to extract a value. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractions.new(
  target: event.custom_details.server,
  template: High CPU on {{hostname}} server,
  regex: High CPU on (.*) server,
  source: event.summary
)
```

