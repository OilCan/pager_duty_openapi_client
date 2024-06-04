# OpenapiClient::IncidentUrgencyType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of incident urgency: whether it&#39;s constant, or it&#39;s dependent on the support hours. | [optional][default to &#39;constant&#39;] |
| **urgency** | **String** | The incidents&#39; urgency, if type is constant. | [optional][default to &#39;high&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentUrgencyType.new(
  type: null,
  urgency: null
)
```

