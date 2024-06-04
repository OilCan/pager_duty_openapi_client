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
  class ScheduleLayer
    attr_accessor :id

    # The start time of this layer.
    attr_accessor :start

    # The end time of this layer. If `null`, the layer does not end.
    attr_accessor :_end

    # The ordered list of users on this layer. The position of the user on the list determines their order in the layer.
    attr_accessor :users

    # An array of restrictions for the layer. A restriction is a limit on which period of the day or week the schedule layer can accept assignments. Restrictions respect the `time_zone` parameter of the request.
    attr_accessor :restrictions

    # The effective start time of the layer. This can be before the start time of the schedule.
    attr_accessor :rotation_virtual_start

    # The duration of each on-call shift in seconds.
    attr_accessor :rotation_turn_length_seconds

    # The name of the schedule layer.
    attr_accessor :name

    # This is a list of entries on the computed layer for the current time range. Since or until must be set in order for this field to be populated.
    attr_accessor :rendered_schedule_entries

    # The percentage of the time range covered by this layer. Returns null unless since or until are set.
    attr_accessor :rendered_coverage_percentage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'start' => :'start',
        :'_end' => :'end',
        :'users' => :'users',
        :'restrictions' => :'restrictions',
        :'rotation_virtual_start' => :'rotation_virtual_start',
        :'rotation_turn_length_seconds' => :'rotation_turn_length_seconds',
        :'name' => :'name',
        :'rendered_schedule_entries' => :'rendered_schedule_entries',
        :'rendered_coverage_percentage' => :'rendered_coverage_percentage'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'start' => :'Time',
        :'_end' => :'Time',
        :'users' => :'Array<ScheduleLayerUser>',
        :'restrictions' => :'Array<Restriction>',
        :'rotation_virtual_start' => :'Time',
        :'rotation_turn_length_seconds' => :'Integer',
        :'name' => :'String',
        :'rendered_schedule_entries' => :'Array<ScheduleLayerEntry>',
        :'rendered_coverage_percentage' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ScheduleLayer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ScheduleLayer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      else
        self.start = nil
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      else
        self.users = nil
      end

      if attributes.key?(:'restrictions')
        if (value = attributes[:'restrictions']).is_a?(Array)
          self.restrictions = value
        end
      end

      if attributes.key?(:'rotation_virtual_start')
        self.rotation_virtual_start = attributes[:'rotation_virtual_start']
      else
        self.rotation_virtual_start = nil
      end

      if attributes.key?(:'rotation_turn_length_seconds')
        self.rotation_turn_length_seconds = attributes[:'rotation_turn_length_seconds']
      else
        self.rotation_turn_length_seconds = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rendered_schedule_entries')
        if (value = attributes[:'rendered_schedule_entries']).is_a?(Array)
          self.rendered_schedule_entries = value
        end
      end

      if attributes.key?(:'rendered_coverage_percentage')
        self.rendered_coverage_percentage = attributes[:'rendered_coverage_percentage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @start.nil?
        invalid_properties.push('invalid value for "start", start cannot be nil.')
      end

      if @users.nil?
        invalid_properties.push('invalid value for "users", users cannot be nil.')
      end

      if @rotation_virtual_start.nil?
        invalid_properties.push('invalid value for "rotation_virtual_start", rotation_virtual_start cannot be nil.')
      end

      if @rotation_turn_length_seconds.nil?
        invalid_properties.push('invalid value for "rotation_turn_length_seconds", rotation_turn_length_seconds cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @start.nil?
      return false if @users.nil?
      return false if @rotation_virtual_start.nil?
      return false if @rotation_turn_length_seconds.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          start == o.start &&
          _end == o._end &&
          users == o.users &&
          restrictions == o.restrictions &&
          rotation_virtual_start == o.rotation_virtual_start &&
          rotation_turn_length_seconds == o.rotation_turn_length_seconds &&
          name == o.name &&
          rendered_schedule_entries == o.rendered_schedule_entries &&
          rendered_coverage_percentage == o.rendered_coverage_percentage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, start, _end, users, restrictions, rotation_virtual_start, rotation_turn_length_seconds, name, rendered_schedule_entries, rendered_coverage_percentage].hash
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