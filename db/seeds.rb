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

Booking.delete_all
Task.delete_all
User.delete_all

gloria = User.create(username: "GloriaWoo", first_name: "Gloria", last_name: "Gilbert", email: "g1@test.com", password: "123456")
lamarr = User.create(username: "LamarrWoo", first_name: "Lamarr", last_name: "Paul", email: "l2@test.com", password: "123456")
dev = User.create(username: "DevWoo", first_name: "Dev", last_name: "isTheBest", email: "d3@test.com", password: "123456")

# users = [gloria, lamarr, dev]
tasks = [
{ title: "Furniture Assembly", location: "Chelsea, London", description: "Looking for someone experienced in assembling various types of furniture. Need help setting up a bedroom set including a bed frame, two nightstands, and a dresser.", price: 85, user: gloria },
  { title: "Garden Maintenance", location: "Brixton, London", description: "In need of a gardening enthusiast to help with weeding, trimming, and general garden care. Ideal for someone who can offer advice on plant health and seasonal care.", price: 50, user: lamarr },
  { title: "Interior Painting", location: "Didsbury, Manchester", description: "Seeking a skilled painter to refresh the walls of our living room and kitchen. Prefer someone who can also do minor plaster repairs and select a matching color scheme.", price: 75, user: dev },
  { title: "Window Cleaning", location: "Clapham, London", description: "Need a professional window cleaner for a third-floor flat. Must have the necessary safety equipment to handle exterior windows.", price: 30, user: gloria },
  { title: "Carpet Cleaning", location: "Salford, Manchester", description: "Looking for a deep cleaning service for our carpeted living area and hallway. Must have experience with pet stains and odor removal.", price: 40, user: lamarr },
  { title: "Electrical Repairs", location: "Shoreditch, London", description: "Require an electrician to fix several outlets and a flickering light in our home. Must be certified and provide own tools.", price: 60, user: dev },
  { title: "Plumbing Assistance", location: "Piccadilly, Manchester", description: "Need urgent help with a leaking sink and installing a new showerhead. Looking for a plumber who can provide a quick and efficient service.", price: 45, user: gloria },
  { title: "Dog Walking", location: "Fulham, London", description: "Seeking a reliable dog walker for two energetic labs. Prefer someone who can provide at least an hour walk and occasional dog sitting services.", price: 20, user: lamarr },
  { title: "House Cleaning", location: "Hulme, Manchester", description: "Looking for a thorough house cleaning service, including kitchen, bathrooms, and living spaces. Preference for eco-friendly cleaning products.", price: 70, user: dev },
  { title: "Personal Shopping", location: "Kensington, London", description: "Need assistance with grocery and personal item shopping for a senior. Must have a car and be willing to follow a specific list and preferences.", price: 30, user: gloria },
  { title: "Gutter Cleaning", location: "Withington, Manchester", description: "Need someone to clear out the gutters before the rainy season. Must have own ladder and safety gear.", price: 55, user: lamarr },
  { title: "Home Organization", location: "Islington, London", description: "Looking for help to organize a cluttered garage and attic. Prefer someone with experience in maximizing space efficiency.", price: 65, user: dev },
  { title: "Junk Removal", location: "Stockport, Manchester", description: "Need to remove an old sofa, broken fridge, and various unwanted household items. Looking for someone who can handle disposal and potentially recycle items.", price: 75, user: gloria },
  { title: "Tech Setup", location: "Greenwich, London", description: "Require assistance setting up a new home office, including computer, printer, and network configuration. Ideal for someone tech-savvy.", price: 45, user: lamarr },
  { title: "Appliance Repair", location: "Chorlton, Manchester", description: "Looking for a technician to fix a malfunctioning dishwasher and a noisy dryer. Must be able to diagnose and repair with own tools.", price: 90, user: dev },
]

tasks.each { |task| Task.create(task) }

# 40.times do
#   task = Task.new(
#     title: Faker::Hobby.activity,
#     location: "London",
#     description: Faker::Lorem.paragraphs,
#     price: rand(10...100),
#     user: users.sample
#   )
#   task.save
# end
