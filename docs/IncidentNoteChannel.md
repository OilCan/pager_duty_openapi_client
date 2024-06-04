# OpenapiClient::IncidentNoteChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | **String** | A string describing the source of the Note. | [readonly] |
| **id** | **String** |  | [optional][readonly] |
| **type** | **String** | A string that determines the schema of the object | [optional][readonly] |
| **_self** | **String** | The API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IncidentNoteChannel.new(
  summary: null,
  id: null,
  type: null,
  _self: null,
  html_url: null
)
```

