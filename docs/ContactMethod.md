# PagerDutyOpenapiClient::ContactMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of contact method being created. |  |
| **label** | **String** | The label (e.g., \&quot;Work\&quot;, \&quot;Mobile\&quot;, etc.). |  |
| **address** | **String** | The \&quot;address\&quot; to deliver to: email, phone number, etc., depending on the type. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ContactMethod.new(
  type: null,
  label: null,
  address: null
)
```

