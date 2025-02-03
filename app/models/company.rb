class Company < ApplicationRecord
  belongs_to :user

  has_many :employees, dependent: :destroy

  validates :name, presence: true, uniqueness: true

end


