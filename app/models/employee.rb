class Employee < ApplicationRecord
  belongs_to :role
  belongs_to :department
  belongs_to :company

  include PgSearch::Model

  # Usando 'name' en lugar de 'role' y 'department' para buscar
  pg_search_scope :search_by_name_role_and_department,
                  against: [:name],
                  associated_against: {
                    role: [:name],         # Buscar en el campo 'name' de la relación role
                    department: [:name]    # Buscar en el campo 'name' de la relación department
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  validates :name, presence: true
  validates :id_number, presence: true, uniqueness: true
end
