# OpenapiClient::RelatedIncidentMachineLearningRelationshipUserFeedback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **positive_feedback_count** | **Integer** | The total number of times Users agreed that the Incidents are related. | [optional] |
| **negative_feedback_count** | **Integer** | The total number of times Users disagreed that the Incidents are related. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RelatedIncidentMachineLearningRelationshipUserFeedback.new(
  positive_feedback_count: null,
  negative_feedback_count: null
)
```

