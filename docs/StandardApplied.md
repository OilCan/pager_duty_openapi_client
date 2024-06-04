# OpenapiClient::StandardApplied

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **score** | [**StandardAppliedScore**](StandardAppliedScore.md) |  | [optional] |
| **standards** | [**Array&lt;StandardAppliedStandardsInner&gt;**](StandardAppliedStandardsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StandardApplied.new(
  resource_id: null,
  resource_type: null,
  score: null,
  standards: null
)
```

