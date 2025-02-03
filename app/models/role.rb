class Role < ApplicationRecord

  has_many :employees, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  

end
