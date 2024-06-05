# PagerDutyOpenapiClient::ExtensionSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon_url** | **String** | A small logo, 18-by-18 pixels. | [optional][readonly] |
| **logo_url** | **String** | A large logo, 75 pixels high and no more than 300 pixels wide. | [optional][readonly] |
| **label** | **String** | Human friendly display label | [optional][readonly] |
| **key** | **String** | Machine friendly display label | [optional][readonly] |
| **description** | **String** | The long description for the Extension | [optional] |
| **guide_url** | **String** | A link to the extension&#39;s support guide | [optional][readonly] |
| **send_types** | **Array&lt;String&gt;** | The types of PagerDuty incident events that will activate this Extension | [optional] |
| **url** | **String** | The url that the webhook payload will be sent to for this Extension. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ExtensionSchema.new(
  icon_url: null,
  logo_url: null,
  label: null,
  key: null,
  description: null,
  guide_url: null,
  send_types: null,
  url: null
)
```

