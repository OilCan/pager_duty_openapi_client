# PagerDutyOpenapiClient::GetPausedIncidentReportCounts200ResponsePausedIncidentReportingCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **String** | The start of the date range over which the report data is represented. | [optional] |
| **_until** | **String** | The end of the date range over which the report data is represented. | [optional] |
| **paused_count** | **Float** | The total number of paused Alerts for the Account or Servce. | [optional] |
| **triggered_after_pause_count** | **Float** | The total number of paused Alerts for the Account or Service that were triggerd after being paused (non-transient Alerts). | [optional] |
| **resolved_after_pause_count** | **Float** | The total number of paused Alerts for the Account or Service that were resolved after being paused and not triggered (transient Alerts). | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetPausedIncidentReportCounts200ResponsePausedIncidentReportingCounts.new(
  since: null,
  _until: null,
  paused_count: null,
  triggered_after_pause_count: null,
  resolved_after_pause_count: null
)
```

