class CreateKeyValuePairDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :key_value_pair_definitions do |t|
      t.integer :key
      t.integer :value
      t.integer :children

      t.timestamps
    end
  end
end
