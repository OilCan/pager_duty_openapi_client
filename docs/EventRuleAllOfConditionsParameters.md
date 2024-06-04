# OpenapiClient::EventRuleAllOfConditionsParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Path to a field in an event, in dot-notation.  For Event Rules on a serivce, this will have to be a PD-CEF field. |  |
| **value** | **String** | Value to apply to the operator. |  |
| **options** | **Object** | Options to configure the operator. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventRuleAllOfConditionsParameters.new(
  path: null,
  value: null,
  options: null
)
```

