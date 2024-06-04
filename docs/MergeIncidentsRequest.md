# OpenapiClient::MergeIncidentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_incidents** | [**Array&lt;IncidentReference&gt;**](IncidentReference.md) | The source incidents that will be merged into the target incident and resolved. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MergeIncidentsRequest.new(
  source_incidents: null
)
```

