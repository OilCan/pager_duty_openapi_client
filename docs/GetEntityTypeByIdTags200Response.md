# PagerDutyOpenapiClient::GetEntityTypeByIdTags200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **tags** | [**Array&lt;Tag&gt;**](Tag.md) |  |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetEntityTypeByIdTags200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  tags: null
)
```

