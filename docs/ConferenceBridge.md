# PagerDutyOpenapiClient::ConferenceBridge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conference_number** | **String** | The phone number of the conference call for the conference bridge. Phone numbers should be formatted like +1 415-555-1212,,,,1234#, where a comma (,) represents a one-second wait and pound (#) completes access code input. | [optional] |
| **conference_url** | **String** | An URL for the conference bridge. This could be a link to a web conference or Slack channel. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ConferenceBridge.new(
  conference_number: null,
  conference_url: null
)
```

