Book.destroy_all
Client.destroy_all
Product.destroy_all
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

user = User.create!(
    lastname: Faker::Name.name,
    firstname: Faker::Name.first_name,
    password: "12345678",
    tel: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    comment: "Lorem"
)
puts "users créés"
client = Client.create!(
    username: Faker::Name.name,
    lastname: Faker::Name.last_name,
    phone: Faker::PhoneNumber.phone_number,
    mail: Faker::Internet.email,
    comment: "Lorem",
    actif: true,
    user_id: user.id
)
puts "client créés"

10.times do |i|
  Book.create!(
    name: Faker::Book.title,
    number: Faker::Number.number(digits: 2),
    client_id: client.id,
    datelivraison: Faker::Date.forward(days: 23),
    sursite: true,
    etat: "neuf"
    )

      
end

puts "books créés"