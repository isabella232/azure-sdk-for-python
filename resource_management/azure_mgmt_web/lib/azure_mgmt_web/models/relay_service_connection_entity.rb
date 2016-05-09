# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Class that represents a Biztalk Hybrid Connection
    #
    class RelayServiceConnectionEntity < MsRestAzure::Resource

      include MsRestAzure

      # @return [RelayServiceConnectionEntityProperties]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.location
        output_object['location'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tags
        output_object['tags'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = RelayServiceConnectionEntityProperties.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [RelayServiceConnectionEntity] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = RelayServiceConnectionEntity.new

        deserialized_property = object['location']
        output_object.location = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['tags']
        output_object.tags = deserialized_property

        deserialized_property = object['properties']
        unless deserialized_property.nil?
          deserialized_property = RelayServiceConnectionEntityProperties.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        output_object
      end
    end
  end
end
