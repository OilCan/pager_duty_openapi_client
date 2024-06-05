# PagerDutyOpenapiClient::GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of relationship. A relationship outlines the reason why two Incidents are considered related. | [optional] |
| **metadata** | [**GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInnerMetadata**](GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInnerMetadata.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::GetRelatedIncidents200ResponseRelatedIncidentsInnerRelationshipsInner.new(
  type: null,
  metadata: null
)
```

