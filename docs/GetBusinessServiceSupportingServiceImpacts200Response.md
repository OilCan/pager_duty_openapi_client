# OpenapiClient::GetBusinessServiceSupportingServiceImpacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **services** | [**Array&lt;Impact&gt;**](Impact.md) |  | [optional] |
| **additional_fields** | [**GetBusinessServiceSupportingServiceImpacts200ResponseAllOfAdditionalFields**](GetBusinessServiceSupportingServiceImpacts200ResponseAllOfAdditionalFields.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetBusinessServiceSupportingServiceImpacts200Response.new(
  limit: null,
  more: null,
  services: null,
  additional_fields: null
)
```

