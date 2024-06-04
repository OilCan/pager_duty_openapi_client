# OpenapiClient::StatusPagePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier within Status Page scope that defines a single Post resource. | [optional][readonly] |
| **_self** | **String** | The API resource URL of the Post. | [optional][readonly] |
| **type** | **String** | The type of the object returned by the API - in this case, a Status Page Post. | [optional][readonly][default to &#39;status_page_post&#39;] |
| **post_type** | **String** | The type of the Post. | [optional] |
| **status_page** | [**StatusPageImpactStatusPage**](StatusPageImpactStatusPage.md) |  | [optional] |
| **linked_resource** | [**StatusPagePostLinkedResource**](StatusPagePostLinkedResource.md) |  | [optional] |
| **postmortem** | [**StatusPagePostPostmortem**](StatusPagePostPostmortem.md) |  | [optional] |
| **title** | **String** | The title given to a Post. | [optional] |
| **starts_at** | **Time** | The date and time the Post intent becomes effective - only for maintenance post type. | [optional] |
| **ends_at** | **Time** | The date and time the Post intent is concluded - only for maintenance post type. | [optional] |
| **updates** | [**Array&lt;StatusPagePostUpdatesInner&gt;**](StatusPagePostUpdatesInner.md) | List of status_page_post_update references associated to a Post. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatusPagePost.new(
  id: null,
  _self: null,
  type: null,
  post_type: null,
  status_page: null,
  linked_resource: null,
  postmortem: null,
  title: null,
  starts_at: null,
  ends_at: null,
  updates: null
)
```

