# PagerDutyOpenapiClient::UpdateAutomationActionsRunnerRequestRunner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionsRunnerRequestRunner.openapi_one_of
# =>
# [
#   :'AutomationActionsRunnerRunbookBody',
#   :'AutomationActionsRunnerSidecarBody'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionsRunnerRequestRunner.openapi_discriminator_name
# => :'runner_type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::UpdateAutomationActionsRunnerRequestRunner.build(data)
# => #<AutomationActionsRunnerRunbookBody:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::UpdateAutomationActionsRunnerRequestRunner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsRunnerRunbookBody`
- `AutomationActionsRunnerSidecarBody`
- `nil` (if no type matches)

