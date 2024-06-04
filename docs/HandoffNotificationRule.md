# OpenapiClient::HandoffNotificationRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **notify_advance_in_minutes** | **Integer** | The delay before firing the rule, in minutes. | [optional] |
| **handoff_type** | **String** | The type of handoff being created. | [default to &#39;both&#39;] |
| **contact_method** | [**ContactMethodReference**](ContactMethodReference.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HandoffNotificationRule.new(
  id: null,
  notify_advance_in_minutes: null,
  handoff_type: null,
  contact_method: null
)
```

