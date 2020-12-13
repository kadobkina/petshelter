class Shelter < ApplicationRecord
  validates :name, :address, presence: true
  has_many :pets
end