# PagerDutyOpenapiClient::CreateIncidentResponderRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requester_id** | **String** | The user id of the requester. |  |
| **message** | **String** | The message sent with the responder request. |  |
| **responder_request_targets** | [**Array&lt;ResponderRequestTargetReference&gt;**](ResponderRequestTargetReference.md) | The array of targets the responder request is sent to. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateIncidentResponderRequestRequest.new(
  requester_id: null,
  message: null,
  responder_request_targets: null
)
```

