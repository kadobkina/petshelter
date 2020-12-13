class CreateOperation < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |o|
      o.references :pet
      o.references :shelter
      o.string :state
      o.timestamps
    end
  end
end