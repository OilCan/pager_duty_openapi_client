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

module OpenapiClient
  class AnalyticsResponderMetrics
    # Mean engaged time across all responders for incidents that match the given filters. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed.
    attr_accessor :mean_engaged_seconds

    # The average time between when an incident is first assigned to a user and when the incident is first acknowledged by that user. Reassign, resolve, and escalation actions do not imply acknowledgement.
    attr_accessor :mean_time_to_acknowledge_seconds

    # ID of the responder (user). Not included when aggregating by all responders.
    attr_accessor :responder_id

    # Name of the responder (user). Not included when aggregating by all responders.
    attr_accessor :responder_name

    # ID of the team associated with the responder. Not included when aggregating by all responders.
    attr_accessor :team_id

    # Name of the team associated with the responder. Not included when aggregating by all responders.
    attr_accessor :team_name

    # Total number of unique interruptions during business hours; 8am-6pm Mon-Fri, based on the user’s time zone.
    attr_accessor :total_business_hour_interruptions

    # Total engaged time across all responders for incidents. Engaged time is measured from the time a user engages with an incident (by acknowledging or accepting a responder request) until the incident is resolved. This may include periods in which the incidents were snoozed.
    attr_accessor :total_engaged_seconds

    # The total number of incidents that were created.
    attr_accessor :total_incident_count

    # The total count of assigned incidents acknowledged by the user.  Only explicit incident acknowledgment counts; reassign, resolve, and escalation actions do not imply acknowledgement.
    attr_accessor :total_incidents_acknowledged

    # The total count of the user’s assigned incidents that were manually escalated away from a user without acknowledgement.
    attr_accessor :total_incidents_manual_escalated_from

    # The total count of incidents the user was manually escalated to.
    attr_accessor :total_incidents_manual_escalated_to

    # The total count of a user's assigned incidents that were reassigned away from the user to another user or escalation policy.
    attr_accessor :total_incidents_reassigned_from

    # The total count of incidents the user was reassigned to.
    attr_accessor :total_incidents_reassigned_to

    # The total count of the user’s assigned incidents that were escalated due to timeouts.
    attr_accessor :total_incidents_timeout_escalated_from

    # The total count of incidents the user was escalated to due to timeouts.
    attr_accessor :total_incidents_timeout_escalated_to

    # Total number of unique interruptions.
    attr_accessor :total_interruptions

    # The total count of incident notifications sent via email, SMS, phone call and push.
    attr_accessor :total_notifications

    # Total number of unique interruptions during off hours; 6pm-10pm Mon-Fri and all day Sat-Sun, based on the user’s time zone.
    attr_accessor :total_off_hour_interruptions

    # Total seconds the responder was on call.
    attr_accessor :total_seconds_on_call

    # Total seconds the responder was on call at level 1 of their escalation policy.
    attr_accessor :total_seconds_on_call_level_1

    # Total seconds the responder was on call at level 2 or higher of their escalation policy.
    attr_accessor :total_seconds_on_call_level_2_plus

    # Total number of unique interruptions during sleep hours; 10pm-8am every day, based on the user’s time zone.
    attr_accessor :total_sleep_hour_interruptions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mean_engaged_seconds' => :'mean_engaged_seconds',
        :'mean_time_to_acknowledge_seconds' => :'mean_time_to_acknowledge_seconds',
        :'responder_id' => :'responder_id',
        :'responder_name' => :'responder_name',
        :'team_id' => :'team_id',
        :'team_name' => :'team_name',
        :'total_business_hour_interruptions' => :'total_business_hour_interruptions',
        :'total_engaged_seconds' => :'total_engaged_seconds',
        :'total_incident_count' => :'total_incident_count',
        :'total_incidents_acknowledged' => :'total_incidents_acknowledged',
        :'total_incidents_manual_escalated_from' => :'total_incidents_manual_escalated_from',
        :'total_incidents_manual_escalated_to' => :'total_incidents_manual_escalated_to',
        :'total_incidents_reassigned_from' => :'total_incidents_reassigned_from',
        :'total_incidents_reassigned_to' => :'total_incidents_reassigned_to',
        :'total_incidents_timeout_escalated_from' => :'total_incidents_timeout_escalated_from',
        :'total_incidents_timeout_escalated_to' => :'total_incidents_timeout_escalated_to',
        :'total_interruptions' => :'total_interruptions',
        :'total_notifications' => :'total_notifications',
        :'total_off_hour_interruptions' => :'total_off_hour_interruptions',
        :'total_seconds_on_call' => :'total_seconds_on_call',
        :'total_seconds_on_call_level_1' => :'total_seconds_on_call_level_1',
        :'total_seconds_on_call_level_2_plus' => :'total_seconds_on_call_level_2_plus',
        :'total_sleep_hour_interruptions' => :'total_sleep_hour_interruptions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mean_engaged_seconds' => :'Integer',
        :'mean_time_to_acknowledge_seconds' => :'Integer',
        :'responder_id' => :'Integer',
        :'responder_name' => :'String',
        :'team_id' => :'String',
        :'team_name' => :'String',
        :'total_business_hour_interruptions' => :'Integer',
        :'total_engaged_seconds' => :'Integer',
        :'total_incident_count' => :'Integer',
        :'total_incidents_acknowledged' => :'Integer',
        :'total_incidents_manual_escalated_from' => :'Integer',
        :'total_incidents_manual_escalated_to' => :'Integer',
        :'total_incidents_reassigned_from' => :'Integer',
        :'total_incidents_reassigned_to' => :'Integer',
        :'total_incidents_timeout_escalated_from' => :'Integer',
        :'total_incidents_timeout_escalated_to' => :'Integer',
        :'total_interruptions' => :'Integer',
        :'total_notifications' => :'Integer',
        :'total_off_hour_interruptions' => :'Integer',
        :'total_seconds_on_call' => :'Integer',
        :'total_seconds_on_call_level_1' => :'Integer',
        :'total_seconds_on_call_level_2_plus' => :'Integer',
        :'total_sleep_hour_interruptions' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::AnalyticsResponderMetrics` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::AnalyticsResponderMetrics`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'mean_engaged_seconds')
        self.mean_engaged_seconds = attributes[:'mean_engaged_seconds']
      end

      if attributes.key?(:'mean_time_to_acknowledge_seconds')
        self.mean_time_to_acknowledge_seconds = attributes[:'mean_time_to_acknowledge_seconds']
      end

      if attributes.key?(:'responder_id')
        self.responder_id = attributes[:'responder_id']
      end

      if attributes.key?(:'responder_name')
        self.responder_name = attributes[:'responder_name']
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

      if attributes.key?(:'total_incident_count')
        self.total_incident_count = attributes[:'total_incident_count']
      end

      if attributes.key?(:'total_incidents_acknowledged')
        self.total_incidents_acknowledged = attributes[:'total_incidents_acknowledged']
      end

      if attributes.key?(:'total_incidents_manual_escalated_from')
        self.total_incidents_manual_escalated_from = attributes[:'total_incidents_manual_escalated_from']
      end

      if attributes.key?(:'total_incidents_manual_escalated_to')
        self.total_incidents_manual_escalated_to = attributes[:'total_incidents_manual_escalated_to']
      end

      if attributes.key?(:'total_incidents_reassigned_from')
        self.total_incidents_reassigned_from = attributes[:'total_incidents_reassigned_from']
      end

      if attributes.key?(:'total_incidents_reassigned_to')
        self.total_incidents_reassigned_to = attributes[:'total_incidents_reassigned_to']
      end

      if attributes.key?(:'total_incidents_timeout_escalated_from')
        self.total_incidents_timeout_escalated_from = attributes[:'total_incidents_timeout_escalated_from']
      end

      if attributes.key?(:'total_incidents_timeout_escalated_to')
        self.total_incidents_timeout_escalated_to = attributes[:'total_incidents_timeout_escalated_to']
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

      if attributes.key?(:'total_seconds_on_call')
        self.total_seconds_on_call = attributes[:'total_seconds_on_call']
      end

      if attributes.key?(:'total_seconds_on_call_level_1')
        self.total_seconds_on_call_level_1 = attributes[:'total_seconds_on_call_level_1']
      end

      if attributes.key?(:'total_seconds_on_call_level_2_plus')
        self.total_seconds_on_call_level_2_plus = attributes[:'total_seconds_on_call_level_2_plus']
      end

      if attributes.key?(:'total_sleep_hour_interruptions')
        self.total_sleep_hour_interruptions = attributes[:'total_sleep_hour_interruptions']
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
          mean_engaged_seconds == o.mean_engaged_seconds &&
          mean_time_to_acknowledge_seconds == o.mean_time_to_acknowledge_seconds &&
          responder_id == o.responder_id &&
          responder_name == o.responder_name &&
          team_id == o.team_id &&
          team_name == o.team_name &&
          total_business_hour_interruptions == o.total_business_hour_interruptions &&
          total_engaged_seconds == o.total_engaged_seconds &&
          total_incident_count == o.total_incident_count &&
          total_incidents_acknowledged == o.total_incidents_acknowledged &&
          total_incidents_manual_escalated_from == o.total_incidents_manual_escalated_from &&
          total_incidents_manual_escalated_to == o.total_incidents_manual_escalated_to &&
          total_incidents_reassigned_from == o.total_incidents_reassigned_from &&
          total_incidents_reassigned_to == o.total_incidents_reassigned_to &&
          total_incidents_timeout_escalated_from == o.total_incidents_timeout_escalated_from &&
          total_incidents_timeout_escalated_to == o.total_incidents_timeout_escalated_to &&
          total_interruptions == o.total_interruptions &&
          total_notifications == o.total_notifications &&
          total_off_hour_interruptions == o.total_off_hour_interruptions &&
          total_seconds_on_call == o.total_seconds_on_call &&
          total_seconds_on_call_level_1 == o.total_seconds_on_call_level_1 &&
          total_seconds_on_call_level_2_plus == o.total_seconds_on_call_level_2_plus &&
          total_sleep_hour_interruptions == o.total_sleep_hour_interruptions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mean_engaged_seconds, mean_time_to_acknowledge_seconds, responder_id, responder_name, team_id, team_name, total_business_hour_interruptions, total_engaged_seconds, total_incident_count, total_incidents_acknowledged, total_incidents_manual_escalated_from, total_incidents_manual_escalated_to, total_incidents_reassigned_from, total_incidents_reassigned_to, total_incidents_timeout_escalated_from, total_incidents_timeout_escalated_to, total_interruptions, total_notifications, total_off_hour_interruptions, total_seconds_on_call, total_seconds_on_call_level_1, total_seconds_on_call_level_2_plus, total_sleep_hour_interruptions].hash
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
        klass = OpenapiClient.const_get(type)
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
