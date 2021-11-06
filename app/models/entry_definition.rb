class EntryDefinition < ApplicationRecord
  before_save :default_values

  def default_values
    self.mutable ||= false
    self.default ||= ''
    self.multiple ||= false
  end

  belongs_to :key_value_pair_definition
end
