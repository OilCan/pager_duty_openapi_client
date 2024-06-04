# OpenapiClient::ValueByFieldNameValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ValueByFieldNameValue.openapi_one_of
# =>
# [
#   :'Model0',
#   :'Model1',
#   :'Model2',
#   :'Model3',
#   :'Model4',
#   :'Model5'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ValueByFieldNameValue.build(data)
# => #<Model0:0x00007fdd4aab02a0>

OpenapiClient::ValueByFieldNameValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Model0`
- `Model1`
- `Model2`
- `Model3`
- `Model4`
- `Model5`
- `nil` (if no type matches)

