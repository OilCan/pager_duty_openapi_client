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
  class MaintenanceWindowsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a maintenance window
    # Create a new maintenance window for the specified services. No new incidents will be created for a service that is in maintenance.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window object.
    # @return [CreateMaintenanceWindowRequest]
    def create_maintenance_window(accept, content_type, from, opts = {})
      data, _status_code, _headers = create_maintenance_window_with_http_info(accept, content_type, from, opts)
      data
    end

    # Create a maintenance window
    # Create a new maintenance window for the specified services. No new incidents will be created for a service that is in maintenance.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param from [String] The email address of a valid user associated with the account making the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window object.
    # @return [Array<(CreateMaintenanceWindowRequest, Integer, Hash)>] CreateMaintenanceWindowRequest data, response status code and response headers
    def create_maintenance_window_with_http_info(accept, content_type, from, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceWindowsApi.create_maintenance_window ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MaintenanceWindowsApi.create_maintenance_window"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MaintenanceWindowsApi.create_maintenance_window"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling MaintenanceWindowsApi.create_maintenance_window"
      end
      # resource path
      local_var_path = '/maintenance_windows'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_maintenance_window_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateMaintenanceWindowRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MaintenanceWindowsApi.create_maintenance_window",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceWindowsApi#create_maintenance_window\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete or end a maintenance window
    # Delete an existing maintenance window if it's in the future, or end it if it's currently on-going. If the maintenance window has already ended it cannot be deleted.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_maintenance_window(accept, content_type, id, opts = {})
      delete_maintenance_window_with_http_info(accept, content_type, id, opts)
      nil
    end

    # Delete or end a maintenance window
    # Delete an existing maintenance window if it&#39;s in the future, or end it if it&#39;s currently on-going. If the maintenance window has already ended it cannot be deleted.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_maintenance_window_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceWindowsApi.delete_maintenance_window ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MaintenanceWindowsApi.delete_maintenance_window"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MaintenanceWindowsApi.delete_maintenance_window"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceWindowsApi.delete_maintenance_window"
      end
      # resource path
      local_var_path = '/maintenance_windows/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MaintenanceWindowsApi.delete_maintenance_window",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceWindowsApi#delete_maintenance_window\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a maintenance window
    # Get an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional Models to include in response.
    # @return [CreateMaintenanceWindowRequest]
    def get_maintenance_window(accept, content_type, id, opts = {})
      data, _status_code, _headers = get_maintenance_window_with_http_info(accept, content_type, id, opts)
      data
    end

    # Get a maintenance window
    # Get an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional Models to include in response.
    # @return [Array<(CreateMaintenanceWindowRequest, Integer, Hash)>] CreateMaintenanceWindowRequest data, response status code and response headers
    def get_maintenance_window_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceWindowsApi.get_maintenance_window ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MaintenanceWindowsApi.get_maintenance_window"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MaintenanceWindowsApi.get_maintenance_window"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceWindowsApi.get_maintenance_window"
      end
      allowable_values = ["teams", "services", "users"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/maintenance_windows/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include[]'] = opts[:'include'] if !opts[:'include'].nil?

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
      return_type = opts[:debug_return_type] || 'CreateMaintenanceWindowRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MaintenanceWindowsApi.get_maintenance_window",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceWindowsApi#get_maintenance_window\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List maintenance windows
    # List existing maintenance windows, optionally filtered by service and/or team, or whether they are from the past, present or future.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :service_ids An array of service IDs. Only results related to these services will be returned.
    # @option opts [String] :include Array of additional Models to include in response.
    # @option opts [String] :filter Only return maintenance windows in a given state.
    # @return [ListMaintenanceWindows200Response]
    def list_maintenance_windows(accept, content_type, opts = {})
      data, _status_code, _headers = list_maintenance_windows_with_http_info(accept, content_type, opts)
      data
    end

    # List maintenance windows
    # List existing maintenance windows, optionally filtered by service and/or team, or whether they are from the past, present or future.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [Array<String>] :service_ids An array of service IDs. Only results related to these services will be returned.
    # @option opts [String] :include Array of additional Models to include in response.
    # @option opts [String] :filter Only return maintenance windows in a given state.
    # @return [Array<(ListMaintenanceWindows200Response, Integer, Hash)>] ListMaintenanceWindows200Response data, response status code and response headers
    def list_maintenance_windows_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceWindowsApi.list_maintenance_windows ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MaintenanceWindowsApi.list_maintenance_windows"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MaintenanceWindowsApi.list_maintenance_windows"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["teams", "services", "users"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      allowable_values = ["past", "future", "ongoing", "open", "all"]
      if @api_client.config.client_side_validation && opts[:'filter'] && !allowable_values.include?(opts[:'filter'])
        fail ArgumentError, "invalid value for \"filter\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/maintenance_windows'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'total'] = opts[:'total'] if !opts[:'total'].nil?
      query_params[:'team_ids[]'] = @api_client.build_collection_param(opts[:'team_ids'], :multi) if !opts[:'team_ids'].nil?
      query_params[:'service_ids[]'] = @api_client.build_collection_param(opts[:'service_ids'], :multi) if !opts[:'service_ids'].nil?
      query_params[:'include[]'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

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
      return_type = opts[:debug_return_type] || 'ListMaintenanceWindows200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MaintenanceWindowsApi.list_maintenance_windows",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceWindowsApi#list_maintenance_windows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a maintenance window
    # Update an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: `services.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window to be updated.
    # @return [CreateMaintenanceWindowRequest]
    def update_maintenance_window(accept, content_type, id, opts = {})
      data, _status_code, _headers = update_maintenance_window_with_http_info(accept, content_type, id, opts)
      data
    end

    # Update a maintenance window
    # Update an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window to be updated.
    # @return [Array<(CreateMaintenanceWindowRequest, Integer, Hash)>] CreateMaintenanceWindowRequest data, response status code and response headers
    def update_maintenance_window_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceWindowsApi.update_maintenance_window ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MaintenanceWindowsApi.update_maintenance_window"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MaintenanceWindowsApi.update_maintenance_window"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MaintenanceWindowsApi.update_maintenance_window"
      end
      # resource path
      local_var_path = '/maintenance_windows/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_maintenance_window_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateMaintenanceWindowRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MaintenanceWindowsApi.update_maintenance_window",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceWindowsApi#update_maintenance_window\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
