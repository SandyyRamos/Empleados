User.destroy_all
Company.destroy_all
Role.destroy_all
Department.destroy_all
Employee.destroy_all

user1 = User.create!(email: "admin1@example.com", password: "password")
user2 = User.create!(email: "admin2@example.com", password: "password")

company1 = Company.create!(name: "Tech Corp", user: user1)
company2 = Company.create!(name: "Dev Solutions", user: user2)

roles = ["Backend", "Frontend", "Analista", "Contador"].map { |r| Role.create!(name: r) }
departments = ["IT", "HR", "Finance", "Marketing"].map { |d| Department.create!(name: d) }

10.times do
  Employee.create!(
    name: Faker::Name.name,
    age: rand(20..50),
    id_number: Faker::IDNumber.valid,
    company: company1,
    role: roles.sample,
    department: departments.sample
  )
end

10.times do
  Employee.create!(
    name: Faker::Name.name,
    age: rand(20..50),
    id_number: Faker::IDNumber.valid,
    company: company2,
    role: roles.sample,
    department: departments.sample
  )
end
