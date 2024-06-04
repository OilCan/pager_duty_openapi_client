# OpenapiClient::GetRelatedIncidents200ResponseRelatedIncidentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident** | [**Incident**](Incident.md) |  | [optional] |
| **relationships** | [**Array&lt;GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInner&gt;**](GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInner.md) | A list of reasons for why the Incident is considered related. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetRelatedIncidents200ResponseRelatedIncidentsInner.new(
  incident: null,
  relationships: null
)
```

