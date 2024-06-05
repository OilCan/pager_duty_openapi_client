# PagerDutyOpenapiClient::PushContactMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **device_type** | **String** | The type of device. | [readonly] |
| **sounds** | [**Array&lt;PushContactMethodSound&gt;**](PushContactMethodSound.md) |  | [optional] |
| **created_at** | **Time** | Time at which the contact method was created. | [optional] |
| **blacklisted** | **Boolean** | If true, this phone has been blacklisted by PagerDuty and no messages will be sent to it. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::PushContactMethod.new(
  type: null,
  device_type: null,
  sounds: null,
  created_at: null,
  blacklisted: null
)
```

