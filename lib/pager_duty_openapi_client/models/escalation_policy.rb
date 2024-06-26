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
  class EscalationPolicy
    # The type of object being created.
    attr_accessor :type

    # The name of the escalation policy.
    attr_accessor :name

    # Escalation policy description.
    attr_accessor :description

    # The number of times the escalation policy will repeat after reaching the end of its escalation.
    attr_accessor :num_loops

    # Determines how on call handoff notifications will be sent for users on the escalation policy. Defaults to \"if_has_services\".
    attr_accessor :on_call_handoff_notifications

    attr_accessor :escalation_rules

    attr_accessor :services

    # Team associated with the policy. Account must have the `teams` ability to use this parameter. Only one team may be associated with the policy.
    attr_accessor :teams

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
        :'type' => :'type',
        :'name' => :'name',
        :'description' => :'description',
        :'num_loops' => :'num_loops',
        :'on_call_handoff_notifications' => :'on_call_handoff_notifications',
        :'escalation_rules' => :'escalation_rules',
        :'services' => :'services',
        :'teams' => :'teams'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'num_loops' => :'Integer',
        :'on_call_handoff_notifications' => :'String',
        :'escalation_rules' => :'Array<EscalationRule>',
        :'services' => :'Array<ServiceReference>',
        :'teams' => :'Array<TeamReference>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Model0'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::EscalationPolicy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::EscalationPolicy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'escalation_policy'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'num_loops')
        self.num_loops = attributes[:'num_loops']
      else
        self.num_loops = 0
      end

      if attributes.key?(:'on_call_handoff_notifications')
        self.on_call_handoff_notifications = attributes[:'on_call_handoff_notifications']
      end

      if attributes.key?(:'escalation_rules')
        if (value = attributes[:'escalation_rules']).is_a?(Array)
          self.escalation_rules = value
        end
      else
        self.escalation_rules = nil
      end

      if attributes.key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.key?(:'teams')
        if (value = attributes[:'teams']).is_a?(Array)
          self.teams = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@num_loops.nil? && @num_loops < 0
        invalid_properties.push('invalid value for "num_loops", must be greater than or equal to 0.')
      end

      if @escalation_rules.nil?
        invalid_properties.push('invalid value for "escalation_rules", escalation_rules cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["escalation_policy"])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      return false if !@num_loops.nil? && @num_loops < 0
      on_call_handoff_notifications_validator = EnumAttributeValidator.new('String', ["if_has_services", "always"])
      return false unless on_call_handoff_notifications_validator.valid?(@on_call_handoff_notifications)
      return false if @escalation_rules.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["escalation_policy"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] num_loops Value to be assigned
    def num_loops=(num_loops)
      if num_loops.nil?
        fail ArgumentError, 'num_loops cannot be nil'
      end

      if num_loops < 0
        fail ArgumentError, 'invalid value for "num_loops", must be greater than or equal to 0.'
      end

      @num_loops = num_loops
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_call_handoff_notifications Object to be assigned
    def on_call_handoff_notifications=(on_call_handoff_notifications)
      validator = EnumAttributeValidator.new('String', ["if_has_services", "always"])
      unless validator.valid?(on_call_handoff_notifications)
        fail ArgumentError, "invalid value for \"on_call_handoff_notifications\", must be one of #{validator.allowable_values}."
      end
      @on_call_handoff_notifications = on_call_handoff_notifications
    end

    # Custom attribute writer method with validation
    # @param [Object] services Value to be assigned
    def services=(services)
      if services.nil?
        fail ArgumentError, 'services cannot be nil'
      end

      @services = services
    end

    # Custom attribute writer method with validation
    # @param [Object] teams Value to be assigned
    def teams=(teams)
      if teams.nil?
        fail ArgumentError, 'teams cannot be nil'
      end

      @teams = teams
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          name == o.name &&
          description == o.description &&
          num_loops == o.num_loops &&
          on_call_handoff_notifications == o.on_call_handoff_notifications &&
          escalation_rules == o.escalation_rules &&
          services == o.services &&
          teams == o.teams
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, description, num_loops, on_call_handoff_notifications, escalation_rules, services, teams].hash
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
