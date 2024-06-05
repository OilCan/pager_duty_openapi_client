# PagerDutyOpenapiClient::TemplateAllOfUpdatedBy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::TemplateAllOfUpdatedBy.openapi_one_of
# =>
# [
#   :'Model1',
#   :'UserReference'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::TemplateAllOfUpdatedBy.build(data)
# => #<Model1:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::TemplateAllOfUpdatedBy.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Model1`
- `UserReference`
- `nil` (if no type matches)

