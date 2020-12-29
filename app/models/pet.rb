class Pet < ApplicationRecord
  validates :name, :age, presence: true
  belongs_to :shelter, optional: true
  has_many :operation
end