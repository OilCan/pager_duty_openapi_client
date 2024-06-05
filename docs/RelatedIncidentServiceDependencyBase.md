# PagerDutyOpenapiClient::RelatedIncidentServiceDependencyBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Service referenced. | [optional][readonly] |
| **type** | **String** | The type of the related Service. | [optional] |
| **_self** | **String** | The API show URL at which the object is accessible. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::RelatedIncidentServiceDependencyBase.new(
  id: null,
  type: null,
  _self: null
)
```

