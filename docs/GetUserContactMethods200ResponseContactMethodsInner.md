# PagerDutyOpenapiClient::GetUserContactMethods200ResponseContactMethodsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::GetUserContactMethods200ResponseContactMethodsInner.openapi_one_of
# =>
# [
#   :'EmailContactMethod',
#   :'PhoneContactMethod',
#   :'PushContactMethod'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pager_duty_openapi_client'

PagerDutyOpenapiClient::GetUserContactMethods200ResponseContactMethodsInner.build(data)
# => #<EmailContactMethod:0x00007fdd4aab02a0>

PagerDutyOpenapiClient::GetUserContactMethods200ResponseContactMethodsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EmailContactMethod`
- `PhoneContactMethod`
- `PushContactMethod`
- `nil` (if no type matches)

