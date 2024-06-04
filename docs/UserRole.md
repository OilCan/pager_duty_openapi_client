# OpenapiClient::UserRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | The role of the user for a set of resources. | [optional] |
| **resources** | [**Array&lt;Reference&gt;**](Reference.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserRole.new(
  role: observer,
  resources: null
)
```

