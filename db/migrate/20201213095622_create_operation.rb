class CreateOperation < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |o|
      o.references :pet, null: false
      o.references :shelter, null: false
      o.string :state, null: false
      o.timestamps
    end
  end
end