class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name, null: false #obligatorio
      t.date :birth_date
      t.string :id_number, null: false #obligatorio

      t.references :role, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
