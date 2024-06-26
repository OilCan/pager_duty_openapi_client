# PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadataAgent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadataAgent.openapi_one_of
# =>
# [
#   :'AutomationActionsInvocationAllOfMetadataAgentOneOf',
#   :'Model1',
#   :'UserReference'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadataAgent.build(data)
# => #<AutomationActionsInvocationAllOfMetadataAgentOneOf:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::AutomationActionsInvocationAllOfMetadataAgent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsInvocationAllOfMetadataAgentOneOf`
- `Model1`
- `UserReference`
- `nil` (if no type matches)

