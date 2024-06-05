# PagerDutyOpenapiClient::AuditApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_audit_records**](AuditApi.md#list_audit_records) | **GET** /audit/records | List audit records |


## list_audit_records

> <AuditRecordResponseSchema> list_audit_records(accept, content_type, opts)

List audit records

List audit trail records matching provided query params or default criteria.  The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  Only admins, account owners, or global API tokens on PagerDuty account [pricing plans](https://www.pagerduty.com/pricing) with the \"Audit Trail\" feature can access this endpoint.  For other role based access to audit records by resource ID, see the resource's API documentation.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 

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

api_instance = PagerDutyOpenapiClient::AuditApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search. If not specified, defaults to `now() - 24 hours` (past 24 hours)
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end of the date range over which you want to search. If not specified, defaults to `now()`. May not be more than 31 days after `since`.
  root_resource_types: 'users', # String | Resource type filter for the root_resource.
  actor_type: 'user_reference', # String | Actor type filter.
  actor_id: 'P123456', # String | Actor Id filter. Must be qualified by providing the `actor_type` param.
  method_type: 'browser', # String | Method type filter.
  method_truncated_token: '3xyz', # String | Method truncated_token filter. Must be qualified by providing the `method_type` param.
  actions: 'create' # String | Action filter
}

begin
  # List audit records
  result = api_instance.list_audit_records(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AuditApi->list_audit_records: #{e}"
end
```

#### Using the list_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_audit_records_with_http_info(accept, content_type, opts)

```ruby
begin
  # List audit records
  data, status_code, headers = api_instance.list_audit_records_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AuditApi->list_audit_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours) | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;. | [optional] |
| **root_resource_types** | **String** | Resource type filter for the root_resource. | [optional] |
| **actor_type** | **String** | Actor type filter. | [optional] |
| **actor_id** | **String** | Actor Id filter. Must be qualified by providing the &#x60;actor_type&#x60; param. | [optional] |
| **method_type** | **String** | Method type filter. | [optional] |
| **method_truncated_token** | **String** | Method truncated_token filter. Must be qualified by providing the &#x60;method_type&#x60; param. | [optional] |
| **actions** | **String** | Action filter | [optional] |

### Return type

[**AuditRecordResponseSchema**](AuditRecordResponseSchema.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

