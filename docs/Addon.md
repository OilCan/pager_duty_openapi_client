# PagerDutyOpenapiClient::Addon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of Add-on. |  |
| **name** | **String** | The name of the Add-on. |  |
| **src** | **String** | The source URL to display in a frame in the PagerDuty UI. HTTPS is required. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Addon.new(
  type: null,
  name: null,
  src: null
)
```

