# OpenapiClient::EmailParserValueExtractorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **part** | **String** |  |  |
| **value_name** | **String** | The field name to set in the Incident object. Exactly one must use the &#x60;value_name&#x60; of &#x60;incident_key&#x60; |  |
| **regex** | **String** |  | [optional] |
| **starts_after** | **String** |  | [optional] |
| **ends_with** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmailParserValueExtractorsInner.new(
  type: null,
  part: null,
  value_name: null,
  regex: null,
  starts_after: null,
  ends_with: null
)
```

