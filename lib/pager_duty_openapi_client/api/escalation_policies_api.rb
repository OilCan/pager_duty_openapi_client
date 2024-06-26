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
  class EscalationPoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an escalation policy
    # Creates a new escalation policy. At least one escalation rule must be provided.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @option opts [CreateEscalationPolicyRequest] :create_escalation_policy_request The escalation policy to be created.
    # @return [CreateEscalationPolicyRequest]
    def create_escalation_policy(accept, content_type, opts = {})
      data, _status_code, _headers = create_escalation_policy_with_http_info(accept, content_type, opts)
      data
    end

    # Create an escalation policy
    # Creates a new escalation policy. At least one escalation rule must be provided.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: &#x60;escalation_policies.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
    # @option opts [CreateEscalationPolicyRequest] :create_escalation_policy_request The escalation policy to be created.
    # @return [Array<(CreateEscalationPolicyRequest, Integer, Hash)>] CreateEscalationPolicyRequest data, response status code and response headers
    def create_escalation_policy_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.create_escalation_policy ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.create_escalation_policy"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.create_escalation_policy"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/escalation_policies'

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
      header_params[:'From'] = opts[:'from'] if !opts[:'from'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_escalation_policy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateEscalationPolicyRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EscalationPoliciesApi.create_escalation_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#create_escalation_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an escalation policy
    # Deletes an existing escalation policy and rules. The escalation policy must not be in use by any services.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_escalation_policy(accept, content_type, id, opts = {})
      delete_escalation_policy_with_http_info(accept, content_type, id, opts)
      nil
    end

    # Delete an escalation policy
    # Deletes an existing escalation policy and rules. The escalation policy must not be in use by any services.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: &#x60;escalation_policies.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_escalation_policy_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.delete_escalation_policy ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.delete_escalation_policy"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.delete_escalation_policy"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EscalationPoliciesApi.delete_escalation_policy"
      end
      # resource path
      local_var_path = '/escalation_policies/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"EscalationPoliciesApi.delete_escalation_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#delete_escalation_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an escalation policy
    # Get information about an existing escalation policy and its rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional Models to include in response.
    # @return [CreateEscalationPolicyRequest]
    def get_escalation_policy(accept, content_type, id, opts = {})
      data, _status_code, _headers = get_escalation_policy_with_http_info(accept, content_type, id, opts)
      data
    end

    # Get an escalation policy
    # Get information about an existing escalation policy and its rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: &#x60;escalation_policies.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Array of additional Models to include in response.
    # @return [Array<(CreateEscalationPolicyRequest, Integer, Hash)>] CreateEscalationPolicyRequest data, response status code and response headers
    def get_escalation_policy_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.get_escalation_policy ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.get_escalation_policy"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.get_escalation_policy"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EscalationPoliciesApi.get_escalation_policy"
      end
      allowable_values = ["services", "teams", "targets"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/escalation_policies/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateEscalationPolicyRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EscalationPoliciesApi.get_escalation_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#get_escalation_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List escalation policies
    # List all of the existing escalation policies.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Array<String>] :user_ids Filters the results, showing only escalation policies on which any of the users is a target.
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [String] :include Array of additional Models to include in response.
    # @option opts [String] :sort_by Used to specify the field you wish to sort the results on. (default to 'name')
    # @return [ListEscalationPolicies200Response]
    def list_escalation_policies(accept, content_type, opts = {})
      data, _status_code, _headers = list_escalation_policies_with_http_info(accept, content_type, opts)
      data
    end

    # List escalation policies
    # List all of the existing escalation policies.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: &#x60;escalation_policies.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of results per page.
    # @option opts [Integer] :offset Offset to start pagination search results.
    # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  (default to false)
    # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
    # @option opts [Array<String>] :user_ids Filters the results, showing only escalation policies on which any of the users is a target.
    # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
    # @option opts [String] :include Array of additional Models to include in response.
    # @option opts [String] :sort_by Used to specify the field you wish to sort the results on. (default to 'name')
    # @return [Array<(ListEscalationPolicies200Response, Integer, Hash)>] ListEscalationPolicies200Response data, response status code and response headers
    def list_escalation_policies_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.list_escalation_policies ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.list_escalation_policies"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.list_escalation_policies"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["services", "teams", "targets"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      allowable_values = ["name", "name:asc", "name:desc"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !allowable_values.include?(opts[:'sort_by'])
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/escalation_policies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'total'] = opts[:'total'] if !opts[:'total'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'user_ids[]'] = @api_client.build_collection_param(opts[:'user_ids'], :multi) if !opts[:'user_ids'].nil?
      query_params[:'team_ids[]'] = @api_client.build_collection_param(opts[:'team_ids'], :multi) if !opts[:'team_ids'].nil?
      query_params[:'include[]'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
      return_type = opts[:debug_return_type] || 'ListEscalationPolicies200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EscalationPoliciesApi.list_escalation_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#list_escalation_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List audit records for an escalation policy
    # The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API.
    # @option opts [String] :cursor Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
    # @option opts [Time] :since The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours)
    # @option opts [Time] :_until The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;.
    # @return [AuditRecordResponseSchema]
    def list_escalation_policy_audit_records(accept, content_type, id, opts = {})
      data, _status_code, _headers = list_escalation_policy_audit_records_with_http_info(accept, content_type, id, opts)
      data
    end

    # List audit records for an escalation policy
    # The returned records are sorted by the &#x60;execution_time&#x60; from newest to oldest.  See [&#x60;Cursor-based pagination&#x60;](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: &#x60;audit_records.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API.
    # @option opts [String] :cursor Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
    # @option opts [Time] :since The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours)
    # @option opts [Time] :_until The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;.
    # @return [Array<(AuditRecordResponseSchema, Integer, Hash)>] AuditRecordResponseSchema data, response status code and response headers
    def list_escalation_policy_audit_records_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.list_escalation_policy_audit_records ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.list_escalation_policy_audit_records"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.list_escalation_policy_audit_records"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EscalationPoliciesApi.list_escalation_policy_audit_records"
      end
      # resource path
      local_var_path = '/escalation_policies/{id}/audit/records'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
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
      return_type = opts[:debug_return_type] || 'AuditRecordResponseSchema'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EscalationPoliciesApi.list_escalation_policy_audit_records",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#list_escalation_policy_audit_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an escalation policy
    # Updates an existing escalation policy and rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: `escalation_policies.write` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateEscalationPolicyRequest] :create_escalation_policy_request The escalation policy to be updated.
    # @return [CreateEscalationPolicyRequest]
    def update_escalation_policy(accept, content_type, id, opts = {})
      data, _status_code, _headers = update_escalation_policy_with_http_info(accept, content_type, id, opts)
      data
    end

    # Update an escalation policy
    # Updates an existing escalation policy and rules.  Escalation policies define which user should be alerted at which time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#escalation-policies)  Scoped OAuth requires: &#x60;escalation_policies.write&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateEscalationPolicyRequest] :create_escalation_policy_request The escalation policy to be updated.
    # @return [Array<(CreateEscalationPolicyRequest, Integer, Hash)>] CreateEscalationPolicyRequest data, response status code and response headers
    def update_escalation_policy_with_http_info(accept, content_type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EscalationPoliciesApi.update_escalation_policy ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling EscalationPoliciesApi.update_escalation_policy"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling EscalationPoliciesApi.update_escalation_policy"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EscalationPoliciesApi.update_escalation_policy"
      end
      # resource path
      local_var_path = '/escalation_policies/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_escalation_policy_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateEscalationPolicyRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EscalationPoliciesApi.update_escalation_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EscalationPoliciesApi#update_escalation_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
