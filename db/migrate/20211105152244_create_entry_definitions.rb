class CreateEntryDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :entry_definitions do |t|
      t.text :type
      t.boolean :mutable
      t.string :default
      t.boolean :multiple

      t.timestamps
    end
  end
end
