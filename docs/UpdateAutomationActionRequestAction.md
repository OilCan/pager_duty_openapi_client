# PagerDutyOpenapiClient::UpdateAutomationActionRequestAction

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionRequestAction.openapi_one_of
# =>
# [
#   :'AutomationActionsProcessAutomationJobActionPutBody',
#   :'AutomationActionsScriptActionPutBody'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionRequestAction.openapi_discriminator_name
# => :'action_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionRequestAction.openapi_discriminator_mapping
# =>
# {
#   :'process_automation' => :'AutomationActionsProcessAutomationJobActionPutBody',
#   :'script' => :'AutomationActionsScriptActionPutBody'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionRequestAction.build(data)
# => #<AutomationActionsProcessAutomationJobActionPutBody:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::UpdateAutomationActionRequestAction.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsProcessAutomationJobActionPutBody`
- `AutomationActionsScriptActionPutBody`
- `nil` (if no type matches)

