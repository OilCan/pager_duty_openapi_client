# PagerDutyOpenapiClient::IncidentsRespondersReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The status of the responder being added to the incident | [optional] |
| **user** | [**UserReference**](UserReference.md) |  | [optional] |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **message** | **String** | The message sent with the responder request | [optional] |
| **requester** | [**UserReference**](UserReference.md) |  | [optional] |
| **requested_at** | **String** |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::IncidentsRespondersReference.new(
  state: pending,
  user: null,
  incident: null,
  updated_at: null,
  message: null,
  requester: null,
  requested_at: null
)
```

