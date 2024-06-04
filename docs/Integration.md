# OpenapiClient::Integration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **name** | **String** | The name of this integration. | [optional] |
| **service** | [**ServiceReference**](ServiceReference.md) |  | [optional] |
| **created_at** | **Time** | The date/time when this integration was created. | [optional][readonly] |
| **vendor** | [**VendorReference**](VendorReference.md) |  | [optional] |
| **integration_email** | **String** | Specify for generic_email_inbound_integration. Must be set to an email address @your-subdomain.pagerduty.com | [optional] |
| **email_incident_creation** | **String** | Specify for generic_email_inbound_integration | [optional] |
| **email_filter_mode** | **String** | Specify for generic_email_inbound_integration. May override email_incident_creation | [optional] |
| **email_parsers** | [**Array&lt;EmailParser&gt;**](EmailParser.md) | Specify for generic_email_inbound_integration. | [optional] |
| **email_parsing_fallback** | **String** | Specify for generic_email_inbound_integration. | [optional] |
| **email_filters** | [**Array&lt;IntegrationAllOfEmailFilters&gt;**](IntegrationAllOfEmailFilters.md) | Specify for generic_email_inbound_integration. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Integration.new(
  type: null,
  name: null,
  service: null,
  created_at: null,
  vendor: null,
  integration_email: null,
  email_incident_creation: null,
  email_filter_mode: null,
  email_parsers: null,
  email_parsing_fallback: null,
  email_filters: null
)
```

