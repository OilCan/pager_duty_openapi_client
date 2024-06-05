# PagerDutyOpenapiClient::Extension

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the extension. |  |
| **type** | **String** | The type of object being created. | [optional][default to &#39;extension&#39;] |
| **endpoint_url** | **String** | The url of the extension. | [optional] |
| **extension_objects** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) | The objects for which the extension applies |  |
| **extension_schema** | [**ExtensionSchemaReference**](ExtensionSchemaReference.md) |  |  |
| **temporarily_disabled** | **Boolean** | Whether or not this extension is temporarily disabled; for example, a webhook extension that is repeatedly rejected by the server. | [optional][readonly][default to false] |
| **config** | **Object** | The object that contains extension configuration values depending on the extension schema specification. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Extension.new(
  name: null,
  type: null,
  endpoint_url: null,
  extension_objects: null,
  extension_schema: null,
  temporarily_disabled: null,
  config: null
)
```

