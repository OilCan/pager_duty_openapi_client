# OpenapiClient::OrchestrationWarningInvalidData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A description of the warning and any potential side effects. | [optional] |
| **rule_id** | **String** | The ID of the rule using the feature. | [optional] |
| **feature** | **String** | The feature that includes invalid data.  Example values include:   * &#x60;incident_custom_field_updates&#x60;   * &#x60;cache_variable:annotate&#x60;   * &#x60;cache_variable:conditions&#x60;   * &#x60;cache_variable:automation_actions&#x60;  | [optional] |
| **feature_type** | **String** | Specifies the feature type of the impacted item.  Example values include:   * &#x60;actions&#x60;   * &#x60;conditions&#x60;  | [optional] |
| **warning_type** | **String** | The type of warning that is being returned for the rule. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrchestrationWarningInvalidData.new(
  message: null,
  rule_id: null,
  feature: null,
  feature_type: null,
  warning_type: null
)
```

