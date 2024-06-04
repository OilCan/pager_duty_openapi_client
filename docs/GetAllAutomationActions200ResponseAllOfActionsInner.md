# OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner.openapi_one_of
# =>
# [
#   :'AutomationActionsProcessAutomationJobAction',
#   :'AutomationActionsScriptAction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner.openapi_discriminator_name
# => :'action_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner.openapi_discriminator_mapping
# =>
# {
#   :'process_automation' => :'AutomationActionsProcessAutomationJobAction',
#   :'script' => :'AutomationActionsScriptAction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner.build(data)
# => #<AutomationActionsProcessAutomationJobAction:0x00007fdd4aab02a0>

OpenapiClient::GetAllAutomationActions200ResponseAllOfActionsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationActionsProcessAutomationJobAction`
- `AutomationActionsScriptAction`
- `nil` (if no type matches)

