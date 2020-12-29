class Operation < ApplicationRecord
  validates :pet, :state, presence: true
  belongs_to :pet
  belongs_to :shelter
end