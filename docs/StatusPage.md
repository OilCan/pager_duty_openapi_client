# PagerDutyOpenapiClient::StatusPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a Status Page entry. | [optional][readonly] |
| **name** | **String** | The name of a Status Page to be presented as a brand title (for example, the rendered Status Page HTML header). | [optional] |
| **published_at** | **Time** | The date time moment when a Status Page was published to be publicly available. | [optional][readonly] |
| **status_page_type** | **String** | The type of Status Pages to retrieve - public is accessible to everyone on the internet or private requiring some sort of authentication/authorization layer. | [optional] |
| **url** | **String** | The URL from which the Status Page can be accessed on the internet (either customer&#39;s domain or default *.trust.pagerduty.com). | [optional] |
| **type** | **String** | A string that determines the schema of the object. This must be the standard name for the entity, suffixed by _reference if the object is a reference. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::StatusPage.new(
  id: null,
  name: null,
  published_at: null,
  status_page_type: null,
  url: null,
  type: null
)
```

