# OpenapiClient::EventRuleActionsCommonExtractionsInnerOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The PD-CEF field that will be set with the value from the regex. |  |
| **template** | **String** | A value that will be used to populate the target PD-CEF field.  You can include variables extracted from the payload by using string interpolation. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventRuleActionsCommonExtractionsInnerOneOf1.new(
  target: null,
  template: Error number {{count}} on host {{host}}
)
```

