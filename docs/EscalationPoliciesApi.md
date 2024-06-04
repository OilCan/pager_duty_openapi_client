# OpenapiClient::EscalationPoliciesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_escalation_policy**](EscalationPoliciesApi.md#create_escalation_policy) | **POST** /escalation_policies | Create an escalation policy |
| [**delete_escalation_policy**](EscalationPoliciesApi.md#delete_escalation_policy) | **DELETE** /escalation_policies/{id} | Delete an escalation policy |
| [**get_escalation_policy**](EscalationPoliciesApi.md#get_escalation_policy) | **GET** /escalation_policies/{id} | Get an escalation policy |
| [**list_escalation_policies**](EscalationPoliciesApi.md#list_escalation_policies) | **GET** /escalation_policies | List escalation policies |
| [**list_escalation_policy_audit_records**](EscalationPoliciesApi.md#list_escalation_policy_audit_records) | **GET** /escalation_policies/{id}/audit/records | List audit records for an escalation policy |
| [**update_escalation_policy**](EscalationPoliciesApi.md#update_escalation_policy) | **PUT** /escalation_policies/{id} | Update an escalation policy |


## create_escalation_policy

> <CreateEscalationPolicyRequest> create_escalation_policy(accept, content_type, opts)

Create an escalation policy

Creates a new escalation policy. At least one escalation rule must be provided.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  from: 'from_example', # String | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
  create_escalation_policy_request: OpenapiClient::CreateEscalationPolicyRequest.new({escalation_policy: OpenapiClient::EscalationPolicy.new({type: 'escalation_policy', name: 'name_example', escalation_rules: [OpenapiClient::EscalationRule.new({escalation_delay_in_minutes: 37, targets: [OpenapiClient::EscalationTargetReference.new({type: 'user'})]})]})}) # CreateEscalationPolicyRequest | The escalation policy to be created.
}

begin
  # Create an escalation policy
  result = api_instance.create_escalation_policy(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->create_escalation_policy: #{e}"
end
```

#### Using the create_escalation_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEscalationPolicyRequest>, Integer, Hash)> create_escalation_policy_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create an escalation policy
  data, status_code, headers = api_instance.create_escalation_policy_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEscalationPolicyRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->create_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking. | [optional] |
| **create_escalation_policy_request** | [**CreateEscalationPolicyRequest**](CreateEscalationPolicyRequest.md) | The escalation policy to be created. | [optional] |

### Return type

[**CreateEscalationPolicyRequest**](CreateEscalationPolicyRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_escalation_policy

> delete_escalation_policy(accept, content_type, id)

Delete an escalation policy

Deletes an existing escalation policy and rules. The escalation policy must not be in use by any services.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an escalation policy
  api_instance.delete_escalation_policy(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->delete_escalation_policy: #{e}"
end
```

#### Using the delete_escalation_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_escalation_policy_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an escalation policy
  data, status_code, headers = api_instance.delete_escalation_policy_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->delete_escalation_policy_with_http_info: #{e}"
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


## get_escalation_policy

> <CreateEscalationPolicyRequest> get_escalation_policy(accept, content_type, id, opts)

Get an escalation policy

Get information about an existing escalation policy and its rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'services' # String | Array of additional Models to include in response.
}

begin
  # Get an escalation policy
  result = api_instance.get_escalation_policy(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->get_escalation_policy: #{e}"
end
```

#### Using the get_escalation_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEscalationPolicyRequest>, Integer, Hash)> get_escalation_policy_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get an escalation policy
  data, status_code, headers = api_instance.get_escalation_policy_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEscalationPolicyRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->get_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**CreateEscalationPolicyRequest**](CreateEscalationPolicyRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_escalation_policies

> <ListEscalationPolicies200Response> list_escalation_policies(accept, content_type, opts)

List escalation policies

List all of the existing escalation policies.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  user_ids: ['inner_example'], # Array<String> | Filters the results, showing only escalation policies on which any of the users is a target.
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  include: 'services', # String | Array of additional Models to include in response.
  sort_by: 'name' # String | Used to specify the field you wish to sort the results on.
}

begin
  # List escalation policies
  result = api_instance.list_escalation_policies(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->list_escalation_policies: #{e}"
end
```

#### Using the list_escalation_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEscalationPolicies200Response>, Integer, Hash)> list_escalation_policies_with_http_info(accept, content_type, opts)

```ruby
begin
  # List escalation policies
  data, status_code, headers = api_instance.list_escalation_policies_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEscalationPolicies200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->list_escalation_policies_with_http_info: #{e}"
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
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **user_ids** | [**Array&lt;String&gt;**](String.md) | Filters the results, showing only escalation policies on which any of the users is a target. | [optional] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |
| **sort_by** | **String** | Used to specify the field you wish to sort the results on. | [optional][default to &#39;name&#39;] |

### Return type

[**ListEscalationPolicies200Response**](ListEscalationPolicies200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_escalation_policy_audit_records

> <AuditRecordResponseSchema> list_escalation_policy_audit_records(accept, content_type, id, opts)

List audit records for an escalation policy

The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search. If not specified, defaults to `now() - 24 hours` (past 24 hours)
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search. If not specified, defaults to `now()`. May not be more than 31 days after `since`.
}

begin
  # List audit records for an escalation policy
  result = api_instance.list_escalation_policy_audit_records(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->list_escalation_policy_audit_records: #{e}"
end
```

#### Using the list_escalation_policy_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_escalation_policy_audit_records_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List audit records for an escalation policy
  data, status_code, headers = api_instance.list_escalation_policy_audit_records_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->list_escalation_policy_audit_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours) | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;. | [optional] |

### Return type

[**AuditRecordResponseSchema**](AuditRecordResponseSchema.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_escalation_policy

> <CreateEscalationPolicyRequest> update_escalation_policy(accept, content_type, id, opts)

Update an escalation policy

Updates an existing escalation policy and rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::EscalationPoliciesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_escalation_policy_request: OpenapiClient::CreateEscalationPolicyRequest.new({escalation_policy: OpenapiClient::EscalationPolicy.new({type: 'escalation_policy', name: 'name_example', escalation_rules: [OpenapiClient::EscalationRule.new({escalation_delay_in_minutes: 37, targets: [OpenapiClient::EscalationTargetReference.new({type: 'user'})]})]})}) # CreateEscalationPolicyRequest | The escalation policy to be updated.
}

begin
  # Update an escalation policy
  result = api_instance.update_escalation_policy(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->update_escalation_policy: #{e}"
end
```

#### Using the update_escalation_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEscalationPolicyRequest>, Integer, Hash)> update_escalation_policy_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an escalation policy
  data, status_code, headers = api_instance.update_escalation_policy_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEscalationPolicyRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EscalationPoliciesApi->update_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_escalation_policy_request** | [**CreateEscalationPolicyRequest**](CreateEscalationPolicyRequest.md) | The escalation policy to be updated. | [optional] |

### Return type

[**CreateEscalationPolicyRequest**](CreateEscalationPolicyRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

