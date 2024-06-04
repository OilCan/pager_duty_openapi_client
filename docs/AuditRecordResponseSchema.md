# OpenapiClient::AuditRecordResponseSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [readonly] |
| **next_cursor** | **String** | An opaque string than will deliver the next set of results when provided as the &#x60;cursor&#x60; parameter in a subsequent request.  A &#x60;null&#x60; value for this field indicates that there are no additional results.  | [readonly] |
| **records** | [**Array&lt;AuditRecord&gt;**](AuditRecord.md) |  |  |
| **response_metadata** | [**AuditMetadata**](AuditMetadata.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuditRecordResponseSchema.new(
  limit: null,
  next_cursor: dXNlcjaVMzc5V0ZYTlo&#x3D;,
  records: null,
  response_metadata: null
)
```

