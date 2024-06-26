=begin
#PagerDuty API

#This document describes the PagerDuty REST APIs.  For guides and examples please visit our [Documentation.](https://developer.pagerduty.com/docs/get-started/getting-started/)  Our REST APIs are defined in OpenAPI v3.x. You can view the schema at [github.com/PagerDuty/api-schema](https://github.com/PagerDuty/api-schema).  Note that properties in some schemas have fields not shown by default such as `readOnly`, `format`, and `default`. Hover your cursor over the right column that looks like `optional+1` to see the full list of fields. 

The version of the OpenAPI document: 2.0.0
Contact: support@pagerduty.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'cgi'

module PagerDutyOpenapiClient
  class ChangeEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Change Event
    # Sending Change Events is documented as part of the V2 Events API. See [`Send Change Event`](https://developer.pagerduty.com/api-reference/b3A6Mjc0ODI2Ng-send-change-events-to-the-pager-duty-events-api). 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_change_event(accept, content_type, opts = {})
      create_change_event_with_http_info(accept, content_type, opts)
      nil
    end

    # Create a Change Event
    # Sending Change Events is documented as part of the V2 Events API. See [&#x60;Send Change Event&#x60;](https://developer.pagerduty.com/api-reference/b3A6Mjc0ODI2Ng-send-change-events-to-the-pager-duty-events-api). 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_change_event_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.create_change_event ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.create_change_event"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.create_change_event"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/change_events'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.create_change_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#create_change_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Change Event
    # Get details about an existing Change Event.  Scoped OAuth requires: `change_events.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [GetChangeEvent200Response]
    def get_change_event(accept, content_type, id, opts = {})
      data, _status_code, _headers = get_change_event_with_http_info(accept, content_type, id, opts)
      data
    end

    # Get a Change Event
    # Get details about an existing Change Event.  Scoped OAuth requires: &#x60;change_events.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetChangeEvent200Response, Integer, Hash)>] GetChangeEvent200Response data, response status code and response headers
    def get_change_event_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.get_change_event ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.get_change_event"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.get_change_event"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChangeEventsApi.get_change_event"
      end
      # resource path
      local_var_path = '/change_events/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetChangeEvent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.get_change_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#get_change_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Change Events
    # List all of the existing Change Events.  Scoped OAuth requires: `change_events.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :integration_ids An array of integration IDs. Only results related to these integrations will be returned.
    # @option opts [Time] :since The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Time] :_until The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @return [ListChangeEvents200Response]
    def list_change_events(accept, content_type, opts = {})
      data, _status_code, _headers = list_change_events_with_http_info(accept, content_type, opts)
      data
    end

    # List Change Events
    # List all of the existing Change Events.  Scoped OAuth requires: &#x60;change_events.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :integration_ids An array of integration IDs. Only results related to these integrations will be returned.
    # @option opts [Time] :since The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Time] :_until The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @return [Array<(ListChangeEvents200Response, Integer, Hash)>] ListChangeEvents200Response data, response status code and response headers
    def list_change_events_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.list_change_events ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.list_change_events"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.list_change_events"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      pattern = Regexp.new(/YYYY-MM-DDThh:mm:ssZ/)
      if @api_client.config.client_side_validation && !opts[:'since'].nil? && opts[:'since'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"since\"]' when calling ChangeEventsApi.list_change_events, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/YYYY-MM-DDThh:mm:ssZ/)
      if @api_client.config.client_side_validation && !opts[:'_until'].nil? && opts[:'_until'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"_until\"]' when calling ChangeEventsApi.list_change_events, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/change_events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'total'] = opts[:'total'] if !opts[:'total'].nil?
      query_params[:'team_ids[]'] = @api_client.build_collection_param(opts[:'team_ids'], :multi) if !opts[:'team_ids'].nil?
      query_params[:'integration_ids[]'] = @api_client.build_collection_param(opts[:'integration_ids'], :multi) if !opts[:'integration_ids'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListChangeEvents200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.list_change_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#list_change_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List related Change Events for an Incident
    # List related Change Events for an Incident, as well as the reason these changes are correlated with the incident.  Change events represent service changes such as deploys, build completion, and configuration changes, providing information that is critical during incident triage or hypercare. For more information on change events, see [Change Events](https://support.pagerduty.com/docs/change-events).  The Change Correlation feature provides incident responders with recent change events that are most relevant to that incident. Change Correlation informs the responder why a particular change event was surfaced and correlated to an incident based on three key factors which include time, related service, or intelligence (machine learning).  Scoped OAuth requires: `incidents.read` 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @return [ListIncidentRelatedChangeEvents200Response]
    def list_incident_related_change_events(id, accept, content_type, opts = {})
      data, _status_code, _headers = list_incident_related_change_events_with_http_info(id, accept, content_type, opts)
      data
    end

    # List related Change Events for an Incident
    # List related Change Events for an Incident, as well as the reason these changes are correlated with the incident.  Change events represent service changes such as deploys, build completion, and configuration changes, providing information that is critical during incident triage or hypercare. For more information on change events, see [Change Events](https://support.pagerduty.com/docs/change-events).  The Change Correlation feature provides incident responders with recent change events that are most relevant to that incident. Change Correlation informs the responder why a particular change event was surfaced and correlated to an incident based on three key factors which include time, related service, or intelligence (machine learning).  Scoped OAuth requires: &#x60;incidents.read&#x60; 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @return [Array<(ListIncidentRelatedChangeEvents200Response, Integer, Hash)>] ListIncidentRelatedChangeEvents200Response data, response status code and response headers
    def list_incident_related_change_events_with_http_info(id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.list_incident_related_change_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChangeEventsApi.list_incident_related_change_events"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.list_incident_related_change_events"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.list_incident_related_change_events"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/incidents/{id}/related_change_events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListIncidentRelatedChangeEvents200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.list_incident_related_change_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#list_incident_related_change_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Change Events for a service
    # List all of the existing Change Events for a service.  Scoped OAuth requires: `services.read` 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Time] :_until The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :integration_ids An array of integration IDs. Only results related to these integrations will be returned.
    # @return [ListChangeEvents200Response]
    def list_service_change_events(id, accept, content_type, opts = {})
      data, _status_code, _headers = list_service_change_events_with_http_info(id, accept, content_type, opts)
      data
    end

    # List Change Events for a service
    # List all of the existing Change Events for a service.  Scoped OAuth requires: &#x60;services.read&#x60; 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Time] :_until The end of the date range over which you want to search, as a UTC ISO 8601 datetime string. Will return an HTTP 400 for non-UTC datetimes.
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :integration_ids An array of integration IDs. Only results related to these integrations will be returned.
    # @return [Array<(ListChangeEvents200Response, Integer, Hash)>] ListChangeEvents200Response data, response status code and response headers
    def list_service_change_events_with_http_info(id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.list_service_change_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChangeEventsApi.list_service_change_events"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.list_service_change_events"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.list_service_change_events"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      pattern = Regexp.new(/YYYY-MM-DDThh:mm:ssZ/)
      if @api_client.config.client_side_validation && !opts[:'since'].nil? && opts[:'since'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"since\"]' when calling ChangeEventsApi.list_service_change_events, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/YYYY-MM-DDThh:mm:ssZ/)
      if @api_client.config.client_side_validation && !opts[:'_until'].nil? && opts[:'_until'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"_until\"]' when calling ChangeEventsApi.list_service_change_events, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/services/{id}/change_events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'total'] = opts[:'total'] if !opts[:'total'].nil?
      query_params[:'team_ids[]'] = @api_client.build_collection_param(opts[:'team_ids'], :multi) if !opts[:'team_ids'].nil?
      query_params[:'integration_ids[]'] = @api_client.build_collection_param(opts[:'integration_ids'], :multi) if !opts[:'integration_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListChangeEvents200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.list_service_change_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#list_service_change_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Change Event
    # Update an existing Change Event  Scoped OAuth requires: `change_events.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateChangeEventRequest] :update_change_event_request The Change Event to be updated.
    # @return [GetChangeEvent200Response]
    def update_change_event(accept, content_type, id, opts = {})
      data, _status_code, _headers = update_change_event_with_http_info(accept, content_type, id, opts)
      data
    end

    # Update a Change Event
    # Update an existing Change Event  Scoped OAuth requires: &#x60;change_events.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateChangeEventRequest] :update_change_event_request The Change Event to be updated.
    # @return [Array<(GetChangeEvent200Response, Integer, Hash)>] GetChangeEvent200Response data, response status code and response headers
    def update_change_event_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeEventsApi.update_change_event ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ChangeEventsApi.update_change_event"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ChangeEventsApi.update_change_event"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChangeEventsApi.update_change_event"
      end
      # resource path
      local_var_path = '/change_events/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_change_event_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetChangeEvent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ChangeEventsApi.update_change_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeEventsApi#update_change_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
