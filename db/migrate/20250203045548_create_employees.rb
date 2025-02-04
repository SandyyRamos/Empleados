class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name, null: false, default: "Empleado Nuevo" #
      t.integer :age,  null: false, default: 0
      t.string :id_number, null: false, unique: true #
      
      t.references :role, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
