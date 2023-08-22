# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'operador1@gmail.com', password: '291ABASD932')
User.create(email: 'operador2@gmail.com', password: '931SDABA988')

property_types = ["Casa", "Departamento"]
operation_types = ["Arriendo", "Compra", "Venta"]

25.times do
  Property.create(
    property_type: property_types.sample,
    operation_type: operation_types.sample,
    square_meters: Faker::Number.decimal(l_digits: 2),
    address: Faker::Address.full_address,
    contact: Faker::PhoneNumber.phone_number, 
    image_url: 'https://loremflickr.com/620/440/building'
)
end