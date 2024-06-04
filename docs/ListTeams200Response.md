# OpenapiClient::ListTeams200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **teams** | [**Array&lt;Team&gt;**](Team.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTeams200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  teams: null
)
```

