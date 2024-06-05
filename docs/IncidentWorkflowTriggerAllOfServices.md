# PagerDutyOpenapiClient::IncidentWorkflowTriggerAllOfServices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **summary** | **String** | A short-form, server-generated string that provides succinct, important information about an object suitable for primary labeling of an entity in a client. In many cases, this will be identical to &#x60;name&#x60;, though it is not intended to be an identifier. | [optional][readonly] |
| **type** | **String** | A string that determines the schema of the object. This must be the standard name for the entity, suffixed by &#x60;_reference&#x60; if the object is a reference. | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::IncidentWorkflowTriggerAllOfServices.new(
  id: null,
  summary: null,
  type: null,
  _self: null,
  html_url: null
)
```

