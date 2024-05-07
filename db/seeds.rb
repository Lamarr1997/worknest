# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Task.delete_all
User.delete_all

gloria = User.create(username: "GloriaWoo", first_name: "Gloria", last_name: "Gilbert", email: "g1@test.com", password: "123456")
lamarr = User.create(username: "LamarrWoo", first_name: "Lamarr", last_name: "Paul", email: "l2@test.com", password: "123456")
dev = User.create(username: "DevWoo", first_name: "Dev", last_name: "isTheBest", email: "d3@test.com", password: "123456")

users = [gloria, lamarr, dev]

10.times do
  task = Task.new(
    title: Faker::Hobby.activity,
    location: "London",
    description: Faker::Lorem.sentence,
    price: rand(10...100),
    user: users.sample
  )
  task.save
end
