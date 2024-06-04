# OpenapiClient::Override

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **start** | **Time** | The start date and time for the override. |  |
| **_end** | **Time** | The end date and time for the override. |  |
| **user** | [**UserReference**](UserReference.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Override.new(
  id: null,
  start: null,
  _end: null,
  user: null
)
```

