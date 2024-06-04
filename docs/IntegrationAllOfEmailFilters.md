# OpenapiClient::IntegrationAllOfEmailFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_mode** | **String** |  |  |
| **subject_regex** | **String** | Specify if subject_mode is set to match or no-match | [optional] |
| **body_mode** | **String** |  |  |
| **body_regex** | **String** | Specify if body_mode is set to match or no-match | [optional] |
| **from_email_mode** | **String** |  |  |
| **from_email_regex** | **String** | Specify if from_email_mode is set to match or no-match | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IntegrationAllOfEmailFilters.new(
  subject_mode: null,
  subject_regex: null,
  body_mode: null,
  body_regex: null,
  from_email_mode: null,
  from_email_regex: null
)
```

