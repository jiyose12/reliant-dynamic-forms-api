class KeyValuePairDefinition < ApplicationRecord
    belongs_to :parent, :class_name => 'KeyValuePairDefinition'
    has_many :children, :class_name => 'KeyValuePairDefinition', :foreign_key => 'parent_id'
end
