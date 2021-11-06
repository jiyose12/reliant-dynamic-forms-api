class CreateEntryDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_definitions do |t|
      t.text :type
      t.boolean :mutable
      t.string :default
      t.boolean :multiple
      t.references :key_value_pair_definition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
