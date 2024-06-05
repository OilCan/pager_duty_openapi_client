# PagerDutyOpenapiClient::AlertGroupingSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** | An optional short-form string that provides succinct information about an AlertGroupingSetting object suitable for primary labeling of the entity. It is not intended to be an identifier. | [optional] |
| **description** | **String** | An optional description in string that provides more information about an AlertGroupingSetting object. | [optional] |
| **type** | **String** |  | [optional] |
| **config** | [**AlertGroupingSettingConfig**](AlertGroupingSettingConfig.md) |  | [optional] |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) | The array of one or many Services with just ServiceID/name that the AlertGroupingSetting applies to. Type of content_based_intelligent allows for only one service in the array. | [optional] |
| **created_at** | **Time** | The ISO8601 date/time an AlertGroupingSetting got created at. | [optional][readonly] |
| **updated_at** | **Time** | The ISO8601 date/time an AlertGroupingSetting last got updated at. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AlertGroupingSetting.new(
  id: null,
  name: null,
  description: null,
  type: null,
  config: null,
  services: null,
  created_at: null,
  updated_at: null
)
```

