# OpenapiClient::IncidentUrgencyRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of incident urgency: whether it&#39;s constant, or it&#39;s dependent on the support hours. | [optional][default to &#39;constant&#39;] |
| **urgency** | **String** | The incidents&#39; urgency, if type is constant. | [optional][default to &#39;high&#39;] |
| **during_support_hours** | [**IncidentUrgencyType**](IncidentUrgencyType.md) |  | [optional] |
| **outside_support_hours** | [**IncidentUrgencyType**](IncidentUrgencyType.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentUrgencyRule.new(
  type: null,
  urgency: null,
  during_support_hours: null,
  outside_support_hours: null
)
```

