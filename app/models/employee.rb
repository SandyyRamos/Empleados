class Employee < ApplicationRecord
  belongs_to :role
  belongs_to :department
  belongs_to :company
  has_one_attached :avatar

  include PgSearch::Model

  pg_search_scope :search_by_name_role_and_department,
                  against: [:name],
                  associated_against: {
                    role: [:name],
                    department: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  validates :name, presence: true
  validates :id_number, presence: true, uniqueness: true
end
