# OpenapiClient::ScheduleLayerEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**UserReference**](UserReference.md) |  | [optional] |
| **start** | **Time** | The start time of this entry. | [readonly] |
| **_end** | **Time** | The end time of this entry. If null, the entry does not end. | [readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScheduleLayerEntry.new(
  user: null,
  start: null,
  _end: null
)
```

