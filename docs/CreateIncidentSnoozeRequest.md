# OpenapiClient::CreateIncidentSnoozeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration** | **Integer** | The number of seconds to snooze the incident for. After this number of seconds has elapsed, the incident will return to the \&quot;triggered\&quot; state. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateIncidentSnoozeRequest.new(
  duration: null
)
```

