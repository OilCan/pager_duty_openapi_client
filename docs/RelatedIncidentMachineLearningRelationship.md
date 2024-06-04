# OpenapiClient::RelatedIncidentMachineLearningRelationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grouping_classification** | **String** | The classification for why this Related Incident was grouped into this group. Values can be one of: [similar_contents, prior_feedback], where: similar_contents - The Related Incident was due to similar contents of the Incidents. prior_feedback - The Related Incident was determined to be related, based on User feedback or Incident merge/unmerge actions.  | [optional] |
| **user_feedback** | [**RelatedIncidentMachineLearningRelationshipUserFeedback**](RelatedIncidentMachineLearningRelationshipUserFeedback.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RelatedIncidentMachineLearningRelationship.new(
  grouping_classification: null,
  user_feedback: null
)
```

