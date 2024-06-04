# OpenapiClient::SubSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the subschedule | [readonly] |
| **rendered_schedule_entries** | [**Array&lt;ScheduleLayerEntry&gt;**](ScheduleLayerEntry.md) | This is a list of entries on the computed layer for the current time range. Since or until must be set in order for this field to be populated. | [optional][readonly] |
| **rendered_coverage_percentage** | **Float** | The percentage of the time range covered by this layer. Returns null unless since or until are set. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SubSchedule.new(
  name: null,
  rendered_schedule_entries: null,
  rendered_coverage_percentage: null
)
```

