# OpenapiClient::AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference.openapi_one_of
# =>
# [
#   :'AutomationActionsProcessAutomationJobActionDataReference',
#   :'AutomationActionsScriptActionDataReference'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference.build(data)
# => #<AutomationActionsProcessAutomationJobActionDataReference:0x00007fdd4aab02a0>

OpenapiClient::AutomationActionsInvocationAllOfActionSnapshotAllOfActionDataReference.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsProcessAutomationJobActionDataReference`
- `AutomationActionsScriptActionDataReference`
- `nil` (if no type matches)

