# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Shelter.any?
sh1 = Shelter.create!(name: 'Приют №1', address: 'г. Ростов-на-Дону, ул. Мира, 8')
sh2 = Shelter.create!(name: 'Приют №2', address: 'г. Ростов-на-Дону, ул. Космонавтов, 22')
end

unless Pet.any?
p1 = Pet.create!(name: 'Тимоша', kind: 'Кошка', age: 5, sex: 'М', description: 'Рыжий котик')
p2 = Pet.create!(name: 'Суджучок', kind: 'Грызун', age: 1, sex: 'М', description: 'Маленький джунгарик')
end

#Operation.create!(pet: p1, shelter: sh1, state: 'Прибыл')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?