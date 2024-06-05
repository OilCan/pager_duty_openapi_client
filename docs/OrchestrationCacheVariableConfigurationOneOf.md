# PagerDutyOpenapiClient::OrchestrationCacheVariableConfigurationOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Cache Variable will be set to the most recent value seen, based on the source event field and the extraction regex specified  |  |
| **source** | **String** | The path to the event field where the regex will be applied to extract a value. |  |
| **regex** | **String** | A RE2 regular expression.  If it contains one or more capture groups, their values will be extracted and appended together.  If it contains no capture groups, the whole match is used.  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationCacheVariableConfigurationOneOf.new(
  type: null,
  source: event.summary,
  regex: null
)
```

