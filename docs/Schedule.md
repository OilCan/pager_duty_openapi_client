# OpenapiClient::Schedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;schedule&#39;] |
| **schedule_layers** | [**Array&lt;ScheduleLayer&gt;**](ScheduleLayer.md) | A list of schedule layers. | [optional] |
| **time_zone** | **String** | The time zone of the schedule. |  |
| **name** | **String** | The name of the schedule | [optional] |
| **description** | **String** | The description of the schedule | [optional] |
| **final_schedule** | [**SubSchedule**](SubSchedule.md) |  | [optional] |
| **overrides_subschedule** | [**SubSchedule**](SubSchedule.md) |  | [optional] |
| **escalation_policies** | [**Array&lt;EscalationPolicyReference&gt;**](EscalationPolicyReference.md) | An array of all of the escalation policies that uses this schedule. | [optional][readonly] |
| **users** | [**Array&lt;UserReference&gt;**](UserReference.md) | An array of all of the users on the schedule. | [optional][readonly] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | An array of all of the teams on the schedule. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Schedule.new(
  type: null,
  schedule_layers: null,
  time_zone: null,
  name: null,
  description: null,
  final_schedule: null,
  overrides_subschedule: null,
  escalation_policies: null,
  users: null,
  teams: null
)
```

