class KeyValuePairDefinition < ApplicationRecord
    before_save :default_values

  def default_values
    self.key ||= nil
    self.value ||= nil
    self.children ||= nil
  end

  belongs_to :entry_definition
end
