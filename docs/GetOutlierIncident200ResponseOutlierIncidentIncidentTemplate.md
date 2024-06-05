# PagerDutyOpenapiClient::GetOutlierIncident200ResponseOutlierIncidentIncidentTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **cluster_id** | **String** | The cluster the Incident Template pattern belongs to | [optional][readonly] |
| **mined_text** | **String** | The Incident Template mined pattern text | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetOutlierIncident200ResponseOutlierIncidentIncidentTemplate.new(
  id: null,
  cluster_id: null,
  mined_text: null
)
```

