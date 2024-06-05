# PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction.openapi_one_of
# =>
# [
#   :'AutomationActionsProcessAutomationJobActionWithTeams',
#   :'AutomationActionsScriptActionWithTeams'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction.openapi_discriminator_name
# => :'action_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction.openapi_discriminator_mapping
# =>
# {
#   :'process_automation' => :'AutomationActionsProcessAutomationJobActionWithTeams',
#   :'script' => :'AutomationActionsScriptActionWithTeams'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction.build(data)
# => #<AutomationActionsProcessAutomationJobActionWithTeams:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::CreateAutomationAction201ResponseAction.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsProcessAutomationJobActionWithTeams`
- `AutomationActionsScriptActionWithTeams`
- `nil` (if no type matches)

