# OpenapiClient::GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlerts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **String** | The start of the date range over which the report data is represented. | [optional] |
| **_until** | **String** | The end of the date range over which the report data is represented. | [optional] |
| **triggered_after_pause_alerts** | [**Array&lt;GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlertsTriggeredAfterPauseAlertsInner&gt;**](GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlertsTriggeredAfterPauseAlertsInner.md) | An array of Alerts that were triggered after being paused. | [optional] |
| **resolved_after_pause_alerts** | [**Array&lt;GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlertsTriggeredAfterPauseAlertsInner&gt;**](GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlertsTriggeredAfterPauseAlertsInner.md) | An array of Alerts that were resolved after being paused. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetPausedIncidentReportAlerts200ResponsePausedIncidentReportingAlerts.new(
  since: null,
  _until: null,
  triggered_after_pause_alerts: null,
  resolved_after_pause_alerts: null
)
```

