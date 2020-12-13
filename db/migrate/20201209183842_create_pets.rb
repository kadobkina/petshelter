class CreatePets < ActiveRecord::Migration[6.0]
  def up
    create_table :pets do |p|
      p.string :name, null: false
      p.string :kind
      p.integer :age
      p.string :sex
      p.text :description
      p.references :shelter
      p.string :photo_url
    end

    create_table :shelters do |s|
      s.string :name, null: false
      s.string :address, null: false
    end
  end

  def down
    drop_table :pets
    drop_table :shelters
  end
end
