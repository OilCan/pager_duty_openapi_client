# PagerDutyOpenapiClient::GetPastIncidents200ResponsePastIncidentsInnerIncident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The globally unique identifier of the incident | [optional] |
| **created_at** | **String** | The date/time the incident was first triggered | [optional] |
| **_self** | **String** | The URL at which the object is accessible | [optional] |
| **title** | **String** | The description of the nature, symptoms, cause, or effect of the incident | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetPastIncidents200ResponsePastIncidentsInnerIncident.new(
  id: null,
  created_at: null,
  _self: null,
  title: null
)
```

