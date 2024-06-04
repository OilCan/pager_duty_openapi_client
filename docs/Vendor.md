# OpenapiClient::Vendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The short name of the vendor | [optional][readonly] |
| **website_url** | **String** | URL of the vendor&#39;s main website | [optional][readonly] |
| **logo_url** | **String** | URL of a logo identifying the vendor | [optional][readonly] |
| **thumbnail_url** | **String** | URL of a small thumbnail image identifying the vendor | [optional][readonly] |
| **description** | **String** | A short description of this vendor, and common use-cases of integrations for this vendor. | [optional][readonly] |
| **integration_guide_url** | **String** | URL of an integration guide for this vendor | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Vendor.new(
  name: null,
  website_url: null,
  logo_url: null,
  thumbnail_url: null,
  description: null,
  integration_guide_url: null
)
```

