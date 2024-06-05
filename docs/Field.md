# PagerDutyOpenapiClient::Field

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_type** | **String** | The kind of data the template field is allowed to contain. | [optional] |
| **default_value** | **String** | The default value of the template field. | [optional] |
| **description** | **String** | A short description of the template field. | [optional] |
| **domain_name** | [**FieldDomainName**](FieldDomainName.md) |  | [optional] |
| **example** | **String** | An example value for the template field. | [optional] |
| **keyword** | **String** |  | [optional] |
| **summary** | **String** | A short summary of the template field. | [optional] |
| **type** | **String** | The type of template field. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Field.new(
  data_type: null,
  default_value: null,
  description: null,
  domain_name: null,
  example: null,
  keyword: null,
  summary: null,
  type: null
)
```

