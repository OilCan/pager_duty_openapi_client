# PagerDutyOpenapiClient::IncidentAllOfFirstTriggerLogEntry

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfFirstTriggerLogEntry.openapi_one_of
# =>
# [
#   :'LogEntryReference',
#   :'TriggerLogEntry'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfFirstTriggerLogEntry.build(data)
# => #<LogEntryReference:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::IncidentAllOfFirstTriggerLogEntry.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LogEntryReference`
- `TriggerLogEntry`
- `nil` (if no type matches)

