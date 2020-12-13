class Pet < ApplicationRecord
  #validates :name, :age, presence: true
  belongs_to :shelter, optional: true
  #belongs_to :operation
end