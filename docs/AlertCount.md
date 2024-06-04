# OpenapiClient::AlertCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **triggered** | **Integer** | The count of triggered alerts grouped into this incident | [optional] |
| **resolved** | **Integer** | The count of resolved alerts grouped into this incident | [optional] |
| **all** | **Integer** | The total count of alerts grouped into this incident | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AlertCount.new(
  triggered: null,
  resolved: null,
  all: null
)
```

