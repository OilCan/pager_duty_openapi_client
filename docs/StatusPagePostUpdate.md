# PagerDutyOpenapiClient::StatusPagePostUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Post Update. | [optional][readonly] |
| **_self** | **String** | The path to which the Post Update resource is accessible. | [optional][readonly] |
| **post** | [**StatusPagePostUpdatePost**](StatusPagePostUpdatePost.md) |  | [optional] |
| **message** | **String** | The message of the Post Update. | [optional] |
| **reviewed_status** | **String** | The status of the Post Updates to retrieve. | [optional] |
| **status** | [**StatusPagePostUpdateStatus**](StatusPagePostUpdateStatus.md) |  | [optional] |
| **severity** | [**StatusPagePostUpdateSeverity**](StatusPagePostUpdateSeverity.md) |  | [optional] |
| **impacted_services** | [**Array&lt;StatusPagePostUpdateImpact&gt;**](StatusPagePostUpdateImpact.md) | Impacted services represent the status page services affected by a post update, and its impact. | [optional] |
| **update_frequency_ms** | **Integer** | The frequency of the next Post Update in milliseconds. | [optional] |
| **notify_subscribers** | **Boolean** | Determines if the subscribers should be notified of the Post Update. | [optional] |
| **reported_at** | **Time** | The date and time the Post Update was reported. | [optional] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Post Update. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPagePostUpdate.new(
  id: null,
  _self: null,
  post: null,
  message: null,
  reviewed_status: null,
  status: null,
  severity: null,
  impacted_services: null,
  update_frequency_ms: null,
  notify_subscribers: null,
  reported_at: null,
  type: null
)
```

