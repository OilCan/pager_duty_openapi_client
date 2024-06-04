# OpenapiClient::AuditRecordDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | [**Reference**](Reference.md) |  |  |
| **fields** | [**Array&lt;AuditRecordDetailsFieldsInner&gt;**](AuditRecordDetailsFieldsInner.md) | A set of fields that have been affected. The fields that have not been affected MAY be returned.  | [optional] |
| **references** | [**Array&lt;AuditRecordDetailsReferencesInner&gt;**](AuditRecordDetailsReferencesInner.md) | A set of references that have been affected. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuditRecordDetails.new(
  resource: null,
  fields: null,
  references: null
)
```

