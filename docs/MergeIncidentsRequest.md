# PagerDutyOpenapiClient::MergeIncidentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_incidents** | [**Array&lt;IncidentReference&gt;**](IncidentReference.md) | The source incidents that will be merged into the target incident and resolved. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::MergeIncidentsRequest.new(
  source_incidents: null
)
```

