# OpenapiClient::ListLicenseAllocations200ResponseAllOfLicenseAllocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**UserReference**](UserReference.md) |  |  |
| **license** | [**Model0**](Model0.md) |  |  |
| **allocated_at** | **Time** | Indicates the date and time the License was allocated to the User |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListLicenseAllocations200ResponseAllOfLicenseAllocationsInner.new(
  user: null,
  license: null,
  allocated_at: null
)
```

