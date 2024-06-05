# PagerDutyOpenapiClient::AutomationActionsAbstractActionAllOfLastRunBy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::AutomationActionsAbstractActionAllOfLastRunBy.openapi_one_of
# =>
# [
#   :'AutomationActionsAbstractActionAllOfLastRunByOneOf',
#   :'Model1',
#   :'UserReference'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::AutomationActionsAbstractActionAllOfLastRunBy.build(data)
# => #<AutomationActionsAbstractActionAllOfLastRunByOneOf:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::AutomationActionsAbstractActionAllOfLastRunBy.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsAbstractActionAllOfLastRunByOneOf`
- `Model1`
- `UserReference`
- `nil` (if no type matches)

