# OpenapiClient::IncidentAddon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of Add-on. |  |
| **name** | **String** | The name of the Add-on. |  |
| **src** | **String** | The source URL to display in a frame in the PagerDuty UI. HTTPS is required. |  |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) | The services this Add-on is associated with. If non-empty, the Add-on will appear only on incidents for those services. If empty, it will appear on incidents for all services.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentAddon.new(
  type: null,
  name: null,
  src: null,
  services: null
)
```

