# PagerDutyOpenapiClient::IncidentAllOfTeams

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfTeams.openapi_one_of
# =>
# [
#   :'Team',
#   :'TeamReference'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfTeams.build(data)
# => #<Team:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::IncidentAllOfTeams.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Team`
- `TeamReference`
- `nil` (if no type matches)

