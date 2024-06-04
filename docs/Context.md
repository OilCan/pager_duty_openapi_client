# OpenapiClient::Context

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of context being attached to the incident. |  |
| **href** | **String** | The link&#39;s target url | [optional] |
| **src** | **String** | The image&#39;s source url | [optional] |
| **text** | **String** | The alternate display for an image | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Context.new(
  type: null,
  href: null,
  src: null,
  text: null
)
```

