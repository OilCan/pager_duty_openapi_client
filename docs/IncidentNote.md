# PagerDutyOpenapiClient::IncidentNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **user** | [**IncidentNoteUser**](IncidentNoteUser.md) |  | [optional] |
| **channel** | [**IncidentNoteChannel**](IncidentNoteChannel.md) |  | [optional] |
| **content** | **String** | The note content |  |
| **created_at** | **Time** | The time at which the note was submitted | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::IncidentNote.new(
  id: null,
  user: null,
  channel: null,
  content: null,
  created_at: null
)
```

