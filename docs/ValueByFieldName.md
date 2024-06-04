# OpenapiClient::ValueByFieldName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the field. May include ASCII characters, specifically lowercase letters, digits, and underescores. The &#x60;name&#x60; for a Field must be unique. | [optional] |
| **value** | [**ValueByFieldNameValue**](ValueByFieldNameValue.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValueByFieldName.new(
  name: null,
  value: null
)
```

