# PagerDutyOpenapiClient::ResolveReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The reason the incident was resolved. The only reason currently supported is merge. | [optional][default to &#39;merge_resolve_reason&#39;] |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ResolveReason.new(
  type: null,
  incident: null
)
```

