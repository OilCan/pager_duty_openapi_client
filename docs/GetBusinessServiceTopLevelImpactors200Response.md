# PagerDutyOpenapiClient::GetBusinessServiceTopLevelImpactors200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **impactors** | [**Array&lt;Impactor&gt;**](Impactor.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetBusinessServiceTopLevelImpactors200Response.new(
  limit: null,
  more: null,
  impactors: null
)
```

