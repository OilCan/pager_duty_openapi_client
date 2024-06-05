# PagerDutyOpenapiClient::AnalyticsRawIncidentResponses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **responder_name** | **String** | Name of the user associated with the Incident Response. | [optional] |
| **responder_id** | **String** | ID of the user associated with the Incident Response. | [optional] |
| **response_status** | **String** | Status of the user&#39;s interaction with the Incident notification. | [optional] |
| **responder_type** | **String** | Type of responder, where &#x60;assigned&#x60; means the user was added to the Incident via Assignment at Incident creation, &#x60;reassigned&#x60; means the user was added to the Incident via Reassignment, &#x60;escalated&#x60; means the user was added via Escalation, and &#x60;added_responder&#x60; means the user was added via Responder Reqeuest. | [optional] |
| **requested_at** | **String** | Timestamp of when the user was requested. | [optional] |
| **responded_at** | **String** | Timestamp of when the user responded to the request. | [optional] |
| **time_to_respond_seconds** | **Integer** | Measures the time it took for the user to respond to the Incident request. In other words, &#x60;responded_at - requested_at&#x60;. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AnalyticsRawIncidentResponses.new(
  responder_name: null,
  responder_id: null,
  response_status: null,
  responder_type: null,
  requested_at: null,
  responded_at: null,
  time_to_respond_seconds: null
)
```

