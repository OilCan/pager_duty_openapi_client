# PagerDutyOpenapiClient::ScheduleLayer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **start** | **Time** | The start time of this layer. |  |
| **_end** | **Time** | The end time of this layer. If &#x60;null&#x60;, the layer does not end. | [optional] |
| **users** | [**Array&lt;ScheduleLayerUser&gt;**](ScheduleLayerUser.md) | The ordered list of users on this layer. The position of the user on the list determines their order in the layer. |  |
| **restrictions** | [**Array&lt;Restriction&gt;**](Restriction.md) | An array of restrictions for the layer. A restriction is a limit on which period of the day or week the schedule layer can accept assignments. Restrictions respect the &#x60;time_zone&#x60; parameter of the request. | [optional] |
| **rotation_virtual_start** | **Time** | The effective start time of the layer. This can be before the start time of the schedule. |  |
| **rotation_turn_length_seconds** | **Integer** | The duration of each on-call shift in seconds. |  |
| **name** | **String** | The name of the schedule layer. | [optional] |
| **rendered_schedule_entries** | [**Array&lt;ScheduleLayerEntry&gt;**](ScheduleLayerEntry.md) | This is a list of entries on the computed layer for the current time range. Since or until must be set in order for this field to be populated. | [optional][readonly] |
| **rendered_coverage_percentage** | **Float** | The percentage of the time range covered by this layer. Returns null unless since or until are set. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ScheduleLayer.new(
  id: null,
  start: null,
  _end: null,
  users: null,
  restrictions: null,
  rotation_virtual_start: null,
  rotation_turn_length_seconds: null,
  name: null,
  rendered_schedule_entries: null,
  rendered_coverage_percentage: null
)
```

