# OpenapiClient::ChangeEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The time at which the emitting tool detected or generated the event. | [optional][readonly] |
| **type** | **String** | The type of object being created. | [optional][readonly][default to &#39;change_event&#39;] |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) | An array containing Service objects that this change event is associated with. | [optional][readonly] |
| **integration** | [**ChangeEventAllOfIntegration**](ChangeEventAllOfIntegration.md) |  | [optional] |
| **routing_key** | **String** | This is the 32 character Integration Key for an Integration on a Service. The same Integration Key can be used for both alert and change events. | [optional][readonly] |
| **summary** | **String** | A brief text summary of the event. Displayed in PagerDuty to provide information about the change. The maximum permitted length of this property is 1024 characters. | [optional] |
| **source** | **String** | The unique name of the location where the Change Event occurred. | [optional][readonly] |
| **links** | [**Array&lt;ChangeEventAllOfLinks&gt;**](ChangeEventAllOfLinks.md) | List of links to include. | [optional][readonly] |
| **images** | [**Array&lt;ChangeEventAllOfImages&gt;**](ChangeEventAllOfImages.md) |  | [optional][readonly] |
| **custom_details** | **Object** | Additional details about the change event. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ChangeEvent.new(
  timestamp: null,
  type: null,
  services: null,
  integration: null,
  routing_key: null,
  summary: null,
  source: null,
  links: null,
  images: null,
  custom_details: null
)
```

