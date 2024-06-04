# OpenapiClient::RenderTemplateRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::RenderTemplateRequest.openapi_one_of
# =>
# [
#   :'StatusUpdateTemplateInput'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::RenderTemplateRequest.build(data)
# => #<StatusUpdateTemplateInput:0x00007fdd4aab02a0>

OpenapiClient::RenderTemplateRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `StatusUpdateTemplateInput`
- `nil` (if no type matches)

