class CreatePets < ActiveRecord::Migration[6.0]
  def up
    create_table :pets do |p|
      p.string :name, null: false
      p.string :kind
      p.integer :age
      p.string :sex
      p.integer :shelter_id
      p.text :description
    end
  end

  def down
    drop_table :pets
  end
end
