# PagerDutyOpenapiClient::PhoneContactMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **country_code** | **Integer** | The 1-to-3 digit country calling code. |  |
| **enabled** | **Boolean** | If true, this phone is capable of receiving SMS messages. | [optional][readonly] |
| **blacklisted** | **Boolean** | If true, this phone has been blacklisted by PagerDuty and no messages will be sent to it. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::PhoneContactMethod.new(
  type: null,
  country_code: null,
  enabled: null,
  blacklisted: null
)
```

