User.destroy_all


puts "base vidée"

require 'faker'

User.create!(
    lastname: "Coco",
    firstname: "JOJO",
    password: "12345678",
    role: "Admin",
    tel: "06 25 56 56 56",
    email: "coco@gmail.com",
    comment: "Compte admin"
)

client = User.create!(
    lastname: Faker::Name.name,
    firstname: Faker::Name.first_name,
    password: "12345678",
    tel: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    comment: "Lorem"
)

puts "users créés"