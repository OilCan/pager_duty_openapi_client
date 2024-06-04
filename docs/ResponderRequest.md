# OpenapiClient::ResponderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |
| **requester** | [**UserReference**](UserReference.md) |  | [optional] |
| **requested_at** | **String** | The time the request was made | [optional] |
| **message** | **String** | The message sent with the responder request | [optional] |
| **responder_request_targets** | [**Array&lt;ResponderRequestTargetReference&gt;**](ResponderRequestTargetReference.md) | The array of targets the responder request is being sent to | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponderRequest.new(
  incident: null,
  requester: null,
  requested_at: null,
  message: null,
  responder_request_targets: null
)
```

