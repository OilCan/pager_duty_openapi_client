# PagerDutyOpenapiClient::AuditRecordDetailsFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the resource field |  |
| **description** | **String** | Human readable description of the resource field | [optional] |
| **value** | **String** | new or updated value of the field | [optional] |
| **before_value** | **String** | previous or deleted value of the field | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AuditRecordDetailsFieldsInner.new(
  name: name,
  description: First and Last name,
  value: Jonathan,
  before_value: John
)
```

