# OpenapiClient::CreateAutomationActionsRunnerRequestRunner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::CreateAutomationActionsRunnerRequestRunner.openapi_one_of
# =>
# [
#   :'AutomationActionsRunnerRunbookPostBody',
#   :'AutomationActionsRunnerSidecarPostBody'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::CreateAutomationActionsRunnerRequestRunner.openapi_discriminator_name
# => :'runner_type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::CreateAutomationActionsRunnerRequestRunner.build(data)
# => #<AutomationActionsRunnerRunbookPostBody:0x00007fdd4aab02a0>

OpenapiClient::CreateAutomationActionsRunnerRequestRunner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsRunnerRunbookPostBody`
- `AutomationActionsRunnerSidecarPostBody`
- `nil` (if no type matches)

