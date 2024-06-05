# PagerDutyOpenapiClient::CreateAutomationActionRequestAction

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationActionRequestAction.openapi_one_of
# =>
# [
#   :'AutomationActionsProcessAutomationJobActionPostBody',
#   :'AutomationActionsScriptActionPostBody'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationActionRequestAction.openapi_discriminator_name
# => :'action_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationActionRequestAction.openapi_discriminator_mapping
# =>
# {
#   :'process_automation' => :'AutomationActionsProcessAutomationJobActionPostBody',
#   :'script' => :'AutomationActionsScriptActionPostBody'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CreateAutomationActionRequestAction.build(data)
# => #<AutomationActionsProcessAutomationJobActionPostBody:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::CreateAutomationActionRequestAction.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsProcessAutomationJobActionPostBody`
- `AutomationActionsScriptActionPostBody`
- `nil` (if no type matches)

