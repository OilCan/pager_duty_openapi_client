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
  class ResponsePlaysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Response Play
    # Creates a new Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be created.
    # @return [CreateResponsePlay201Response]
    def create_response_play(accept, content_type, from, opts = {})
      data, _status_code, _headers = create_response_play_with_http_info(accept, content_type, from, opts)
      data
    end

    # Create a Response Play
    # Creates a new Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be created.
    # @return [Array<(CreateResponsePlay201Response, Integer, Hash)>] CreateResponsePlay201Response data, response status code and response headers
    def create_response_play_with_http_info(accept, content_type, from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.create_response_play ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.create_response_play"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.create_response_play"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling ResponsePlaysApi.create_response_play"
      end
      # resource path
      local_var_path = '/response_plays'

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
      header_params[:'From'] = from

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_response_play_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateResponsePlay201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.create_response_play",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#create_response_play\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Response Play
    # Delete an existing Response Play. Once the Response Play is deleted, the action cannot be undone.  WARNING: When the Response Play is deleted, it is also removed from any Services that were using it.  Response Plays allow you to create packages of Incident Actions that can be applied to an Incident.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_response_play(id, accept, content_type, from, opts = {})
      delete_response_play_with_http_info(id, accept, content_type, from, opts)
      nil
    end

    # Delete a Response Play
    # Delete an existing Response Play. Once the Response Play is deleted, the action cannot be undone.  WARNING: When the Response Play is deleted, it is also removed from any Services that were using it.  Response Plays allow you to create packages of Incident Actions that can be applied to an Incident.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_response_play_with_http_info(id, accept, content_type, from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.delete_response_play ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResponsePlaysApi.delete_response_play"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.delete_response_play"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.delete_response_play"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling ResponsePlaysApi.delete_response_play"
      end
      # resource path
      local_var_path = '/response_plays/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type
      header_params[:'From'] = from

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.delete_response_play",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#delete_response_play\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Response Play
    # Get details about an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the `From` header is required. Scoped OAuth requires: `response_plays.read` 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @return [CreateResponsePlay201Response]
    def get_response_play(id, accept, content_type, opts = {})
      data, _status_code, _headers = get_response_play_with_http_info(id, accept, content_type, opts)
      data
    end

    # Get a Response Play
    # Get details about an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the &#x60;From&#x60; header is required. Scoped OAuth requires: &#x60;response_plays.read&#x60; 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @return [Array<(CreateResponsePlay201Response, Integer, Hash)>] CreateResponsePlay201Response data, response status code and response headers
    def get_response_play_with_http_info(id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.get_response_play ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResponsePlaysApi.get_response_play"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.get_response_play"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.get_response_play"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/response_plays/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type
      header_params[:'From'] = opts[:'from'] if !opts[:'from'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreateResponsePlay201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.get_response_play",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#get_response_play\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Response Plays
    # List all of the existing Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the `From` header is required.  Scoped OAuth requires: `response_plays.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Boolean] :filter_for_manual_run When this parameter is present, only those Response Plays that can be run manually will be returned.
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @return [ListResponsePlays200Response]
    def list_response_plays(accept, content_type, opts = {})
      data, _status_code, _headers = list_response_plays_with_http_info(accept, content_type, opts)
      data
    end

    # List Response Plays
    # List all of the existing Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the &#x60;From&#x60; header is required.  Scoped OAuth requires: &#x60;response_plays.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Boolean] :filter_for_manual_run When this parameter is present, only those Response Plays that can be run manually will be returned.
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @return [Array<(ListResponsePlays200Response, Integer, Hash)>] ListResponsePlays200Response data, response status code and response headers
    def list_response_plays_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.list_response_plays ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.list_response_plays"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.list_response_plays"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/response_plays'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'filter_for_manual_run'] = opts[:'filter_for_manual_run'] if !opts[:'filter_for_manual_run'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type
      header_params[:'From'] = opts[:'from'] if !opts[:'from'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListResponsePlays200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.list_response_plays",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#list_response_plays\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Run a response play
    # Run a specified response play on a given incident.  Response Plays are a package of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param response_play_id [String] The response play ID of the response play associated with the request.
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [MergeIncidents200Response] :merge_incidents200_response 
    # @return [RunResponsePlay200Response]
    def run_response_play(accept, content_type, response_play_id, from, opts = {})
      data, _status_code, _headers = run_response_play_with_http_info(accept, content_type, response_play_id, from, opts)
      data
    end

    # Run a response play
    # Run a specified response play on a given incident.  Response Plays are a package of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param response_play_id [String] The response play ID of the response play associated with the request.
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [MergeIncidents200Response] :merge_incidents200_response 
    # @return [Array<(RunResponsePlay200Response, Integer, Hash)>] RunResponsePlay200Response data, response status code and response headers
    def run_response_play_with_http_info(accept, content_type, response_play_id, from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.run_response_play ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.run_response_play"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.run_response_play"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'response_play_id' is set
      if @api_client.config.client_side_validation && response_play_id.nil?
        fail ArgumentError, "Missing the required parameter 'response_play_id' when calling ResponsePlaysApi.run_response_play"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling ResponsePlaysApi.run_response_play"
      end
      # resource path
      local_var_path = '/response_plays/{response_play_id}/run'.sub('{' + 'response_play_id' + '}', CGI.escape(response_play_id.to_s))

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
      header_params[:'From'] = from

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merge_incidents200_response'])

      # return_type
      return_type = opts[:debug_return_type] || 'RunResponsePlay200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.run_response_play",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#run_response_play\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Response Play
    # Updates an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident's life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: `response_plays.write` 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be updated.
    # @return [CreateResponsePlay201Response]
    def update_response_play(id, accept, content_type, from, opts = {})
      data, _status_code, _headers = update_response_play_with_http_info(id, accept, content_type, from, opts)
      data
    end

    # Update a Response Play
    # Updates an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
    # @param id [String] The ID of the resource.
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be updated.
    # @return [Array<(CreateResponsePlay201Response, Integer, Hash)>] CreateResponsePlay201Response data, response status code and response headers
    def update_response_play_with_http_info(id, accept, content_type, from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResponsePlaysApi.update_response_play ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResponsePlaysApi.update_response_play"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ResponsePlaysApi.update_response_play"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ResponsePlaysApi.update_response_play"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling ResponsePlaysApi.update_response_play"
      end
      # resource path
      local_var_path = '/response_plays/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'From'] = from

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_response_play_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateResponsePlay201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ResponsePlaysApi.update_response_play",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponsePlaysApi#update_response_play\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
