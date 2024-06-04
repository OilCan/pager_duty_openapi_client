# OpenapiClient::AutoPauseNotificationsParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether alerts should be automatically suspended when identified as transient | [optional][default to false] |
| **timeout** | **Integer** | Indicates in seconds how long alerts should be suspended before triggering | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutoPauseNotificationsParameters.new(
  enabled: null,
  timeout: null
)
```

