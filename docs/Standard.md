# PagerDutyOpenapiClient::Standard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **exclusions** | [**Array&lt;StandardInclusionExclusion&gt;**](StandardInclusionExclusion.md) |  | [optional] |
| **inclusions** | [**Array&lt;StandardInclusionExclusion&gt;**](StandardInclusionExclusion.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Standard.new(
  active: null,
  description: null,
  id: null,
  name: null,
  type: null,
  resource_type: null,
  exclusions: null,
  inclusions: null
)
```

