# OpenapiClient::StatusUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **message** | **String** | The message of the status update. | [optional] |
| **created_at** | **String** | The date/time when this status update was created. | [optional] |
| **sender** | [**UserReference**](UserReference.md) |  | [optional] |
| **subject** | **String** | The subject of the custom html email status update. Present if included in request body. | [optional] |
| **html_message** | **String** | The html content of the custom html email status update. Present if included in request body. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatusUpdate.new(
  id: null,
  message: null,
  created_at: null,
  sender: null,
  subject: null,
  html_message: null
)
```

