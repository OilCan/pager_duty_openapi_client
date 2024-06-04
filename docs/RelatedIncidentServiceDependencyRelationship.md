# OpenapiClient::RelatedIncidentServiceDependencyRelationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dependent_services** | [**Array&lt;RelatedIncidentServiceDependencyBase&gt;**](RelatedIncidentServiceDependencyBase.md) |  | [optional] |
| **supporting_services** | [**Array&lt;RelatedIncidentServiceDependencyBase&gt;**](RelatedIncidentServiceDependencyBase.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RelatedIncidentServiceDependencyRelationship.new(
  dependent_services: null,
  supporting_services: null
)
```

