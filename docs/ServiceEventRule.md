# OpenapiClient::ServiceEventRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **position** | **Integer** | Position/index of the Event Rule on the Service.  Starting from position 0 (the first rule), rules are evaluated one-by-one until a matching Event Rule is found or the end of the list is reached. | [optional] |
| **actions** | [**EventRuleActionsCommon**](EventRuleActionsCommon.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceEventRule.new(
  position: null,
  actions: null
)
```

