# OpenapiClient::GetPastIncidents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **past_incidents** | [**Array&lt;GetPastIncidents200ResponsePastIncidentsInner&gt;**](GetPastIncidents200ResponsePastIncidentsInner.md) | Aggregate of past incidents | [optional] |
| **total** | **Float** | The total number of Past Incidents if the total parameter was set in the request | [optional] |
| **limit** | **Float** | The maximum number of Incidents requested | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetPastIncidents200Response.new(
  past_incidents: null,
  total: null,
  limit: null
)
```

