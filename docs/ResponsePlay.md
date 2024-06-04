# OpenapiClient::ResponsePlay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of object being created. | [optional][default to &#39;response_play&#39;] |
| **name** | **String** | The name of the response play. | [optional] |
| **description** | **String** | The description of the response play. | [optional] |
| **team** | [**ResponsePlayAllOfTeam**](ResponsePlayAllOfTeam.md) |  | [optional] |
| **subscribers** | [**Array&lt;ResponsePlayAllOfSubscribers&gt;**](ResponsePlayAllOfSubscribers.md) | An array containing the users and/or teams to be added as subscribers to any incident on which this response play is run. | [optional] |
| **subscribers_message** | **String** | The content of the notification that will be sent to all incident subscribers upon the running of this response play. Note that this includes any users who may have already been subscribed to the incident prior to the running of this response play. If empty, no notifications will be sent. | [optional] |
| **responders** | [**Array&lt;ResponsePlayAllOfResponders&gt;**](ResponsePlayAllOfResponders.md) | An array containing the users and/or escalation policies to be requested as responders to any incident on which this response play is run. | [optional] |
| **responders_message** | **String** | The message body of the notification that will be sent to this response play&#39;s set of responders. If empty, a default response request notification will be sent. | [optional] |
| **runnability** | **String** | String representing how this response play is allowed to be run. Valid options are:   - &#x60;services&#x60;: This response play cannot be manually run by any users. It will run automatically for new incidents triggered on any services that are configured with this response play.   - &#x60;teams&#x60;: This response play can be run manually on an incident only by members of its configured team. This option can only be selected when the &#x60;team&#x60; property for this response play is not empty.   - &#x60;responders&#x60;: This response play can be run manually on an incident by any responders in this account. | [optional][default to &#39;services&#39;] |
| **conference_number** | **String** | The telephone number that will be set as the conference number for any incident on which this response play is run. | [optional] |
| **conference_url** | **String** | The URL that will be set as the conference URL for any incident on which this response play is run. | [optional] |
| **conference_type** | **String** | This field has three possible values and indicates how the response play was created.   - &#x60;none&#x60; : The response play had no conference_number or conference_url set at time of creation.   - &#x60;manual&#x60; : The response play had one or both of conference_number and conference_url set at time of creation.   - &#x60;zoom&#x60; : Customers with the Zoom-Integration Entitelment can use this value to dynamicly configure conference number and url for zoom | [optional][default to &#39;none&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResponsePlay.new(
  type: null,
  name: null,
  description: null,
  team: null,
  subscribers: null,
  subscribers_message: null,
  responders: null,
  responders_message: null,
  runnability: null,
  conference_number: null,
  conference_url: null,
  conference_type: null
)
```

