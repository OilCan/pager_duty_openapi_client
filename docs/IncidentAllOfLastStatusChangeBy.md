# PagerDutyOpenapiClient::IncidentAllOfLastStatusChangeBy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfLastStatusChangeBy.openapi_one_of
# =>
# [
#   :'AgentReference',
#   :'Service',
#   :'User'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::IncidentAllOfLastStatusChangeBy.build(data)
# => #<AgentReference:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::IncidentAllOfLastStatusChangeBy.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AgentReference`
- `Service`
- `User`
- `nil` (if no type matches)

