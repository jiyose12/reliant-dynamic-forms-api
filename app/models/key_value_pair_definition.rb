class KeyValuePairDefinition < ApplicationRecord
    before_save :default_values

  def default_values
    self.key_id ||= nil
    self.value_id ||= nil
    self.children ||= nil
  end

  belongs_to :key, class_name: "EntryDefinition", foreign_key: "key_id"
  belongs_to :value, class_name: "EntryDefinition", foreign_key: "value_id"
end
