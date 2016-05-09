# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Active Directory service principal information
    #
    class ServicePrincipal

      include MsRestAzure

      # @return [String] Gets or sets object Id
      attr_accessor :object_id

      # @return [String] Gets or sets object type
      attr_accessor :object_type

      # @return [String] Gets or sets service principal display name
      attr_accessor :display_name

      # @return [String] Gets or sets app id
      attr_accessor :app_id

      # @return [Array<String>] Gets or sets the list of names.
      attr_accessor :service_principal_names

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @service_principal_names.each{ |e| e.validate if e.respond_to?(:validate) } unless @service_principal_names.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.object_id
        output_object['objectId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.object_type
        output_object['objectType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display_name
        output_object['displayName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.app_id
        output_object['appId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.service_principal_names
        output_object['servicePrincipalNames'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ServicePrincipal] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ServicePrincipal.new

        deserialized_property = object['objectId']
        output_object.object_id = deserialized_property

        deserialized_property = object['objectType']
        output_object.object_type = deserialized_property

        deserialized_property = object['displayName']
        output_object.display_name = deserialized_property

        deserialized_property = object['appId']
        output_object.app_id = deserialized_property

        deserialized_property = object['servicePrincipalNames']
        output_object.service_principal_names = deserialized_property

        output_object
      end
    end
  end
end
