# OpenapiClient::TeamsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_team**](TeamsApi.md#create_team) | **POST** /teams | Create a team |
| [**create_team_notification_subscriptions**](TeamsApi.md#create_team_notification_subscriptions) | **POST** /teams/{id}/notification_subscriptions | Create Team Notification Subscriptions |
| [**delete_team**](TeamsApi.md#delete_team) | **DELETE** /teams/{id} | Delete a team |
| [**delete_team_escalation_policy**](TeamsApi.md#delete_team_escalation_policy) | **DELETE** /teams/{id}/escalation_policies/{escalation_policy_id} | Remove an escalation policy from a team |
| [**delete_team_user**](TeamsApi.md#delete_team_user) | **DELETE** /teams/{id}/users/{user_id} | Remove a user from a team |
| [**get_team**](TeamsApi.md#get_team) | **GET** /teams/{id} | Get a team |
| [**get_team_notification_subscriptions**](TeamsApi.md#get_team_notification_subscriptions) | **GET** /teams/{id}/notification_subscriptions | List Team Notification Subscriptions |
| [**list_team_users**](TeamsApi.md#list_team_users) | **GET** /teams/{id}/members | List members of a team |
| [**list_teams**](TeamsApi.md#list_teams) | **GET** /teams | List teams |
| [**list_teams_audit_records**](TeamsApi.md#list_teams_audit_records) | **GET** /teams/{id}/audit/records | List audit records for a team |
| [**remove_team_notification_subscriptions**](TeamsApi.md#remove_team_notification_subscriptions) | **POST** /teams/{id}/notification_subscriptions/unsubscribe |  |
| [**update_team**](TeamsApi.md#update_team) | **PUT** /teams/{id} | Update a team |
| [**update_team_escalation_policy**](TeamsApi.md#update_team_escalation_policy) | **PUT** /teams/{id}/escalation_policies/{escalation_policy_id} | Add an escalation policy to a team |
| [**update_team_user**](TeamsApi.md#update_team_user) | **PUT** /teams/{id}/users/{user_id} | Add a user to a team |


## create_team

> <CreateTeamRequest> create_team(accept, content_type, opts)

Create a team

Create a new Team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_team_request: OpenapiClient::CreateTeamRequest.new({team: OpenapiClient::Team.new({type: 'team', name: 'name_example'})}) # CreateTeamRequest | The team to be created.
}

begin
  # Create a team
  result = api_instance.create_team(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->create_team: #{e}"
end
```

#### Using the create_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamRequest>, Integer, Hash)> create_team_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a team
  data, status_code, headers = api_instance.create_team_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->create_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_team_request** | [**CreateTeamRequest**](CreateTeamRequest.md) | The team to be created. | [optional] |

### Return type

[**CreateTeamRequest**](CreateTeamRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_notification_subscriptions

> <CreateBusinessServiceNotificationSubscribers200Response> create_team_notification_subscriptions(accept, id, opts)

Create Team Notification Subscriptions

Create new Notification Subscriptions for the given Team.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_team_notification_subscriptions_request: OpenapiClient::CreateTeamNotificationSubscriptionsRequest.new({subscribables: [OpenapiClient::NotificationSubscribable.new]}) # CreateTeamNotificationSubscriptionsRequest | The entities to subscribe to.
}

begin
  # Create Team Notification Subscriptions
  result = api_instance.create_team_notification_subscriptions(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->create_team_notification_subscriptions: #{e}"
end
```

#### Using the create_team_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessServiceNotificationSubscribers200Response>, Integer, Hash)> create_team_notification_subscriptions_with_http_info(accept, id, opts)

```ruby
begin
  # Create Team Notification Subscriptions
  data, status_code, headers = api_instance.create_team_notification_subscriptions_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessServiceNotificationSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->create_team_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_team_notification_subscriptions_request** | [**CreateTeamNotificationSubscriptionsRequest**](CreateTeamNotificationSubscriptionsRequest.md) | The entities to subscribe to. | [optional] |

### Return type

[**CreateBusinessServiceNotificationSubscribers200Response**](CreateBusinessServiceNotificationSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> delete_team(accept, content_type, id, opts)

Delete a team

Remove an existing team.  Succeeds only if the team has no associated Escalation Policies, Services, Schedules and Subteams.  All associated unresovled incidents will be reassigned to another team (if specified) or will loose team association, thus becoming account-level (with visibility implications).  Note that the incidents reassignment process is asynchronous and has no guarantee to complete before the API call return.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  reassignment_team: 'reassignment_team_example' # String | Team to reassign unresolved incident to. If an unresolved incident exists on both the reassignment team and the team being deleted, a duplicate will not be made. If not supplied, unresolved incidents will be made account-level. 
}

begin
  # Delete a team
  api_instance.delete_team(accept, content_type, id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team: #{e}"
end
```

#### Using the delete_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_team_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Delete a team
  data, status_code, headers = api_instance.delete_team_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **reassignment_team** | **String** | Team to reassign unresolved incident to. If an unresolved incident exists on both the reassignment team and the team being deleted, a duplicate will not be made. If not supplied, unresolved incidents will be made account-level.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_escalation_policy

> delete_team_escalation_policy(accept, content_type, id, escalation_policy_id)

Remove an escalation policy from a team

Remove an escalation policy from a team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
escalation_policy_id = 'escalation_policy_id_example' # String | The escalation policy ID on the team.

begin
  # Remove an escalation policy from a team
  api_instance.delete_team_escalation_policy(accept, content_type, id, escalation_policy_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team_escalation_policy: #{e}"
end
```

#### Using the delete_team_escalation_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_team_escalation_policy_with_http_info(accept, content_type, id, escalation_policy_id)

```ruby
begin
  # Remove an escalation policy from a team
  data, status_code, headers = api_instance.delete_team_escalation_policy_with_http_info(accept, content_type, id, escalation_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **escalation_policy_id** | **String** | The escalation policy ID on the team. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_user

> delete_team_user(accept, content_type, id, user_id)

Remove a user from a team

Remove a user from a team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
user_id = 'user_id_example' # String | The user ID on the team.

begin
  # Remove a user from a team
  api_instance.delete_team_user(accept, content_type, id, user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team_user: #{e}"
end
```

#### Using the delete_team_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_team_user_with_http_info(accept, content_type, id, user_id)

```ruby
begin
  # Remove a user from a team
  data, status_code, headers = api_instance.delete_team_user_with_http_info(accept, content_type, id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->delete_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **user_id** | **String** | The user ID on the team. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> <CreateTeamRequest> get_team(accept, content_type, id, opts)

Get a team

Get details about an existing team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.read` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'privileges' # String | Array of additional Models to include in response.
}

begin
  # Get a team
  result = api_instance.get_team(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamRequest>, Integer, Hash)> get_team_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a team
  data, status_code, headers = api_instance.get_team_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->get_team_with_http_info: #{e}"
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

[**CreateTeamRequest**](CreateTeamRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team_notification_subscriptions

> <GetTeamNotificationSubscriptions200Response> get_team_notification_subscriptions(accept, id)

List Team Notification Subscriptions

Retrieve a list of Notification Subscriptions the given Team has.  <!-- theme: warning --> > Teams must be added through `POST /teams/{id}/notification_subscriptions` to be returned from this endpoint.  Scoped OAuth requires: `subscribers.read` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # List Team Notification Subscriptions
  result = api_instance.get_team_notification_subscriptions(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->get_team_notification_subscriptions: #{e}"
end
```

#### Using the get_team_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTeamNotificationSubscriptions200Response>, Integer, Hash)> get_team_notification_subscriptions_with_http_info(accept, id)

```ruby
begin
  # List Team Notification Subscriptions
  data, status_code, headers = api_instance.get_team_notification_subscriptions_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTeamNotificationSubscriptions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->get_team_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetTeamNotificationSubscriptions200Response**](GetTeamNotificationSubscriptions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_users

> <ListTeamUsers200Response> list_team_users(accept, content_type, id, opts)

List members of a team

Get information about members on a team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.read` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  include: 'users' # String | Array of additional Models to include in response.
}

begin
  # List members of a team
  result = api_instance.list_team_users(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_team_users: #{e}"
end
```

#### Using the list_team_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeamUsers200Response>, Integer, Hash)> list_team_users_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List members of a team
  data, status_code, headers = api_instance.list_team_users_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeamUsers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_team_users_with_http_info: #{e}"
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
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**ListTeamUsers200Response**](ListTeamUsers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <ListTeams200Response> list_teams(accept, content_type, opts)

List teams

List teams of your PagerDuty account, optionally filtered by a search query.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.read` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example' # String | Filters the result, showing only the records whose name matches the query.
}

begin
  # List teams
  result = api_instance.list_teams(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeams200Response>, Integer, Hash)> list_teams_with_http_info(accept, content_type, opts)

```ruby
begin
  # List teams
  data, status_code, headers = api_instance.list_teams_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeams200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_teams_with_http_info: #{e}"
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

### Return type

[**ListTeams200Response**](ListTeams200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams_audit_records

> <AuditRecordResponseSchema> list_teams_audit_records(accept, content_type, id, opts)

List audit records for a team

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

api_instance = OpenapiClient::TeamsApi.new
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
  # List audit records for a team
  result = api_instance.list_teams_audit_records(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_teams_audit_records: #{e}"
end
```

#### Using the list_teams_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_teams_audit_records_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List audit records for a team
  data, status_code, headers = api_instance.list_teams_audit_records_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->list_teams_audit_records_with_http_info: #{e}"
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


## remove_team_notification_subscriptions

> <RemoveBusinessServiceNotificationSubscriber200Response> remove_team_notification_subscriptions(accept, id, opts)



Unsubscribe the given Team from Notifications on the matching Subscribable entities.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_team_notification_subscriptions_request: OpenapiClient::CreateTeamNotificationSubscriptionsRequest.new({subscribables: [OpenapiClient::NotificationSubscribable.new]}) # CreateTeamNotificationSubscriptionsRequest | The entities to unsubscribe from.
}

begin
  
  result = api_instance.remove_team_notification_subscriptions(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->remove_team_notification_subscriptions: #{e}"
end
```

#### Using the remove_team_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveBusinessServiceNotificationSubscriber200Response>, Integer, Hash)> remove_team_notification_subscriptions_with_http_info(accept, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_team_notification_subscriptions_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveBusinessServiceNotificationSubscriber200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->remove_team_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_team_notification_subscriptions_request** | [**CreateTeamNotificationSubscriptionsRequest**](CreateTeamNotificationSubscriptionsRequest.md) | The entities to unsubscribe from. | [optional] |

### Return type

[**RemoveBusinessServiceNotificationSubscriber200Response**](RemoveBusinessServiceNotificationSubscriber200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_team

> <CreateTeamRequest> update_team(accept, content_type, id, opts)

Update a team

Update an existing team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_team_request: OpenapiClient::CreateTeamRequest.new({team: OpenapiClient::Team.new({type: 'team', name: 'name_example'})}) # CreateTeamRequest | The team to be updated.
}

begin
  # Update a team
  result = api_instance.update_team(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTeamRequest>, Integer, Hash)> update_team_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a team
  data, status_code, headers = api_instance.update_team_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTeamRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_team_request** | [**CreateTeamRequest**](CreateTeamRequest.md) | The team to be updated. | [optional] |

### Return type

[**CreateTeamRequest**](CreateTeamRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_team_escalation_policy

> update_team_escalation_policy(accept, content_type, id, escalation_policy_id)

Add an escalation policy to a team

Add an escalation policy to a team.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
escalation_policy_id = 'escalation_policy_id_example' # String | The escalation policy ID on the team.

begin
  # Add an escalation policy to a team
  api_instance.update_team_escalation_policy(accept, content_type, id, escalation_policy_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team_escalation_policy: #{e}"
end
```

#### Using the update_team_escalation_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_team_escalation_policy_with_http_info(accept, content_type, id, escalation_policy_id)

```ruby
begin
  # Add an escalation policy to a team
  data, status_code, headers = api_instance.update_team_escalation_policy_with_http_info(accept, content_type, id, escalation_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team_escalation_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **escalation_policy_id** | **String** | The escalation policy ID on the team. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team_user

> update_team_user(accept, content_type, id, user_id, opts)

Add a user to a team

Add a user to a team. Attempting to add a user with the `read_only_user` role will return a 400 error.  A team is a collection of Users and Escalation Policies that represent a group of people within an organization.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#teams)  Scoped OAuth requires: `teams.write` 

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

api_instance = OpenapiClient::TeamsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
user_id = 'user_id_example' # String | The user ID on the team.
opts = {
  update_team_user_request: OpenapiClient::UpdateTeamUserRequest.new # UpdateTeamUserRequest | The role of the user on the team.
}

begin
  # Add a user to a team
  api_instance.update_team_user(accept, content_type, id, user_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team_user: #{e}"
end
```

#### Using the update_team_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_team_user_with_http_info(accept, content_type, id, user_id, opts)

```ruby
begin
  # Add a user to a team
  data, status_code, headers = api_instance.update_team_user_with_http_info(accept, content_type, id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TeamsApi->update_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **user_id** | **String** | The user ID on the team. |  |
| **update_team_user_request** | [**UpdateTeamUserRequest**](UpdateTeamUserRequest.md) | The role of the user on the team. | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

