# PagerDutyOpenapiClient::TagsToAdd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **label** | **String** | The label of the tag. Should be used when type is \&quot;tag\&quot;. | [optional] |
| **id** | **String** | The id of the tag. Should be used when type is \&quot;tag_reference\&quot;. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::TagsToAdd.new(
  type: null,
  label: null,
  id: null
)
```

