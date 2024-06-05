# PagerDutyOpenapiClient::AuditRecordMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **truncated_token** | **String** | Truncated token containing the last 4 chars of the token&#39;s actual value. | [optional] |
| **type** | [**Schema**](Schema.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AuditRecordMethod.new(
  description: null,
  truncated_token: 3xyz,
  type: null
)
```

