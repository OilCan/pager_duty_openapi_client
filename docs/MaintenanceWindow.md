# OpenapiClient::MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;maintenance_window&#39;] |
| **sequence_number** | **Integer** | The order in which the maintenance window was created. | [optional][readonly] |
| **start_time** | **Time** | This maintenance window&#39;s start time. This is when the services will stop creating incidents. If this date is in the past, it will be updated to be the current time. |  |
| **end_time** | **Time** | This maintenance window&#39;s end time. This is when the services will start creating incidents again. This date must be in the future and after the &#x60;start_time&#x60;. |  |
| **description** | **String** | A description for this maintenance window. | [optional] |
| **created_by** | [**UserReference**](UserReference.md) |  | [optional] |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) |  |  |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MaintenanceWindow.new(
  type: null,
  sequence_number: null,
  start_time: null,
  end_time: null,
  description: null,
  created_by: null,
  services: null,
  teams: null
)
```

