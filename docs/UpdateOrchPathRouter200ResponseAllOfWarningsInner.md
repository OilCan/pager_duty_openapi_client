# OpenapiClient::UpdateOrchPathRouter200ResponseAllOfWarningsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A description of the warning and any potential side effects. | [optional] |
| **rule_id** | **String** | The ID of the rule using the feature. | [optional] |
| **feature** | **String** | The feature that the current account plan does not have access to.  Example values include: * &#x60;threshold_condition&#x60; * &#x60;nested_rules&#x60; * &#x60;suspend&#x60; * &#x60;automation_actions&#x60; * &#x60;cache_variable:automation_actions&#x60; * &#x60;cache_variable:annotate&#x60; * &#x60;variables&#x60; * &#x60;interpolation:annotate&#x60; * &#x60;interpolation:extractions&#x60; * &#x60;interpolation:incident_custom_field_updates&#x60; * &#x60;suppress&#x60; * &#x60;incident_custom_field_updates&#x60;  | [optional] |
| **feature_type** | **String** | Specifies whether the feature is a part of the rule&#39;s conditions, or its actions.  Example values include: * &#x60;conditions&#x60; * &#x60;actions&#x60; * &#x60;nested_rules&#x60; * &#x60;global_orchestrations&#x60;  | [optional] |
| **warning_type** | **String** | The type of warning that is being returned for the rule. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateOrchPathRouter200ResponseAllOfWarningsInner.new(
  message: null,
  rule_id: null,
  feature: null,
  feature_type: null,
  warning_type: null
)
```

