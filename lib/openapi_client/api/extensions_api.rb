=begin
#PagerDuty API

#This document describes the PagerDuty REST APIs.  For guides and examples please visit our [Documentation.](https://developer.pagerduty.com/docs/get-started/getting-started/)  Our REST APIs are defined in OpenAPI v3.x. You can view the schema at [github.com/PagerDuty/api-schema](https://github.com/PagerDuty/api-schema).  Note that properties in some schemas have fields not shown by default such as `readOnly`, `format`, and `default`. Hover your cursor over the right column that looks like `optional+1` to see the full list of fields. 

The version of the OpenAPI document: 2.0.0
Contact: support@pagerduty.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'cgi'

module OpenapiClient
  class ExtensionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an extension
    # Create a new Extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateExtensionRequest] :create_extension_request The extension to be created
    # @return [CreateExtensionRequest]
    def create_extension(accept, content_type, opts = {})
      data, _status_code, _headers = create_extension_with_http_info(accept, content_type, opts)
      data
    end

    # Create an extension
    # Create a new Extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateExtensionRequest] :create_extension_request The extension to be created
    # @return [Array<(CreateExtensionRequest, Integer, Hash)>] CreateExtensionRequest data, response status code and response headers
    def create_extension_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.create_extension ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.create_extension"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.create_extension"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/extensions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_extension_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateExtensionRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExtensionsApi.create_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#create_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an extension
    # Delete an existing extension.  Once the extension is deleted, it will not be accessible from the web UI and new incidents won't be able to be created for this extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_extension(accept, content_type, id, opts = {})
      delete_extension_with_http_info(accept, content_type, id, opts)
      nil
    end

    # Delete an extension
    # Delete an existing extension.  Once the extension is deleted, it will not be accessible from the web UI and new incidents won&#39;t be able to be created for this extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_extension_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.delete_extension ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.delete_extension"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.delete_extension"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExtensionsApi.delete_extension"
      end
      # resource path
      local_var_path = '/extensions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ExtensionsApi.delete_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#delete_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable an extension
    # Enable an extension that is temporarily disabled. (This API does not require a request body.)  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [CreateExtensionRequest]
    def enable_extension(accept, content_type, id, opts = {})
      data, _status_code, _headers = enable_extension_with_http_info(accept, content_type, id, opts)
      data
    end

    # Enable an extension
    # Enable an extension that is temporarily disabled. (This API does not require a request body.)  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateExtensionRequest, Integer, Hash)>] CreateExtensionRequest data, response status code and response headers
    def enable_extension_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.enable_extension ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.enable_extension"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.enable_extension"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExtensionsApi.enable_extension"
      end
      # resource path
      local_var_path = '/extensions/{id}/enable'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateExtensionRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExtensionsApi.enable_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#enable_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an extension
    # Get details about an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional details to include.
    # @return [CreateExtensionRequest]
    def get_extension(accept, content_type, id, opts = {})
      data, _status_code, _headers = get_extension_with_http_info(accept, content_type, id, opts)
      data
    end

    # Get an extension
    # Get details about an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional details to include.
    # @return [Array<(CreateExtensionRequest, Integer, Hash)>] CreateExtensionRequest data, response status code and response headers
    def get_extension_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.get_extension ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.get_extension"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.get_extension"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExtensionsApi.get_extension"
      end
      allowable_values = ["extension_schemas", "extension_objects", "temporarily_disabled"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/extensions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateExtensionRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExtensionsApi.get_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#get_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List extensions
    # List existing extensions.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [String] :extension_object_id The id of the extension object you want to filter by.
    # @option opts [String] :extension_schema_id Filter the extensions by extension vendor id.
    # @option opts [String] :include Array of additional details to include.
    # @return [ListExtensions200Response]
    def list_extensions(accept, content_type, opts = {})
      data, _status_code, _headers = list_extensions_with_http_info(accept, content_type, opts)
      data
    end

    # List extensions
    # List existing extensions.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [String] :extension_object_id The id of the extension object you want to filter by.
    # @option opts [String] :extension_schema_id Filter the extensions by extension vendor id.
    # @option opts [String] :include Array of additional details to include.
    # @return [Array<(ListExtensions200Response, Integer, Hash)>] ListExtensions200Response data, response status code and response headers
    def list_extensions_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.list_extensions ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.list_extensions"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.list_extensions"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["extension_objects", "extension_schemas"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/extensions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'total'] = opts[:'total'] if !opts[:'total'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'extension_object_id'] = opts[:'extension_object_id'] if !opts[:'extension_object_id'].nil?
      query_params[:'extension_schema_id'] = opts[:'extension_schema_id'] if !opts[:'extension_schema_id'].nil?
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
      return_type = opts[:debug_return_type] || 'ListExtensions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExtensionsApi.list_extensions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#list_extensions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an extension
    # Update an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: `extensions.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateExtensionRequest] :create_extension_request The extension to be updated.
    # @return [CreateExtensionRequest]
    def update_extension(accept, content_type, id, opts = {})
      data, _status_code, _headers = update_extension_with_http_info(accept, content_type, id, opts)
      data
    end

    # Update an extension
    # Update an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateExtensionRequest] :create_extension_request The extension to be updated.
    # @return [Array<(CreateExtensionRequest, Integer, Hash)>] CreateExtensionRequest data, response status code and response headers
    def update_extension_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExtensionsApi.update_extension ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ExtensionsApi.update_extension"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ExtensionsApi.update_extension"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExtensionsApi.update_extension"
      end
      # resource path
      local_var_path = '/extensions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_extension_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateExtensionRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ExtensionsApi.update_extension",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExtensionsApi#update_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
