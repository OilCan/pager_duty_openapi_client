# OpenapiClient::OrchestrationCacheVariableConfigurationOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Cache Variable will be set to the number of trigger events that have been seen within the TTL range  |  |
| **ttl_seconds** | **Integer** | The time to live (in seconds) for how long to count trigger events before resetting back to 0.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationCacheVariableConfigurationOneOf1.new(
  type: null,
  ttl_seconds: null
)
```

