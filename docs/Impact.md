# PagerDutyOpenapiClient::Impact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional][readonly] |
| **type** | **String** | The kind of object that has been impacted | [optional] |
| **status** | **String** | The current impact status of the object | [optional] |
| **additional_fields** | [**ImpactAdditionalFields**](ImpactAdditionalFields.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Impact.new(
  id: null,
  name: null,
  type: null,
  status: null,
  additional_fields: null
)
```

