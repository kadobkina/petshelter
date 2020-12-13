# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sh1 = Shelter.create!(name: 'Приют №1', address: 'г. Ростов-на-Дону, ул. Мира, 8')
sh2 = Shelter.create!(name: 'Приют №2', address: 'г. Ростов-на-Дону, ул. Космонавтов, 22')

Pet.create!(name: 'Тимоша', kind: 'Кошка', age: 5, sex: 'М', description: 'Мой сладкий пирожочек', shelter: sh1)
Pet.create!(name: 'Суджучок', kind: 'Грызун', age: 1, sex: 'М', description: 'Мой сладенький джунгарик-мечта', shelter: sh2)

