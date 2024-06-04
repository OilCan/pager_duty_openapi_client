# OpenapiClient::LicenseWithCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Uniquely identifies the resource |  |
| **description** | **String** | Description of the License. May include the names of add-ons associated with the License, if there are any.  |  |
| **name** | **String** | Name of the License.  |  |
| **valid_roles** | **Array&lt;String&gt;** | The roles a User with this License can have |  |
| **role_group** | **String** | Indicates whether this License is assignable to full or stakeholder Users | [optional] |
| **type** | **String** | Type of object | [optional] |
| **_self** | **String** | API URL to access the License | [optional] |
| **html_url** | **String** | HTML URL to access the License | [optional] |
| **summary** | **String** | Summary of the License | [optional] |
| **current_value** | **Integer** | How many of these Licenses are currently allocated to Users | [optional] |
| **allocations_available** | **Integer** | How many of these licenses are available to be allocated to a user. If this value is \&quot;null\&quot; then there is no limit on the number of allocations allowed.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LicenseWithCounts.new(
  id: null,
  description: null,
  name: null,
  valid_roles: null,
  role_group: FullUser,
  type: null,
  _self: null,
  html_url: null,
  summary: null,
  current_value: null,
  allocations_available: null
)
```

