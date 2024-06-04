# OpenapiClient::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [default to &#39;team&#39;] |
| **name** | **String** | The name of the team. |  |
| **description** | **String** | The description of the team. | [optional] |
| **default_role** | **String** | The team is private if the value is \&quot;none\&quot;, or public if it is \&quot;manager\&quot; (the default permissions for a non-member of the team are either \&quot;none\&quot;, or their base role up until \&quot;manager\&quot;). | [optional][default to &#39;manager&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Team.new(
  type: null,
  name: null,
  description: null,
  default_role: null
)
```

