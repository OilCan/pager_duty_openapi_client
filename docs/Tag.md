# PagerDutyOpenapiClient::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **summary** | **String** | A short-form, server-generated string that provides succinct, important information about an object suitable for primary labeling of an entity in a client. In many cases, this will be identical to &#x60;name&#x60;, though it is not intended to be an identifier. | [optional][readonly] |
| **type** | **String** | The type of object being created. | [default to &#39;tag&#39;] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **html_url** | **String** | a URL at which the entity is uniquely displayed in the Web app | [optional][readonly] |
| **label** | **String** | The label of the tag. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Tag.new(
  id: null,
  summary: null,
  type: null,
  _self: null,
  html_url: null,
  label: null
)
```

