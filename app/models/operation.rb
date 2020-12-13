class Operation < ApplicationRecord
  #validates :pet, :shelter, :state, presence: true
  belongs_to :pet
  belongs_to :shelter
end