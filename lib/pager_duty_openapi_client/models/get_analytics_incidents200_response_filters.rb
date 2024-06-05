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
  # A collection of filters that were applied to the results.
  class GetAnalyticsIncidents200ResponseFilters
    # The lower boundary for the created_at range filter applied to the results.
    attr_accessor :created_at_start

    # The upper boundary for the created_at range filter applied to the results.
    attr_accessor :created_at_end

    # The urgency filter applied to the results.
    attr_accessor :urgency

    # The [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents) filter applied to the results.
    attr_accessor :major

    # The team_ids filter applied to the results.
    attr_accessor :team_ids

    # The service_ids filter applied to the results.
    attr_accessor :service_ids

    # The priority_ids filter applied to the results.
    attr_accessor :priority_ids

    # The priority_names filter applied to the results.
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
        :'team_ids' => :'team_ids',
        :'service_ids' => :'service_ids',
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
        :'team_ids' => :'Array<String>',
        :'service_ids' => :'Array<String>',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::GetAnalyticsIncidents200ResponseFilters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::GetAnalyticsIncidents200ResponseFilters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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
      if !@priority_ids.nil? && @priority_ids.length > 5
        invalid_properties.push('invalid value for "priority_ids", number of items must be less than or equal to 5.')
      end

      if !@priority_names.nil? && @priority_names.length > 5
        invalid_properties.push('invalid value for "priority_names", number of items must be less than or equal to 5.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      urgency_validator = EnumAttributeValidator.new('String', ["high", "low"])
      return false unless urgency_validator.valid?(@urgency)
      return false if !@priority_ids.nil? && @priority_ids.length > 5
      return false if !@priority_names.nil? && @priority_names.length > 5
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

    # Custom attribute writer method with validation
    # @param [Object] priority_ids Value to be assigned
    def priority_ids=(priority_ids)
      if priority_ids.nil?
        fail ArgumentError, 'priority_ids cannot be nil'
      end

      if priority_ids.length > 5
        fail ArgumentError, 'invalid value for "priority_ids", number of items must be less than or equal to 5.'
      end

      @priority_ids = priority_ids
    end

    # Custom attribute writer method with validation
    # @param [Object] priority_names Value to be assigned
    def priority_names=(priority_names)
      if priority_names.nil?
        fail ArgumentError, 'priority_names cannot be nil'
      end

      if priority_names.length > 5
        fail ArgumentError, 'invalid value for "priority_names", number of items must be less than or equal to 5.'
      end

      @priority_names = priority_names
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
          team_ids == o.team_ids &&
          service_ids == o.service_ids &&
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
      [created_at_start, created_at_end, urgency, major, team_ids, service_ids, priority_ids, priority_names].hash
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
