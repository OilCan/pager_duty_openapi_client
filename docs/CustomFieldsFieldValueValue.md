# PagerDutyOpenapiClient::CustomFieldsFieldValueValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsFieldValueValue.openapi_one_of
# =>
# [
#   :'Boolean',
#   :'Datetime',
#   :'Float',
#   :'Integer',
#   :'String',
#   :'Url'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsFieldValueValue.build(data)
# => #<Boolean:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::CustomFieldsFieldValueValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Boolean`
- `Datetime`
- `Float`
- `Integer`
- `String`
- `Url`
- `nil` (if no type matches)

