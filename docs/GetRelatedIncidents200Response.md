# PagerDutyOpenapiClient::GetRelatedIncidents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **related_incidents** | [**Array&lt;GetRelatedIncidents200ResponseRelatedIncidentsInner&gt;**](GetRelatedIncidents200ResponseRelatedIncidentsInner.md) | A list of Related Incidents and their relationships. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetRelatedIncidents200Response.new(
  related_incidents: null
)
```

