# OpenapiClient::TemplateAllOfUpdatedBy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::TemplateAllOfUpdatedBy.openapi_one_of
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
require 'openapi_client'

OpenapiClient::TemplateAllOfUpdatedBy.build(data)
# => #<Model1:0x00007fdd4aab02a0>

OpenapiClient::TemplateAllOfUpdatedBy.build(data_that_doesnt_match)
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

