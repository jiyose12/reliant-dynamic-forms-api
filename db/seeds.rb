# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EntryDefinition.create(mutable: false, default: 'static_key1', multiple: false)
EntryDefinition.create(mutable: false, default: 'static_key2', multiple: false)
EntryDefinition.create(mutable: false, default: 'static_key3', multiple: false)
EntryDefinition.create(mutable: false, default: 'static_key4', multiple: false)
EntryDefinition.create(mutable: false, default: 'static_key5', multiple: false)
3.times do |i|
    EntryDefinition.create!(mutable: false, default: "static_key#{i+5}", multiple: false)
  end
KeyValuePairDefinition.create(key_id: 1, value_id: 2)
KeyValuePairDefinition.create(key_id: 3, value_id: 2)
KeyValuePairDefinition.create(key_id: 4, value_id: 3)
KeyValuePairDefinition.create(key_id: 5, value_id: 6)