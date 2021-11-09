class EntryDefinition < ApplicationRecord
  before_save :default_values

  def default_values
    self.mutable ||= false
    self.default ||= ''
    self.multiple ||= false
  end

  has_one :key_value_pair_definition, foreign_key: :key, primary_key: :id
  has_one :key_value_pair_definition, foreign_key: :key, primary_key: :id
end
