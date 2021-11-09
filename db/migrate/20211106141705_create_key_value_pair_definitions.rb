class CreateKeyValuePairDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :key_value_pair_definitions do |t|
      t.belongs_to :key, null: false, foreign_key: {to_table: :entry_definitions}
      t.belongs_to :value, null: false, foreign_key: {to_table: :entry_definitions}
      t.integer :children

      t.timestamps
    end
  end
end
