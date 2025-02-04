class Employee < ApplicationRecord
  belongs_to :role
  belongs_to :department
  belongs_to :company
  # has_one_attached :avatar

  validates :name, presence: true
  validates :id_number, presence: true, uniqueness: true
  
end
