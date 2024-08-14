# frozen_string_literal: true

ActiveRecord::Schema.define do
  self.verbose = false
  create_table :ledgers, force: true do |t|
    t.string :global_id, null: false
    t.string :target, null: false
    t.string :value, null: false
    t.datetime :changed_at, null: false
    t.timestamps
  end
end