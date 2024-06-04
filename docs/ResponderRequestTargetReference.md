# OpenapiClient::ResponderRequestTargetReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of target (either a user or an escalation policy) | [optional] |
| **id** | **String** | The id of the user or escalation policy | [optional] |
| **summary** | **String** |  | [optional] |
| **incident_responders** | [**Array&lt;IncidentsRespondersReference&gt;**](IncidentsRespondersReference.md) | An array of responders associated with the specified incident | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponderRequestTargetReference.new(
  type: null,
  id: null,
  summary: null,
  incident_responders: null
)
```

