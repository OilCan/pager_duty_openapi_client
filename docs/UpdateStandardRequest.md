# PagerDutyOpenapiClient::UpdateStandardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **values** | [**UpdateStandardRequestAllOfValues**](UpdateStandardRequestAllOfValues.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **inclusions** | [**Array&lt;StandardInclusionExclusion&gt;**](StandardInclusionExclusion.md) |  | [optional] |
| **exclusions** | [**Array&lt;StandardInclusionExclusion&gt;**](StandardInclusionExclusion.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::UpdateStandardRequest.new(
  active: null,
  values: null,
  description: null,
  inclusions: null,
  exclusions: null
)
```

