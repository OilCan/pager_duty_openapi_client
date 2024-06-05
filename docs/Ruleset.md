# PagerDutyOpenapiClient::Ruleset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Ruleset. | [optional][readonly] |
| **_self** | **String** | the API show URL at which the object is accessible | [optional][readonly] |
| **type** | **String** |  | [optional][readonly] |
| **name** | **String** | Name of the Ruleset. | [optional] |
| **routing_keys** | **Array&lt;String&gt;** | Routing keys routed to this Ruleset. | [optional][readonly] |
| **created_at** | **Time** | The date the Ruleset was created at. | [optional][readonly] |
| **creator** | [**RulesetCreator**](RulesetCreator.md) |  | [optional] |
| **updated_at** | **Time** | The date the Ruleset was last updated. | [optional][readonly] |
| **updater** | [**RulesetUpdater**](RulesetUpdater.md) |  | [optional] |
| **team** | [**RulesetTeam**](RulesetTeam.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Ruleset.new(
  id: null,
  _self: null,
  type: null,
  name: null,
  routing_keys: null,
  created_at: null,
  creator: null,
  updated_at: null,
  updater: null,
  team: null
)
```

