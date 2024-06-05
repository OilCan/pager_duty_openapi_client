=begin
#PagerDuty API

#This document describes the PagerDuty REST APIs.  For guides and examples please visit our [Documentation.](https://developer.pagerduty.com/docs/get-started/getting-started/)  Our REST APIs are defined in OpenAPI v3.x. You can view the schema at [github.com/PagerDuty/api-schema](https://github.com/PagerDuty/api-schema).  Note that properties in some schemas have fields not shown by default such as `readOnly`, `format`, and `default`. Hover your cursor over the right column that looks like `optional+1` to see the full list of fields. 

The version of the OpenAPI document: 2.0.0
Contact: support@pagerduty.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module PagerDutyOpenapiClient
  class AnalyticsIncidentMetrics
    # Mean count of instances where responders were assigned an incident (including through reassignment or escalation) or accepted a responder request.
    attr_accessor :mean_assignment_count

    # Mean engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed.
    attr_accessor :mean_engaged_seconds

    # Mean number of users who engaged with an incident. *Engaged* is defined as acknowledging an incident or accepting a responder request in it.
    attr_accessor :mean_engaged_user_count

    # A measure of *people response time*. This metric measures the time from the first user engagement (acknowledge or responder accept) to the last. This metric is only used for incidents with **multiple responders**; for incidents with one or no engaged users, this value is null.
    attr_accessor :mean_seconds_to_engage

    # Mean time between the start of an incident, and the first responder to acknowledge.
    attr_accessor :mean_seconds_to_first_ack

    # Mean time between the start of an incident, and the last additional responder to acknowledge. For incidents with one or no engaged users, this value is null.
    attr_accessor :mean_seconds_to_mobilize

    # Mean time from when an incident was triggered until it was resolved.
    attr_accessor :mean_seconds_to_resolve

    # Mean engaged time across all responders. Engaged time is measured from the time  a user engages with an incident (by acknowledging or accepting a responder request)  until the incident is resolved. This may include periods in which the incidents were snoozed. This metric uses the incident response effort values that  [users have defined](https://support.pagerduty.com/docs/edit-incidents#edit-incident-duration), if they exist.
    attr_accessor :mean_user_defined_engaged_seconds

    # Median time between the start of an incident, and the first responder to acknowledge.
    attr_accessor :p50_seconds_to_first_ack

    # Median time from when an incident was triggered until it was resolved.
    attr_accessor :p50_seconds_to_resolve

    # 75th percentile for the time between the start of an incident, and the first responder to acknowledge.
    attr_accessor :p75_seconds_to_first_ack

    # 75th percentile for the time when an incident was triggered until it was resolved.
    attr_accessor :p75_seconds_to_resolve

    # 90th percentile for the time between the start of an incident, and the first responder to acknowledge.
    attr_accessor :p90_seconds_to_first_ack

    # 90th percentile for the time when an incident was triggered until it was resolved.
    attr_accessor :p90_seconds_to_resolve

    # 95th percentile for the time between the start of an incident, and the first responder to acknowledge.
    attr_accessor :p95_seconds_to_first_ack

    # 95th percentile for the time when an incident was triggered until it was resolved.
    attr_accessor :p95_seconds_to_resolve

    # Start of the date range for which the metrics were calculated. Only included when an aggregate unit is specified in the request.
    attr_accessor :range_start

    # ID of the service. Only included when aggregating by service. Not included when aggregating by all.
    attr_accessor :service_id

    # Name of the service. Only included when aggregating by service. Not included when aggregating by all.
    attr_accessor :service_name

    # ID of the team to which the incident was assigned. Not included when aggregating by all.
    attr_accessor :team_id

    # Name of the team to which the incident was assigned. Not included when aggregating by all.
    attr_accessor :team_name

    # Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone.
    attr_accessor :total_business_hour_interruptions

    # Total engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed.
    attr_accessor :total_engaged_seconds

    # Total count of instances where an incident is escalated between responders assigned to an escalation policy.
    attr_accessor :total_escalation_count

    # The total number of incidents that were created.
    attr_accessor :total_incident_count

    # The total count of assigned incidents acknowledged.  Only explicit incident acknowledgment counts; reassign, resolve, and escalation actions do not imply acknowledgement.
    attr_accessor :total_incidents_acknowledged

    # The total count of incidents that were resolved automatically.  This count includes incidents resolved via an integration and those that were [auto-resolved in PagerDuty](https://support.pagerduty.com/docs/configurable-service-settings#auto-resolution).
    attr_accessor :total_incidents_auto_resolved

    # The total count of incidents that were manually escalated.
    attr_accessor :total_incidents_manual_escalated

    # The total count of incidents that were reassigned.
    attr_accessor :total_incidents_reassigned

    # The total count of incidents that were escalated due to timeouts.
    attr_accessor :total_incidents_timeout_escalated

    # Total number of unique interruptions.
    attr_accessor :total_interruptions

    # The total count of incident notifications sent via email, SMS, phone call and push.
    attr_accessor :total_notifications

    # Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone.
    attr_accessor :total_off_hour_interruptions

    # Total number of unique interruptions during sleep hours. Sleep hours: 10pm-8am every day, based on the user’s time zone.
    attr_accessor :total_sleep_hour_interruptions

    # Total number of seconds incidents were snoozed.
    attr_accessor :total_snoozed_seconds

    # Total engaged time across all responders. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed. This metric uses the edited incident response effort values that  [users have defined](https://support.pagerduty.com/docs/edit-incidents#edit-incident-duration), if they exist.
    attr_accessor :total_user_defined_engaged_seconds

    # The percentage of time in the defined date range that the service was not interrupted by a [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents). Only included when aggregating by team, escalation policy, service, or all services.
    attr_accessor :up_time_pct

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mean_assignment_count' => :'mean_assignment_count',
        :'mean_engaged_seconds' => :'mean_engaged_seconds',
        :'mean_engaged_user_count' => :'mean_engaged_user_count',
        :'mean_seconds_to_engage' => :'mean_seconds_to_engage',
        :'mean_seconds_to_first_ack' => :'mean_seconds_to_first_ack',
        :'mean_seconds_to_mobilize' => :'mean_seconds_to_mobilize',
        :'mean_seconds_to_resolve' => :'mean_seconds_to_resolve',
        :'mean_user_defined_engaged_seconds' => :'mean_user_defined_engaged_seconds',
        :'p50_seconds_to_first_ack' => :'p50_seconds_to_first_ack',
        :'p50_seconds_to_resolve' => :'p50_seconds_to_resolve',
        :'p75_seconds_to_first_ack' => :'p75_seconds_to_first_ack',
        :'p75_seconds_to_resolve' => :'p75_seconds_to_resolve',
        :'p90_seconds_to_first_ack' => :'p90_seconds_to_first_ack',
        :'p90_seconds_to_resolve' => :'p90_seconds_to_resolve',
        :'p95_seconds_to_first_ack' => :'p95_seconds_to_first_ack',
        :'p95_seconds_to_resolve' => :'p95_seconds_to_resolve',
        :'range_start' => :'range_start',
        :'service_id' => :'service_id',
        :'service_name' => :'service_name',
        :'team_id' => :'team_id',
        :'team_name' => :'team_name',
        :'total_business_hour_interruptions' => :'total_business_hour_interruptions',
        :'total_engaged_seconds' => :'total_engaged_seconds',
        :'total_escalation_count' => :'total_escalation_count',
        :'total_incident_count' => :'total_incident_count',
        :'total_incidents_acknowledged' => :'total_incidents_acknowledged',
        :'total_incidents_auto_resolved' => :'total_incidents_auto_resolved',
        :'total_incidents_manual_escalated' => :'total_incidents_manual_escalated',
        :'total_incidents_reassigned' => :'total_incidents_reassigned',
        :'total_incidents_timeout_escalated' => :'total_incidents_timeout_escalated',
        :'total_interruptions' => :'total_interruptions',
        :'total_notifications' => :'total_notifications',
        :'total_off_hour_interruptions' => :'total_off_hour_interruptions',
        :'total_sleep_hour_interruptions' => :'total_sleep_hour_interruptions',
        :'total_snoozed_seconds' => :'total_snoozed_seconds',
        :'total_user_defined_engaged_seconds' => :'total_user_defined_engaged_seconds',
        :'up_time_pct' => :'up_time_pct'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mean_assignment_count' => :'Integer',
        :'mean_engaged_seconds' => :'Integer',
        :'mean_engaged_user_count' => :'Integer',
        :'mean_seconds_to_engage' => :'Integer',
        :'mean_seconds_to_first_ack' => :'Integer',
        :'mean_seconds_to_mobilize' => :'Integer',
        :'mean_seconds_to_resolve' => :'Integer',
        :'mean_user_defined_engaged_seconds' => :'Integer',
        :'p50_seconds_to_first_ack' => :'Integer',
        :'p50_seconds_to_resolve' => :'Integer',
        :'p75_seconds_to_first_ack' => :'Integer',
        :'p75_seconds_to_resolve' => :'Integer',
        :'p90_seconds_to_first_ack' => :'Integer',
        :'p90_seconds_to_resolve' => :'Integer',
        :'p95_seconds_to_first_ack' => :'Integer',
        :'p95_seconds_to_resolve' => :'Integer',
        :'range_start' => :'String',
        :'service_id' => :'String',
        :'service_name' => :'String',
        :'team_id' => :'String',
        :'team_name' => :'String',
        :'total_business_hour_interruptions' => :'Integer',
        :'total_engaged_seconds' => :'Integer',
        :'total_escalation_count' => :'Integer',
        :'total_incident_count' => :'Integer',
        :'total_incidents_acknowledged' => :'Integer',
        :'total_incidents_auto_resolved' => :'Object',
        :'total_incidents_manual_escalated' => :'Integer',
        :'total_incidents_reassigned' => :'Integer',
        :'total_incidents_timeout_escalated' => :'Integer',
        :'total_interruptions' => :'Integer',
        :'total_notifications' => :'Integer',
        :'total_off_hour_interruptions' => :'Integer',
        :'total_sleep_hour_interruptions' => :'Integer',
        :'total_snoozed_seconds' => :'Integer',
        :'total_user_defined_engaged_seconds' => :'Integer',
        :'up_time_pct' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'total_incidents_auto_resolved',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::AnalyticsIncidentMetrics` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::AnalyticsIncidentMetrics`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'mean_assignment_count')
        self.mean_assignment_count = attributes[:'mean_assignment_count']
      end

      if attributes.key?(:'mean_engaged_seconds')
        self.mean_engaged_seconds = attributes[:'mean_engaged_seconds']
      end

      if attributes.key?(:'mean_engaged_user_count')
        self.mean_engaged_user_count = attributes[:'mean_engaged_user_count']
      end

      if attributes.key?(:'mean_seconds_to_engage')
        self.mean_seconds_to_engage = attributes[:'mean_seconds_to_engage']
      end

      if attributes.key?(:'mean_seconds_to_first_ack')
        self.mean_seconds_to_first_ack = attributes[:'mean_seconds_to_first_ack']
      end

      if attributes.key?(:'mean_seconds_to_mobilize')
        self.mean_seconds_to_mobilize = attributes[:'mean_seconds_to_mobilize']
      end

      if attributes.key?(:'mean_seconds_to_resolve')
        self.mean_seconds_to_resolve = attributes[:'mean_seconds_to_resolve']
      end

      if attributes.key?(:'mean_user_defined_engaged_seconds')
        self.mean_user_defined_engaged_seconds = attributes[:'mean_user_defined_engaged_seconds']
      end

      if attributes.key?(:'p50_seconds_to_first_ack')
        self.p50_seconds_to_first_ack = attributes[:'p50_seconds_to_first_ack']
      end

      if attributes.key?(:'p50_seconds_to_resolve')
        self.p50_seconds_to_resolve = attributes[:'p50_seconds_to_resolve']
      end

      if attributes.key?(:'p75_seconds_to_first_ack')
        self.p75_seconds_to_first_ack = attributes[:'p75_seconds_to_first_ack']
      end

      if attributes.key?(:'p75_seconds_to_resolve')
        self.p75_seconds_to_resolve = attributes[:'p75_seconds_to_resolve']
      end

      if attributes.key?(:'p90_seconds_to_first_ack')
        self.p90_seconds_to_first_ack = attributes[:'p90_seconds_to_first_ack']
      end

      if attributes.key?(:'p90_seconds_to_resolve')
        self.p90_seconds_to_resolve = attributes[:'p90_seconds_to_resolve']
      end

      if attributes.key?(:'p95_seconds_to_first_ack')
        self.p95_seconds_to_first_ack = attributes[:'p95_seconds_to_first_ack']
      end

      if attributes.key?(:'p95_seconds_to_resolve')
        self.p95_seconds_to_resolve = attributes[:'p95_seconds_to_resolve']
      end

      if attributes.key?(:'range_start')
        self.range_start = attributes[:'range_start']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'team_id')
        self.team_id = attributes[:'team_id']
      end

      if attributes.key?(:'team_name')
        self.team_name = attributes[:'team_name']
      end

      if attributes.key?(:'total_business_hour_interruptions')
        self.total_business_hour_interruptions = attributes[:'total_business_hour_interruptions']
      end

      if attributes.key?(:'total_engaged_seconds')
        self.total_engaged_seconds = attributes[:'total_engaged_seconds']
      end

      if attributes.key?(:'total_escalation_count')
        self.total_escalation_count = attributes[:'total_escalation_count']
      end

      if attributes.key?(:'total_incident_count')
        self.total_incident_count = attributes[:'total_incident_count']
      end

      if attributes.key?(:'total_incidents_acknowledged')
        self.total_incidents_acknowledged = attributes[:'total_incidents_acknowledged']
      end

      if attributes.key?(:'total_incidents_auto_resolved')
        self.total_incidents_auto_resolved = attributes[:'total_incidents_auto_resolved']
      end

      if attributes.key?(:'total_incidents_manual_escalated')
        self.total_incidents_manual_escalated = attributes[:'total_incidents_manual_escalated']
      end

      if attributes.key?(:'total_incidents_reassigned')
        self.total_incidents_reassigned = attributes[:'total_incidents_reassigned']
      end

      if attributes.key?(:'total_incidents_timeout_escalated')
        self.total_incidents_timeout_escalated = attributes[:'total_incidents_timeout_escalated']
      end

      if attributes.key?(:'total_interruptions')
        self.total_interruptions = attributes[:'total_interruptions']
      end

      if attributes.key?(:'total_notifications')
        self.total_notifications = attributes[:'total_notifications']
      end

      if attributes.key?(:'total_off_hour_interruptions')
        self.total_off_hour_interruptions = attributes[:'total_off_hour_interruptions']
      end

      if attributes.key?(:'total_sleep_hour_interruptions')
        self.total_sleep_hour_interruptions = attributes[:'total_sleep_hour_interruptions']
      end

      if attributes.key?(:'total_snoozed_seconds')
        self.total_snoozed_seconds = attributes[:'total_snoozed_seconds']
      end

      if attributes.key?(:'total_user_defined_engaged_seconds')
        self.total_user_defined_engaged_seconds = attributes[:'total_user_defined_engaged_seconds']
      end

      if attributes.key?(:'up_time_pct')
        self.up_time_pct = attributes[:'up_time_pct']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mean_assignment_count == o.mean_assignment_count &&
          mean_engaged_seconds == o.mean_engaged_seconds &&
          mean_engaged_user_count == o.mean_engaged_user_count &&
          mean_seconds_to_engage == o.mean_seconds_to_engage &&
          mean_seconds_to_first_ack == o.mean_seconds_to_first_ack &&
          mean_seconds_to_mobilize == o.mean_seconds_to_mobilize &&
          mean_seconds_to_resolve == o.mean_seconds_to_resolve &&
          mean_user_defined_engaged_seconds == o.mean_user_defined_engaged_seconds &&
          p50_seconds_to_first_ack == o.p50_seconds_to_first_ack &&
          p50_seconds_to_resolve == o.p50_seconds_to_resolve &&
          p75_seconds_to_first_ack == o.p75_seconds_to_first_ack &&
          p75_seconds_to_resolve == o.p75_seconds_to_resolve &&
          p90_seconds_to_first_ack == o.p90_seconds_to_first_ack &&
          p90_seconds_to_resolve == o.p90_seconds_to_resolve &&
          p95_seconds_to_first_ack == o.p95_seconds_to_first_ack &&
          p95_seconds_to_resolve == o.p95_seconds_to_resolve &&
          range_start == o.range_start &&
          service_id == o.service_id &&
          service_name == o.service_name &&
          team_id == o.team_id &&
          team_name == o.team_name &&
          total_business_hour_interruptions == o.total_business_hour_interruptions &&
          total_engaged_seconds == o.total_engaged_seconds &&
          total_escalation_count == o.total_escalation_count &&
          total_incident_count == o.total_incident_count &&
          total_incidents_acknowledged == o.total_incidents_acknowledged &&
          total_incidents_auto_resolved == o.total_incidents_auto_resolved &&
          total_incidents_manual_escalated == o.total_incidents_manual_escalated &&
          total_incidents_reassigned == o.total_incidents_reassigned &&
          total_incidents_timeout_escalated == o.total_incidents_timeout_escalated &&
          total_interruptions == o.total_interruptions &&
          total_notifications == o.total_notifications &&
          total_off_hour_interruptions == o.total_off_hour_interruptions &&
          total_sleep_hour_interruptions == o.total_sleep_hour_interruptions &&
          total_snoozed_seconds == o.total_snoozed_seconds &&
          total_user_defined_engaged_seconds == o.total_user_defined_engaged_seconds &&
          up_time_pct == o.up_time_pct
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mean_assignment_count, mean_engaged_seconds, mean_engaged_user_count, mean_seconds_to_engage, mean_seconds_to_first_ack, mean_seconds_to_mobilize, mean_seconds_to_resolve, mean_user_defined_engaged_seconds, p50_seconds_to_first_ack, p50_seconds_to_resolve, p75_seconds_to_first_ack, p75_seconds_to_resolve, p90_seconds_to_first_ack, p90_seconds_to_resolve, p95_seconds_to_first_ack, p95_seconds_to_resolve, range_start, service_id, service_name, team_id, team_name, total_business_hour_interruptions, total_engaged_seconds, total_escalation_count, total_incident_count, total_incidents_acknowledged, total_incidents_auto_resolved, total_incidents_manual_escalated, total_incidents_reassigned, total_incidents_timeout_escalated, total_interruptions, total_notifications, total_off_hour_interruptions, total_sleep_hour_interruptions, total_snoozed_seconds, total_user_defined_engaged_seconds, up_time_pct].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = PagerDutyOpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end