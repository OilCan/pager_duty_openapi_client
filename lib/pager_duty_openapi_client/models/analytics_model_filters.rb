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
  # Accepts a set of filters to apply to the Incidents before aggregating.  Any incidents that do not match the included filters will be omitted from the results
  class AnalyticsModelFilters
    # Accepts an ISO8601 DateTime string. Any incidents with a created_at less than this value will be omitted from the results. The maximum supported time range in conjunction with created_at_end is one year.
    attr_accessor :created_at_start

    # Accepts an ISO8601 DateTime string. Any incidents with a created_at greater than or equal to this value will be omitted from the results. The maximum supported time range in conjunction with created_at_start is one year.
    attr_accessor :created_at_end

    # Any incidents whose urgency does not match the provided string will be omitted from the results.
    attr_accessor :urgency

    # A boolean flag including whether results should contain *only* [major incidents](https://support.pagerduty.com/docs/operational-reviews#major-incidents), or exclude major incidents. If no value is provided all incidents will be included.
    attr_accessor :major

    # An integer that sets the requirement for the minimum number of acknowledgements to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 acknowledgement. If no value is provided, all incidents will be included.
    attr_accessor :min_ackowledgements

    # An integer that sets the requirement for the minimum number of timeout escalations to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 timeout escalation. If no value is provided, all incidents will be included.
    attr_accessor :min_timeout_escalations

    # An integer that sets the requirement for the minimum number of manual escalations to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 manual escalation. If no value is provided, all incidents will be included.
    attr_accessor :min_manual_escalations

    # An array of team IDs. Only incidents related to these teams will be included in the results. If omitted, all teams the requestor has access to will be included in the results.
    attr_accessor :team_ids

    # An array of service IDs. Only incidents related to these services will be included in the results. If omitted, all services the requestor has access to will be included in the results.
    attr_accessor :service_ids

    # An array of escalation policy IDs. Only incidents related to these escalation policies will be included in the results. If omitted, all escalation policies the requestor has access to will be included in the results.
    attr_accessor :escalation_policy_ids

    # An array of priority IDs. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results.
    attr_accessor :priority_ids

    # An array of user-defined priority names. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results.
    attr_accessor :priority_names

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at_start' => :'created_at_start',
        :'created_at_end' => :'created_at_end',
        :'urgency' => :'urgency',
        :'major' => :'major',
        :'min_ackowledgements' => :'min_ackowledgements',
        :'min_timeout_escalations' => :'min_timeout_escalations',
        :'min_manual_escalations' => :'min_manual_escalations',
        :'team_ids' => :'team_ids',
        :'service_ids' => :'service_ids',
        :'escalation_policy_ids' => :'escalation_policy_ids',
        :'priority_ids' => :'priority_ids',
        :'priority_names' => :'priority_names'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at_start' => :'String',
        :'created_at_end' => :'String',
        :'urgency' => :'String',
        :'major' => :'Boolean',
        :'min_ackowledgements' => :'Integer',
        :'min_timeout_escalations' => :'Integer',
        :'min_manual_escalations' => :'Integer',
        :'team_ids' => :'Array<String>',
        :'service_ids' => :'Array<String>',
        :'escalation_policy_ids' => :'Array<String>',
        :'priority_ids' => :'Array<String>',
        :'priority_names' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::AnalyticsModelFilters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::AnalyticsModelFilters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at_start')
        self.created_at_start = attributes[:'created_at_start']
      end

      if attributes.key?(:'created_at_end')
        self.created_at_end = attributes[:'created_at_end']
      end

      if attributes.key?(:'urgency')
        self.urgency = attributes[:'urgency']
      end

      if attributes.key?(:'major')
        self.major = attributes[:'major']
      end

      if attributes.key?(:'min_ackowledgements')
        self.min_ackowledgements = attributes[:'min_ackowledgements']
      end

      if attributes.key?(:'min_timeout_escalations')
        self.min_timeout_escalations = attributes[:'min_timeout_escalations']
      end

      if attributes.key?(:'min_manual_escalations')
        self.min_manual_escalations = attributes[:'min_manual_escalations']
      end

      if attributes.key?(:'team_ids')
        if (value = attributes[:'team_ids']).is_a?(Array)
          self.team_ids = value
        end
      end

      if attributes.key?(:'service_ids')
        if (value = attributes[:'service_ids']).is_a?(Array)
          self.service_ids = value
        end
      end

      if attributes.key?(:'escalation_policy_ids')
        if (value = attributes[:'escalation_policy_ids']).is_a?(Array)
          self.escalation_policy_ids = value
        end
      end

      if attributes.key?(:'priority_ids')
        if (value = attributes[:'priority_ids']).is_a?(Array)
          self.priority_ids = value
        end
      end

      if attributes.key?(:'priority_names')
        if (value = attributes[:'priority_names']).is_a?(Array)
          self.priority_names = value
        end
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
      urgency_validator = EnumAttributeValidator.new('String', ["high", "low"])
      return false unless urgency_validator.valid?(@urgency)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] urgency Object to be assigned
    def urgency=(urgency)
      validator = EnumAttributeValidator.new('String', ["high", "low"])
      unless validator.valid?(urgency)
        fail ArgumentError, "invalid value for \"urgency\", must be one of #{validator.allowable_values}."
      end
      @urgency = urgency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at_start == o.created_at_start &&
          created_at_end == o.created_at_end &&
          urgency == o.urgency &&
          major == o.major &&
          min_ackowledgements == o.min_ackowledgements &&
          min_timeout_escalations == o.min_timeout_escalations &&
          min_manual_escalations == o.min_manual_escalations &&
          team_ids == o.team_ids &&
          service_ids == o.service_ids &&
          escalation_policy_ids == o.escalation_policy_ids &&
          priority_ids == o.priority_ids &&
          priority_names == o.priority_names
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at_start, created_at_end, urgency, major, min_ackowledgements, min_timeout_escalations, min_manual_escalations, team_ids, service_ids, escalation_policy_ids, priority_ids, priority_names].hash
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
