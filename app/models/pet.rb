class Pet < ApplicationRecord
  validates :name, :age, presence: true
  belongs_to :shelter
end