# PagerDutyOpenapiClient::StatusPagePostmortem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a single Postmortem resource. | [optional][readonly] |
| **_self** | **String** | The API resource URL of the Postmortem. | [optional][readonly] |
| **post** | [**StatusPagePostmortemPost**](StatusPagePostmortemPost.md) |  | [optional] |
| **message** | **String** | The message of the Postmortem (supports Rich-Text). | [optional] |
| **notify_subscribers** | **Boolean** | Whether or not subscribers of the Status Page should be notified about the Postmortem. | [optional] |
| **reported_at** | **Time** | The date and time the Postmortem was reported. | [optional] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Post Postmortem. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPagePostmortem.new(
  id: null,
  _self: null,
  post: null,
  message: null,
  notify_subscribers: null,
  reported_at: null,
  type: null
)
```

