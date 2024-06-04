# OpenapiClient::Body

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the body. | [optional] |
| **contexts** | [**Array&lt;Context&gt;**](Context.md) | Contexts to be included with the body such as links to graphs or images. | [optional][readonly] |
| **details** | **Object** | An arbitrary JSON object or string containing any data explaining the nature of the alert. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Body.new(
  type: null,
  contexts: null,
  details: null
)
```

