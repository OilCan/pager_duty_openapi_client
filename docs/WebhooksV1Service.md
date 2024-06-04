# OpenapiClient::WebhooksV1Service

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** | The name of the service. | [optional][readonly] |
| **html_url** | **String** |  | [optional][readonly] |
| **deleted_at** | **Time** | The date/time the service was deleted, if it has been removed. | [optional][readonly] |
| **description** | **String** | The description of the service. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhooksV1Service.new(
  id: null,
  name: null,
  html_url: null,
  deleted_at: null,
  description: null
)
```

