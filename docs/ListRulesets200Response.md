# OpenapiClient::ListRulesets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **rulesets** | [**Array&lt;Ruleset&gt;**](Ruleset.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListRulesets200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  rulesets: null
)
```

