# PagerDutyOpenapiClient::CreateEntityTypeByIdChangeTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add** | [**Array&lt;TagsToAdd&gt;**](TagsToAdd.md) | Array of tags and/or tag references to add to the entity. For elements with type &#x60;tag_reference&#x60;, the tag with the corresponding &#x60;id&#x60; is added to the entity. For elements with type &#x60;tag&#x60;, if there is an existing tag with the given label that tag is added to the entity. If there is no existing tag with that label and the user has permission to create tags, a new tag is created with that label and assigned to the entity.  | [optional] |
| **remove** | [**Array&lt;TagsToRemove&gt;**](TagsToRemove.md) | Array of tag references to remove from the entity. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateEntityTypeByIdChangeTagsRequest.new(
  add: null,
  remove: null
)
```

