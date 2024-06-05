# PagerDutyOpenapiClient::AbilitiesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ability**](AbilitiesApi.md#get_ability) | **GET** /abilities/{id} | Test an ability |
| [**list_abilities**](AbilitiesApi.md#list_abilities) | **GET** /abilities | List abilities |


## get_ability

> get_ability(accept, content_type, id)

Test an ability

Test whether your account has a given ability.  \"Abilities\" describes your account's capabilities by feature name. For example `\"teams\"`.  An ability may be available to your account based on things like your pricing plan or account state.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#abilities)  Scoped OAuth requires: `abilities.read` 

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

api_instance = PagerDutyOpenapiClient::AbilitiesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Test an ability
  api_instance.get_ability(accept, content_type, id)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AbilitiesApi->get_ability: #{e}"
end
```

#### Using the get_ability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_ability_with_http_info(accept, content_type, id)

```ruby
begin
  # Test an ability
  data, status_code, headers = api_instance.get_ability_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AbilitiesApi->get_ability_with_http_info: #{e}"
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


## list_abilities

> <ListAbilities200Response> list_abilities(accept, content_type)

List abilities

List all of your account's abilities, by name.  \"Abilities\" describes your account's capabilities by feature name. For example `\"teams\"`.  An ability may be available to your account based on things like your pricing plan or account state.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#abilities)  Scoped OAuth requires: `abilities.read` 

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

api_instance = PagerDutyOpenapiClient::AbilitiesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 

begin
  # List abilities
  result = api_instance.list_abilities(accept, content_type)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AbilitiesApi->list_abilities: #{e}"
end
```

#### Using the list_abilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAbilities200Response>, Integer, Hash)> list_abilities_with_http_info(accept, content_type)

```ruby
begin
  # List abilities
  data, status_code, headers = api_instance.list_abilities_with_http_info(accept, content_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAbilities200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling AbilitiesApi->list_abilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |

### Return type

[**ListAbilities200Response**](ListAbilities200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

