# OpenapiClient::GetTagsByEntityType200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **users** | [**Array&lt;EntityReference&gt;**](EntityReference.md) |  | [optional] |
| **teams** | [**Array&lt;EntityReference&gt;**](EntityReference.md) |  | [optional] |
| **escalation_policies** | [**Array&lt;EntityReference&gt;**](EntityReference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTagsByEntityType200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  users: null,
  teams: null,
  escalation_policies: null
)
```

