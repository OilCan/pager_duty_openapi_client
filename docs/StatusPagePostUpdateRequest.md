# OpenapiClient::StatusPagePostUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | The path to which the Post Update resource is accessible. | [optional][readonly] |
| **post** | [**StatusPagePostUpdatePost**](StatusPagePostUpdatePost.md) |  |  |
| **message** | **String** | The message of the Post Update. |  |
| **status** | [**StatusPagePostUpdateStatus**](StatusPagePostUpdateStatus.md) |  |  |
| **severity** | [**StatusPagePostUpdateSeverity**](StatusPagePostUpdateSeverity.md) |  |  |
| **impacted_services** | [**Array&lt;Items&gt;**](Items.md) | Impacted services represent the status page services affected by a post update, and its impact. |  |
| **update_frequency_ms** | **Integer** | The frequency of the next Post Update in milliseconds. |  |
| **notify_subscribers** | **Boolean** | Determines if the subscribers should be notified of the Post Update. |  |
| **reported_at** | **Time** | The date and time the Post Update was reported. | [optional] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Post Update. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatusPagePostUpdateRequest.new(
  _self: null,
  post: null,
  message: null,
  status: null,
  severity: null,
  impacted_services: null,
  update_frequency_ms: null,
  notify_subscribers: null,
  reported_at: null,
  type: null
)
```

