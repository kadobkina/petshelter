class Shelter < ApplicationRecord
  validates :name, :address, presence: true
  has_many :operations
  #  has_many :pets, through: :operations

  def pets
    self.operations.preload(:pets).where("state = 'В приюте'").map(&:pet)
  end

end