class Shelter < ApplicationRecord
  #validates :name, :address, presence: true
  has_many :operations
  has_many :pets, through: :operations
end