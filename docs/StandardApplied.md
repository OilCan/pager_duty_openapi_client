# PagerDutyOpenapiClient::StandardApplied

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **score** | [**StandardAppliedScore**](StandardAppliedScore.md) |  | [optional] |
| **standards** | [**Array&lt;StandardAppliedStandardsInner&gt;**](StandardAppliedStandardsInner.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StandardApplied.new(
  resource_id: null,
  resource_type: null,
  score: null,
  standards: null
)
```

