require "faker"

Employee.destroy_all
Department.destroy_all  # Se borrar del último al primero alrevés
Role.destroy_all
Company.destroy_all
User.destroy_all

puts "Borrando registros"

user1 = User.create!(email: "admin1@example.com", password: "password")
user2 = User.create!(email: "admin2@example.com", password: "password")

puts "Creando usuarios"

company1 = Company.create!(name: "Tech Corp", user: user1)
company2 = Company.create!(name: "Dev Solutions", user: user2)

puts "Creando compañías"

roles = ["Backend", "Frontend", "Analista", "Contador"].map { |r| Role.create!(name: r) }

puts "Creando roles"

departments = ["IT", "HR", "Finance", "Marketing"].map { |d| Department.create!(name: d) }

puts "Creando departamentos"

30.times do
  Employee.create!(
    name: Faker::Name.name,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    id_number: Faker::IdNumber.valid,
    company: company1,
    role: roles.sample,
    department: departments.sample
  )
end

30.times do
  Employee.create!(
    name: Faker::Name.name,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    id_number: Faker::IdNumber.valid,
    company: company2,
    role: roles.sample,
    department: departments.sample
  )
end
