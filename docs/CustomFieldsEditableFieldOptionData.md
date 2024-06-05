# PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData.openapi_one_of
# =>
# [
#   :'CustomFieldsEditableFieldOptionDataOneOf'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData.openapi_discriminator_name
# => :'data_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData.openapi_discriminator_mapping
# =>
# {
#   :'string' => :'ERRORUNKNOWN'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData.build(data)
# => #<CustomFieldsEditableFieldOptionDataOneOf:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::CustomFieldsEditableFieldOptionData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CustomFieldsEditableFieldOptionDataOneOf`
- `nil` (if no type matches)

