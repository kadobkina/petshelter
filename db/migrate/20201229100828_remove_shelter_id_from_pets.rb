class RemoveShelterIdFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :shelter_id
  end
end
