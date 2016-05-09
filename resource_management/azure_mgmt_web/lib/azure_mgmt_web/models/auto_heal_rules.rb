# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # AutoHealRules - describes the rules which can be defined for auto-heal
    #
    class AutoHealRules

      include MsRestAzure

      # @return [AutoHealTriggers] Triggers - Conditions that describe when to
      # execute the auto-heal actions
      attr_accessor :triggers

      # @return [AutoHealActions] Actions - Actions to be executed when a rule
      # is triggered
      attr_accessor :actions

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @triggers.validate unless @triggers.nil?
        @actions.validate unless @actions.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.triggers
        unless serialized_property.nil?
          serialized_property = AutoHealTriggers.serialize_object(serialized_property)
        end
        output_object['triggers'] = serialized_property unless serialized_property.nil?

        serialized_property = object.actions
        unless serialized_property.nil?
          serialized_property = AutoHealActions.serialize_object(serialized_property)
        end
        output_object['actions'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AutoHealRules] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AutoHealRules.new

        deserialized_property = object['triggers']
        unless deserialized_property.nil?
          deserialized_property = AutoHealTriggers.deserialize_object(deserialized_property)
        end
        output_object.triggers = deserialized_property

        deserialized_property = object['actions']
        unless deserialized_property.nil?
          deserialized_property = AutoHealActions.deserialize_object(deserialized_property)
        end
        output_object.actions = deserialized_property

        output_object
      end
    end
  end
end
