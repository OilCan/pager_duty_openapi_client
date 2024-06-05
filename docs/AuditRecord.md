# PagerDutyOpenapiClient::AuditRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **_self** | **String** | Record URL. | [optional] |
| **execution_time** | **Time** | The date/time the action executed, in ISO8601 format and millisecond precision. |  |
| **execution_context** | [**AuditRecordExecutionContext**](AuditRecordExecutionContext.md) |  | [optional] |
| **actors** | [**Array&lt;Reference&gt;**](Reference.md) |  | [optional] |
| **method** | [**AuditRecordMethod**](AuditRecordMethod.md) |  |  |
| **root_resource** | [**Reference**](Reference.md) |  |  |
| **action** | **String** |  |  |
| **details** | [**AuditRecordDetails**](AuditRecordDetails.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AuditRecord.new(
  id: null,
  _self: null,
  execution_time: null,
  execution_context: null,
  actors: null,
  method: null,
  root_resource: null,
  action: create,
  details: null
)
```

