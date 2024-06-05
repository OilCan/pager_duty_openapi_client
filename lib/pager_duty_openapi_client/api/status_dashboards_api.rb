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
  class StatusDashboardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a single Status Dashboard by `id`
    # Get a Status Dashboard by its PagerDuty `id`.  Scoped OAuth requires: `status_dashboards.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [GetStatusDashboardById200Response]
    def get_status_dashboard_by_id(accept, id, opts = {})
      data, _status_code, _headers = get_status_dashboard_by_id_with_http_info(accept, id, opts)
      data
    end

    # Get a single Status Dashboard by &#x60;id&#x60;
    # Get a Status Dashboard by its PagerDuty &#x60;id&#x60;.  Scoped OAuth requires: &#x60;status_dashboards.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetStatusDashboardById200Response, Integer, Hash)>] GetStatusDashboardById200Response data, response status code and response headers
    def get_status_dashboard_by_id_with_http_info(accept, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusDashboardsApi.get_status_dashboard_by_id ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling StatusDashboardsApi.get_status_dashboard_by_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StatusDashboardsApi.get_status_dashboard_by_id"
      end
      # resource path
      local_var_path = '/status_dashboards/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetStatusDashboardById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StatusDashboardsApi.get_status_dashboard_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusDashboardsApi#get_status_dashboard_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single Status Dashboard by `url_slug`
    # Get a Status Dashboard by its PagerDuty `url_slug`.  A `url_slug` is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a `dash-separated-string-like-this`.  Scoped OAuth requires: `status_dashboards.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param url_slug [String] The &#x60;url_slug&#x60; for a status dashboard
    # @param [Hash] opts the optional parameters
    # @return [GetStatusDashboardById200Response]
    def get_status_dashboard_by_url_slug(accept, url_slug, opts = {})
      data, _status_code, _headers = get_status_dashboard_by_url_slug_with_http_info(accept, url_slug, opts)
      data
    end

    # Get a single Status Dashboard by &#x60;url_slug&#x60;
    # Get a Status Dashboard by its PagerDuty &#x60;url_slug&#x60;.  A &#x60;url_slug&#x60; is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a &#x60;dash-separated-string-like-this&#x60;.  Scoped OAuth requires: &#x60;status_dashboards.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param url_slug [String] The &#x60;url_slug&#x60; for a status dashboard
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetStatusDashboardById200Response, Integer, Hash)>] GetStatusDashboardById200Response data, response status code and response headers
    def get_status_dashboard_by_url_slug_with_http_info(accept, url_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusDashboardsApi.get_status_dashboard_by_url_slug ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling StatusDashboardsApi.get_status_dashboard_by_url_slug"
      end
      # verify the required parameter 'url_slug' is set
      if @api_client.config.client_side_validation && url_slug.nil?
        fail ArgumentError, "Missing the required parameter 'url_slug' when calling StatusDashboardsApi.get_status_dashboard_by_url_slug"
      end
      # resource path
      local_var_path = '/status_dashboards/url_slugs/{url_slug}'.sub('{' + 'url_slug' + '}', CGI.escape(url_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetStatusDashboardById200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StatusDashboardsApi.get_status_dashboard_by_url_slug",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusDashboardsApi#get_status_dashboard_by_url_slug\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get impacted Business Services for a Status Dashboard by `id`.
    # Get impacted Business Services for a Status Dashboard by `id`  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the specified Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get Impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sorted response, use the `ids[]` parameter on the `/business_services/impacts` endpoint.  Scoped OAuth requires: `status_dashboards.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_fields Provides access to additional fields such as highest priority per business service and total impacted count
    # @return [GetBusinessServiceSupportingServiceImpacts200Response]
    def get_status_dashboard_service_impacts_by_id(accept, id, opts = {})
      data, _status_code, _headers = get_status_dashboard_service_impacts_by_id_with_http_info(accept, id, opts)
      data
    end

    # Get impacted Business Services for a Status Dashboard by &#x60;id&#x60;.
    # Get impacted Business Services for a Status Dashboard by &#x60;id&#x60;  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the specified Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get Impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sorted response, use the &#x60;ids[]&#x60; parameter on the &#x60;/business_services/impacts&#x60; endpoint.  Scoped OAuth requires: &#x60;status_dashboards.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param id [String] The ID of the resource.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_fields Provides access to additional fields such as highest priority per business service and total impacted count
    # @return [Array<(GetBusinessServiceSupportingServiceImpacts200Response, Integer, Hash)>] GetBusinessServiceSupportingServiceImpacts200Response data, response status code and response headers
    def get_status_dashboard_service_impacts_by_id_with_http_info(accept, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusDashboardsApi.get_status_dashboard_service_impacts_by_id ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling StatusDashboardsApi.get_status_dashboard_service_impacts_by_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StatusDashboardsApi.get_status_dashboard_service_impacts_by_id"
      end
      allowable_values = ["services.highest_impacting_priority", "total_impacted_count"]
      if @api_client.config.client_side_validation && opts[:'additional_fields'] && !allowable_values.include?(opts[:'additional_fields'])
        fail ArgumentError, "invalid value for \"additional_fields\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/status_dashboards/{id}/service_impacts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'additional_fields[]'] = opts[:'additional_fields'] if !opts[:'additional_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetBusinessServiceSupportingServiceImpacts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StatusDashboardsApi.get_status_dashboard_service_impacts_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusDashboardsApi#get_status_dashboard_service_impacts_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get impacted Business Services for a  Status Dashboard by `url_slug`
    # Get Business Service Impacts for the Business Services on a Status Dashboard by its `url_slug`. A `url_slug` is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a `dash-separated-string-like-this`.  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sored response, use the `ids[]` parameter on the `/business_services/impacts` endpoint.  Scoped OAuth requires: `status_dashboards.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param url_slug [String] The &#x60;url_slug&#x60; for a status dashboard
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_fields Provides access to additional fields such as highest priority per business service and total impacted count
    # @return [GetBusinessServiceSupportingServiceImpacts200Response]
    def get_status_dashboard_service_impacts_by_url_slug(accept, url_slug, opts = {})
      data, _status_code, _headers = get_status_dashboard_service_impacts_by_url_slug_with_http_info(accept, url_slug, opts)
      data
    end

    # Get impacted Business Services for a  Status Dashboard by &#x60;url_slug&#x60;
    # Get Business Service Impacts for the Business Services on a Status Dashboard by its &#x60;url_slug&#x60;. A &#x60;url_slug&#x60; is a human-readable reference for a custom Status Dashboard that may be created or changed in the UI. It will generally be a &#x60;dash-separated-string-like-this&#x60;.  This endpoint does not return an exhaustive list of Business Services but rather provides access to the most impacted on the Status Dashboard up to the limit of 200.  The returned Business Services are sorted first by Impact, secondarily by most recently impacted, and finally by name.  To get impact information about a specific Business Service on the Status Dashboard that does not appear in the Impact-sored response, use the &#x60;ids[]&#x60; parameter on the &#x60;/business_services/impacts&#x60; endpoint.  Scoped OAuth requires: &#x60;status_dashboards.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param url_slug [String] The &#x60;url_slug&#x60; for a status dashboard
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_fields Provides access to additional fields such as highest priority per business service and total impacted count
    # @return [Array<(GetBusinessServiceSupportingServiceImpacts200Response, Integer, Hash)>] GetBusinessServiceSupportingServiceImpacts200Response data, response status code and response headers
    def get_status_dashboard_service_impacts_by_url_slug_with_http_info(accept, url_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusDashboardsApi.get_status_dashboard_service_impacts_by_url_slug ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling StatusDashboardsApi.get_status_dashboard_service_impacts_by_url_slug"
      end
      # verify the required parameter 'url_slug' is set
      if @api_client.config.client_side_validation && url_slug.nil?
        fail ArgumentError, "Missing the required parameter 'url_slug' when calling StatusDashboardsApi.get_status_dashboard_service_impacts_by_url_slug"
      end
      allowable_values = ["services.highest_impacting_priority", "total_impacted_count"]
      if @api_client.config.client_side_validation && opts[:'additional_fields'] && !allowable_values.include?(opts[:'additional_fields'])
        fail ArgumentError, "invalid value for \"additional_fields\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/status_dashboards/url_slugs/{url_slug}/service_impacts'.sub('{' + 'url_slug' + '}', CGI.escape(url_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'additional_fields[]'] = opts[:'additional_fields'] if !opts[:'additional_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetBusinessServiceSupportingServiceImpacts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StatusDashboardsApi.get_status_dashboard_service_impacts_by_url_slug",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusDashboardsApi#get_status_dashboard_service_impacts_by_url_slug\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Status Dashboards
    # Get all your account's custom Status Dashboard views.  Scoped OAuth requires: `status_dashboards.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param [Hash] opts the optional parameters
    # @return [ListStatusDashboards200Response]
    def list_status_dashboards(accept, opts = {})
      data, _status_code, _headers = list_status_dashboards_with_http_info(accept, opts)
      data
    end

    # List Status Dashboards
    # Get all your account&#39;s custom Status Dashboard views.  Scoped OAuth requires: &#x60;status_dashboards.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListStatusDashboards200Response, Integer, Hash)>] ListStatusDashboards200Response data, response status code and response headers
    def list_status_dashboards_with_http_info(accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatusDashboardsApi.list_status_dashboards ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling StatusDashboardsApi.list_status_dashboards"
      end
      # resource path
      local_var_path = '/status_dashboards'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListStatusDashboards200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StatusDashboardsApi.list_status_dashboards",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatusDashboardsApi#list_status_dashboards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
