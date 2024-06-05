# PagerDutyOpenapiClient::RulesetsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ruleset**](RulesetsApi.md#create_ruleset) | **POST** /rulesets | Create a Ruleset |
| [**create_ruleset_event_rule**](RulesetsApi.md#create_ruleset_event_rule) | **POST** /rulesets/{id}/rules | Create an Event Rule |
| [**delete_ruleset**](RulesetsApi.md#delete_ruleset) | **DELETE** /rulesets/{id} | Delete a Ruleset |
| [**delete_ruleset_event_rule**](RulesetsApi.md#delete_ruleset_event_rule) | **DELETE** /rulesets/{id}/rules/{rule_id} | Delete an Event Rule |
| [**get_ruleset**](RulesetsApi.md#get_ruleset) | **GET** /rulesets/{id} | Get a Ruleset |
| [**get_ruleset_event_rule**](RulesetsApi.md#get_ruleset_event_rule) | **GET** /rulesets/{id}/rules/{rule_id} | Get an Event Rule |
| [**list_ruleset_event_rules**](RulesetsApi.md#list_ruleset_event_rules) | **GET** /rulesets/{id}/rules | List Event Rules |
| [**list_rulesets**](RulesetsApi.md#list_rulesets) | **GET** /rulesets | List Rulesets |
| [**update_ruleset**](RulesetsApi.md#update_ruleset) | **PUT** /rulesets/{id} | Update a Ruleset |
| [**update_ruleset_event_rule**](RulesetsApi.md#update_ruleset_event_rule) | **PUT** /rulesets/{id}/rules/{rule_id} | Update an Event Rule |


## create_ruleset

> <CreateRuleset201Response> create_ruleset(accept, content_type, opts)

Create a Ruleset

Create a new Ruleset. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_ruleset_request: PagerDutyOpenapiClient::CreateRulesetRequest.new({ruleset: PagerDutyOpenapiClient::CreateRulesetRequestRuleset.new({name: 'name_example'})}) # CreateRulesetRequest | 
}

begin
  # Create a Ruleset
  result = api_instance.create_ruleset(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->create_ruleset: #{e}"
end
```

#### Using the create_ruleset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRuleset201Response>, Integer, Hash)> create_ruleset_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a Ruleset
  data, status_code, headers = api_instance.create_ruleset_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRuleset201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->create_ruleset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_ruleset_request** | [**CreateRulesetRequest**](CreateRulesetRequest.md) |  | [optional] |

### Return type

[**CreateRuleset201Response**](CreateRuleset201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ruleset_event_rule

> <CreateRulesetEventRule201Response> create_ruleset_event_rule(accept, content_type, id, opts)

Create an Event Rule

Create a new Event Rule. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Note: Create and Update on rules will accept 'description' or 'summary' interchangeably as an extraction action target. Get and List on rules will always return 'summary' as the target. If you are expecting 'description' please change your automation code to expect 'summary' instead.  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_ruleset_event_rule_request: PagerDutyOpenapiClient::CreateRulesetEventRuleRequest.new({rule: PagerDutyOpenapiClient::EventRule.new}) # CreateRulesetEventRuleRequest | 
}

begin
  # Create an Event Rule
  result = api_instance.create_ruleset_event_rule(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->create_ruleset_event_rule: #{e}"
end
```

#### Using the create_ruleset_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRulesetEventRule201Response>, Integer, Hash)> create_ruleset_event_rule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create an Event Rule
  data, status_code, headers = api_instance.create_ruleset_event_rule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRulesetEventRule201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->create_ruleset_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_ruleset_event_rule_request** | [**CreateRulesetEventRuleRequest**](CreateRulesetEventRuleRequest.md) |  | [optional] |

### Return type

[**CreateRulesetEventRule201Response**](CreateRulesetEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ruleset

> delete_ruleset(accept, content_type, id)

Delete a Ruleset

Delete a Ruleset. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a Ruleset
  api_instance.delete_ruleset(accept, content_type, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->delete_ruleset: #{e}"
end
```

#### Using the delete_ruleset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ruleset_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a Ruleset
  data, status_code, headers = api_instance.delete_ruleset_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->delete_ruleset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ruleset_event_rule

> delete_ruleset_event_rule(accept, content_type, id, rule_id)

Delete an Event Rule

Delete an Event Rule. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.

begin
  # Delete an Event Rule
  api_instance.delete_ruleset_event_rule(accept, content_type, id, rule_id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->delete_ruleset_event_rule: #{e}"
end
```

#### Using the delete_ruleset_event_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id)

```ruby
begin
  # Delete an Event Rule
  data, status_code, headers = api_instance.delete_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->delete_ruleset_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ruleset

> <CreateRuleset201Response> get_ruleset(accept, content_type, id)

Get a Ruleset

Get a Ruleset. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a Ruleset
  result = api_instance.get_ruleset(accept, content_type, id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->get_ruleset: #{e}"
end
```

#### Using the get_ruleset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRuleset201Response>, Integer, Hash)> get_ruleset_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a Ruleset
  data, status_code, headers = api_instance.get_ruleset_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRuleset201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->get_ruleset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateRuleset201Response**](CreateRuleset201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ruleset_event_rule

> <CreateRulesetEventRule201Response> get_ruleset_event_rule(accept, content_type, id, rule_id)

Get an Event Rule

Get an Event Rule. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Note: Create and Update on rules will accept 'description' or 'summary' interchangeably as an extraction action target. Get and List on rules will always return 'summary' as the target. If you are expecting 'description' please change your automation code to expect 'summary' instead.  Scoped OAuth requires: `event_rules.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.

begin
  # Get an Event Rule
  result = api_instance.get_ruleset_event_rule(accept, content_type, id, rule_id)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->get_ruleset_event_rule: #{e}"
end
```

#### Using the get_ruleset_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRulesetEventRule201Response>, Integer, Hash)> get_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id)

```ruby
begin
  # Get an Event Rule
  data, status_code, headers = api_instance.get_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRulesetEventRule201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->get_ruleset_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |

### Return type

[**CreateRulesetEventRule201Response**](CreateRulesetEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ruleset_event_rules

> <ListRulesetEventRules200Response> list_ruleset_event_rules(accept, content_type, id, opts)

List Event Rules

List all Event Rules on a Ruleset. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Note: Create and Update on rules will accept 'description' or 'summary' interchangeably as an extraction action target. Get and List on rules will always return 'summary' as the target. If you are expecting 'description' please change your automation code to expect 'summary' instead.  Scoped OAuth requires: `event_rules.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List Event Rules
  result = api_instance.list_ruleset_event_rules(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->list_ruleset_event_rules: #{e}"
end
```

#### Using the list_ruleset_event_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRulesetEventRules200Response>, Integer, Hash)> list_ruleset_event_rules_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List Event Rules
  data, status_code, headers = api_instance.list_ruleset_event_rules_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRulesetEventRules200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->list_ruleset_event_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |

### Return type

[**ListRulesetEventRules200Response**](ListRulesetEventRules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rulesets

> <ListRulesets200Response> list_rulesets(accept, content_type, opts)

List Rulesets

List all Rulesets <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.read` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
}

begin
  # List Rulesets
  result = api_instance.list_rulesets(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->list_rulesets: #{e}"
end
```

#### Using the list_rulesets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRulesets200Response>, Integer, Hash)> list_rulesets_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Rulesets
  data, status_code, headers = api_instance.list_rulesets_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRulesets200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->list_rulesets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |

### Return type

[**ListRulesets200Response**](ListRulesets200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ruleset

> <CreateRuleset201Response> update_ruleset(accept, content_type, id, opts)

Update a Ruleset

Update a Ruleset. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  update_ruleset_request: PagerDutyOpenapiClient::UpdateRulesetRequest.new({ruleset: PagerDutyOpenapiClient::Ruleset.new}) # UpdateRulesetRequest | 
}

begin
  # Update a Ruleset
  result = api_instance.update_ruleset(accept, content_type, id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->update_ruleset: #{e}"
end
```

#### Using the update_ruleset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRuleset201Response>, Integer, Hash)> update_ruleset_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a Ruleset
  data, status_code, headers = api_instance.update_ruleset_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRuleset201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->update_ruleset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **update_ruleset_request** | [**UpdateRulesetRequest**](UpdateRulesetRequest.md) |  | [optional] |

### Return type

[**CreateRuleset201Response**](CreateRuleset201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ruleset_event_rule

> <CreateRulesetEventRule201Response> update_ruleset_event_rule(accept, content_type, id, rule_id, opts)

Update an Event Rule

Update an Event Rule. Note that the endpoint supports partial updates, so any number of the writable fields can be provided. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Rulesets allow you to route events to an endpoint and create collections of Event Rules, which define sets of actions to take based on event content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#rulesets)  Note: Create and Update on rules will accept 'description' or 'summary' interchangeably as an extraction action target. Get and List on rules will always return 'summary' as the target. If you are expecting 'description' please change your automation code to expect 'summary' instead.  Scoped OAuth requires: `event_rules.write` 

### Examples

```ruby
require 'time'
require 'pager_duty_openapi_client'
# setup authorization
PagerDutyOpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = PagerDutyOpenapiClient::RulesetsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.
opts = {
  update_ruleset_event_rule_request: PagerDutyOpenapiClient::UpdateRulesetEventRuleRequest.new({rule_id: 'rule_id_example'}) # UpdateRulesetEventRuleRequest | 
}

begin
  # Update an Event Rule
  result = api_instance.update_ruleset_event_rule(accept, content_type, id, rule_id, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->update_ruleset_event_rule: #{e}"
end
```

#### Using the update_ruleset_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRulesetEventRule201Response>, Integer, Hash)> update_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id, opts)

```ruby
begin
  # Update an Event Rule
  data, status_code, headers = api_instance.update_ruleset_event_rule_with_http_info(accept, content_type, id, rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRulesetEventRule201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling RulesetsApi->update_ruleset_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |
| **update_ruleset_event_rule_request** | [**UpdateRulesetEventRuleRequest**](UpdateRulesetEventRuleRequest.md) |  | [optional] |

### Return type

[**CreateRulesetEventRule201Response**](CreateRulesetEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

