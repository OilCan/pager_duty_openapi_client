# OpenapiClient::GetIncidentNotificationSubscribers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **subscribers** | [**Array&lt;NotificationSubscriberWithContext&gt;**](NotificationSubscriberWithContext.md) |  | [optional] |
| **account_id** | **String** | The ID of the account belonging to the subscriber entity | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetIncidentNotificationSubscribers200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  subscribers: null,
  account_id: null
)
```

