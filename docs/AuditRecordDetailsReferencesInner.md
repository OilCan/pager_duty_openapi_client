# OpenapiClient::AuditRecordDetailsReferencesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the reference field |  |
| **description** | **String** | Human readable description of the references field | [optional] |
| **added** | [**Array&lt;Reference&gt;**](Reference.md) |  | [optional] |
| **removed** | [**Array&lt;Reference&gt;**](Reference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuditRecordDetailsReferencesInner.new(
  name: team_members,
  description: First and Last name,
  added: null,
  removed: null
)
```

