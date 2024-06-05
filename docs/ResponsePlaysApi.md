# PagerDutyOpenapiClient::ResponsePlaysApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_response_play**](ResponsePlaysApi.md#create_response_play) | **POST** /response_plays | Create a Response Play |
| [**delete_response_play**](ResponsePlaysApi.md#delete_response_play) | **DELETE** /response_plays/{id} | Delete a Response Play |
| [**get_response_play**](ResponsePlaysApi.md#get_response_play) | **GET** /response_plays/{id} | Get a Response Play |
| [**list_response_plays**](ResponsePlaysApi.md#list_response_plays) | **GET** /response_plays | List Response Plays |
| [**run_response_play**](ResponsePlaysApi.md#run_response_play) | **POST** /response_plays/{response_play_id}/run | Run a response play |
| [**update_response_play**](ResponsePlaysApi.md#update_response_play) | **PUT** /response_plays/{id} | Update a Response Play |


## create_response_play

> <CreateResponsePlay201Response> create_response_play(accept, content_type, from, opts)

Create a Response Play

Creates a new Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_response_play_request: PagerDutyOpenapiClient::CreateResponsePlayRequest.new({response_play: PagerDutyOpenapiClient::ResponsePlay.new}) # CreateResponsePlayRequest | The Response Play to be created.
}

begin
  # Create a Response Play
  result = api_instance.create_response_play(accept, content_type, from, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->create_response_play: #{e}"
end
```

#### Using the create_response_play_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponsePlay201Response>, Integer, Hash)> create_response_play_with_http_info(accept, content_type, from, opts)

```ruby
begin
  # Create a Response Play
  data, status_code, headers = api_instance.create_response_play_with_http_info(accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponsePlay201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->create_response_play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_response_play_request** | [**CreateResponsePlayRequest**](CreateResponsePlayRequest.md) | The Response Play to be created. | [optional] |

### Return type

[**CreateResponsePlay201Response**](CreateResponsePlay201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_response_play

> delete_response_play(id, accept, content_type, from)

Delete a Response Play

Delete an existing Response Play. Once the Response Play is deleted, the action cannot be undone.  WARNING: When the Response Play is deleted, it is also removed from any Services that were using it.  Response Plays allow you to create packages of Incident Actions that can be applied to an Incident.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.

begin
  # Delete a Response Play
  api_instance.delete_response_play(id, accept, content_type, from)
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->delete_response_play: #{e}"
end
```

#### Using the delete_response_play_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_response_play_with_http_info(id, accept, content_type, from)

```ruby
begin
  # Delete a Response Play
  data, status_code, headers = api_instance.delete_response_play_with_http_info(id, accept, content_type, from)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->delete_response_play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_response_play

> <CreateResponsePlay201Response> get_response_play(id, accept, content_type, opts)

Get a Response Play

Get details about an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the `From` header is required. Scoped OAuth requires: `response_plays.read` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  from: 'from_example' # String | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
}

begin
  # Get a Response Play
  result = api_instance.get_response_play(id, accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->get_response_play: #{e}"
end
```

#### Using the get_response_play_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponsePlay201Response>, Integer, Hash)> get_response_play_with_http_info(id, accept, content_type, opts)

```ruby
begin
  # Get a Response Play
  data, status_code, headers = api_instance.get_response_play_with_http_info(id, accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponsePlay201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->get_response_play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking. | [optional] |

### Return type

[**CreateResponsePlay201Response**](CreateResponsePlay201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_response_plays

> <ListResponsePlays200Response> list_response_plays(accept, content_type, opts)

List Response Plays

List all of the existing Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the `From` header is required.  Scoped OAuth requires: `response_plays.read` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  filter_for_manual_run: true, # Boolean | When this parameter is present, only those Response Plays that can be run manually will be returned.
  from: 'from_example' # String | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
}

begin
  # List Response Plays
  result = api_instance.list_response_plays(accept, content_type, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->list_response_plays: #{e}"
end
```

#### Using the list_response_plays_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListResponsePlays200Response>, Integer, Hash)> list_response_plays_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Response Plays
  data, status_code, headers = api_instance.list_response_plays_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListResponsePlays200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->list_response_plays_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **filter_for_manual_run** | **Boolean** | When this parameter is present, only those Response Plays that can be run manually will be returned. | [optional] |
| **from** | **String** | The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking. | [optional] |

### Return type

[**ListResponsePlays200Response**](ListResponsePlays200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_response_play

> <RunResponsePlay200Response> run_response_play(accept, content_type, response_play_id, from, opts)

Run a response play

Run a specified response play on a given incident.  Response Plays are a package of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
response_play_id = 'response_play_id_example' # String | The response play ID of the response play associated with the request.
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  merge_incidents200_response: PagerDutyOpenapiClient::MergeIncidents200Response.new({incident: PagerDutyOpenapiClient::IncidentReference.new({type: 'incident_reference'})}) # MergeIncidents200Response | 
}

begin
  # Run a response play
  result = api_instance.run_response_play(accept, content_type, response_play_id, from, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->run_response_play: #{e}"
end
```

#### Using the run_response_play_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunResponsePlay200Response>, Integer, Hash)> run_response_play_with_http_info(accept, content_type, response_play_id, from, opts)

```ruby
begin
  # Run a response play
  data, status_code, headers = api_instance.run_response_play_with_http_info(accept, content_type, response_play_id, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunResponsePlay200Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->run_response_play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **response_play_id** | **String** | The response play ID of the response play associated with the request. |  |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **merge_incidents200_response** | [**MergeIncidents200Response**](MergeIncidents200Response.md) |  | [optional] |

### Return type

[**RunResponsePlay200Response**](RunResponsePlay200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_response_play

> <CreateResponsePlay201Response> update_response_play(id, accept, content_type, from, opts)

Update a Response Play

Updates an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 

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

api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
id = 'id_example' # String | The ID of the resource.
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_response_play_request: PagerDutyOpenapiClient::CreateResponsePlayRequest.new({response_play: PagerDutyOpenapiClient::ResponsePlay.new}) # CreateResponsePlayRequest | The Response Play to be updated.
}

begin
  # Update a Response Play
  result = api_instance.update_response_play(id, accept, content_type, from, opts)
  p result
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->update_response_play: #{e}"
end
```

#### Using the update_response_play_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResponsePlay201Response>, Integer, Hash)> update_response_play_with_http_info(id, accept, content_type, from, opts)

```ruby
begin
  # Update a Response Play
  data, status_code, headers = api_instance.update_response_play_with_http_info(id, accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResponsePlay201Response>
rescue PagerDutyOpenapiClient::ApiError => e
  puts "Error when calling ResponsePlaysApi->update_response_play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the resource. |  |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_response_play_request** | [**CreateResponsePlayRequest**](CreateResponsePlayRequest.md) | The Response Play to be updated. | [optional] |

### Return type

[**CreateResponsePlay201Response**](CreateResponsePlay201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

