class Employee < ApplicationRecord
  belongs_to :role
  belongs_to :department
  belongs_to :company
  # has_one_attached :avatar

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
  validates :id_number, presence: true, uniqueness: true
end
