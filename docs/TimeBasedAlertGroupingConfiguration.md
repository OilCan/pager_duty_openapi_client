# OpenapiClient::TimeBasedAlertGroupingConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeout** | **Integer** | The duration in minutes within which to automatically group incoming Alerts.  To continue grouping Alerts until the Incident is resolved, set this value to 0. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimeBasedAlertGroupingConfiguration.new(
  timeout: null
)
```

