class KeyValuePairDefinitionSerializer < ActiveModel::Serializer
    attributes :children

    belongs_to :key, class_name: "EntryDefinition", foreign_key: "key_id"
    belongs_to :value, class_name: "EntryDefinition", foreign_key: "value_id"
  end