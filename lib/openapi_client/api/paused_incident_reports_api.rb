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
  class PausedIncidentReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Paused Incident Reporting on Alerts
    # Returns the 5 most recent alerts that were triggered after being paused and the 5 most recent alerts that were resolved after being paused for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: `incidents.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search.
    # @option opts [Time] :_until The end of the date range over which you want to search.
    # @option opts [String] :service_id Specifies a filter to limit the scope of reporting to a particular service
    # @option opts [String] :suspended_by Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
    # @return [GetPausedIncidentReportAlerts200Response]
    def get_paused_incident_report_alerts(accept, content_type, opts = {})
      data, _status_code, _headers = get_paused_incident_report_alerts_with_http_info(accept, content_type, opts)
      data
    end

    # Get Paused Incident Reporting on Alerts
    # Returns the 5 most recent alerts that were triggered after being paused and the 5 most recent alerts that were resolved after being paused for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: &#x60;incidents.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search.
    # @option opts [Time] :_until The end of the date range over which you want to search.
    # @option opts [String] :service_id Specifies a filter to limit the scope of reporting to a particular service
    # @option opts [String] :suspended_by Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
    # @return [Array<(GetPausedIncidentReportAlerts200Response, Integer, Hash)>] GetPausedIncidentReportAlerts200Response data, response status code and response headers
    def get_paused_incident_report_alerts_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PausedIncidentReportsApi.get_paused_incident_report_alerts ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling PausedIncidentReportsApi.get_paused_incident_report_alerts"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PausedIncidentReportsApi.get_paused_incident_report_alerts"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["auto_pause", "rules"]
      if @api_client.config.client_side_validation && opts[:'suspended_by'] && !allowable_values.include?(opts[:'suspended_by'])
        fail ArgumentError, "invalid value for \"suspended_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/paused_incident_reports/alerts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?
      query_params[:'service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      query_params[:'suspended_by'] = opts[:'suspended_by'] if !opts[:'suspended_by'].nil?

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
      return_type = opts[:debug_return_type] || 'GetPausedIncidentReportAlerts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PausedIncidentReportsApi.get_paused_incident_report_alerts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PausedIncidentReportsApi#get_paused_incident_report_alerts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Paused Incident Reporting counts
    # Returns reporting counts for paused Incident usage for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: `incidents.read` 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search.
    # @option opts [Time] :_until The end of the date range over which you want to search.
    # @option opts [String] :service_id Specifies a filter to limit the scope of reporting to a particular service
    # @option opts [String] :suspended_by Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
    # @return [GetPausedIncidentReportCounts200Response]
    def get_paused_incident_report_counts(accept, content_type, opts = {})
      data, _status_code, _headers = get_paused_incident_report_counts_with_http_info(accept, content_type, opts)
      data
    end

    # Get Paused Incident Reporting counts
    # Returns reporting counts for paused Incident usage for a given reporting period (maximum 6 months lookback period).  Note: This feature is currently available as part of the Event Intelligence package or Digital Operations plan only.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#paused-incident-reports)  Scoped OAuth requires: &#x60;incidents.read&#x60; 
    # @param accept [String] The &#x60;Accept&#x60; header is used as a versioning header.
    # @param content_type [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :since The start of the date range over which you want to search.
    # @option opts [Time] :_until The end of the date range over which you want to search.
    # @option opts [String] :service_id Specifies a filter to limit the scope of reporting to a particular service
    # @option opts [String] :suspended_by Specifies a filter to scope the response to either alerts suspended by Auto Pause or Event Rules.
    # @return [Array<(GetPausedIncidentReportCounts200Response, Integer, Hash)>] GetPausedIncidentReportCounts200Response data, response status code and response headers
    def get_paused_incident_report_counts_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PausedIncidentReportsApi.get_paused_incident_report_counts ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling PausedIncidentReportsApi.get_paused_incident_report_counts"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PausedIncidentReportsApi.get_paused_incident_report_counts"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["auto_pause", "rules"]
      if @api_client.config.client_side_validation && opts[:'suspended_by'] && !allowable_values.include?(opts[:'suspended_by'])
        fail ArgumentError, "invalid value for \"suspended_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/paused_incident_reports/counts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?
      query_params[:'service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      query_params[:'suspended_by'] = opts[:'suspended_by'] if !opts[:'suspended_by'].nil?

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
      return_type = opts[:debug_return_type] || 'GetPausedIncidentReportCounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PausedIncidentReportsApi.get_paused_incident_report_counts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PausedIncidentReportsApi#get_paused_incident_report_counts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
