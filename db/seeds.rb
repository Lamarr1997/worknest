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

dates = ["2024/05/20", "2024/06/10", "2024/05/15", "2024/05/29"]

# users = [gloria, lamarr, dev]
tasks = [
{ title: "Furniture Assembly", location: "Chelsea, London", description: "Looking for someone experienced in assembling various types of furniture. Need help setting up a bedroom set including a bed frame, two nightstands, and a dresser.", price: 85, user: gloria, available_date: dates.sample },
  { title: "Garden Maintenance", location: "Brixton, London", description: "In need of a gardening enthusiast to help with weeding, trimming, and general garden care. Ideal for someone who can offer advice on plant health and seasonal care.", price: 50, user: lamarr, available_date: dates.sample  },
  { title: "Interior Painting", location: "Didsbury, Manchester", description: "Seeking a skilled painter to refresh the walls of our living room and kitchen. Prefer someone who can also do minor plaster repairs and select a matching color scheme.", price: 75, user: dev, available_date: dates.sample },
  { title: "Window Cleaning", location: "Clapham, London", description: "Need a professional window cleaner for a third-floor flat. Must have the necessary safety equipment to handle exterior windows.", price: 30, user: gloria, available_date: dates.sample },
  { title: "Carpet Cleaning", location: "Salford, Manchester", description: "Looking for a deep cleaning service for our carpeted living area and hallway. Must have experience with pet stains and odor removal.", price: 40, user: lamarr, available_date: dates.sample },
  { title: "Electrical Repairs", location: "Shoreditch, London", description: "Require an electrician to fix several outlets and a flickering light in our home. Must be certified and provide own tools.", price: 60, user: dev, available_date: dates.sample },
  { title: "Plumbing Assistance", location: "Piccadilly, Manchester", description: "Need urgent help with a leaking sink and installing a new showerhead. Looking for a plumber who can provide a quick and efficient service.", price: 45, user: gloria, available_date: dates.sample },
  { title: "Dog Walking", location: "Fulham, London", description: "Seeking a reliable dog walker for two energetic labs. Prefer someone who can provide at least an hour walk and occasional dog sitting services.", price: 20, user: lamarr, available_date: dates.sample },
  { title: "House Cleaning", location: "Hulme, Manchester", description: "Looking for a thorough house cleaning service, including kitchen, bathrooms, and living spaces. Preference for eco-friendly cleaning products.", price: 70, user: dev, available_date: dates.sample },
  { title: "Personal Shopping", location: "Kensington, London", description: "Need assistance with grocery and personal item shopping for a senior. Must have a car and be willing to follow a specific list and preferences.", price: 30, user: gloria, available_date: dates.sample },
  { title: "Gutter Cleaning", location: "Withington, Manchester", description: "Need someone to clear out the gutters before the rainy season. Must have own ladder and safety gear.", price: 55, user: lamarr, available_date: dates.sample },
  { title: "Home Organization", location: "Islington, London", description: "Looking for help to organize a cluttered garage and attic. Prefer someone with experience in maximizing space efficiency.", price: 65, user: dev, available_date: dates.sample },
  { title: "Junk Removal", location: "Stockport, Manchester", description: "Need to remove an old sofa, broken fridge, and various unwanted household items. Looking for someone who can handle disposal and potentially recycle items.", price: 75, user: gloria, available_date: dates.sample },
  { title: "Tech Setup", location: "Greenwich, London", description: "Require assistance setting up a new home office, including computer, printer, and network configuration. Ideal for someone tech-savvy.", price: 45, user: lamarr, available_date: dates.sample },
  { title: "Appliance Repair", location: "Chorlton, Manchester", description: "Looking for a technician to fix a malfunctioning dishwasher and a noisy dryer. Must be able to diagnose and repair with own tools.", price: 90, user: dev, available_date: dates.sample },
  { title: "Wallpaper Installation", location: "Wandsworth, London", description: "Need a professional to install new wallpaper in the master bedroom. The room is prepped and wallpaper provided, just need skilled installation.", price: 65, user: dev, available_date: dates.sample },
  { title: "Deck Staining", location: "Sale, Manchester", description: "Looking for someone to clean and stain our backyard wooden deck. Experience with outdoor projects preferred. Provide your own supplies.", price: 80, user: lamarr, available_date: dates.sample },
  { title: "Fitness Coaching", location: "Hackney, London", description: "Seeking a personal trainer for early morning sessions focused on weight lifting and cardio. Must have certification and provide own equipment.", price: 50, user: gloria, available_date: dates.sample },
  { title: "Mobile Car Wash", location: "Prestwich, Manchester", description: "In need of a mobile car wash service that can come to our home. Must be able to wash and wax, taking care of a classic car with delicate paint.", price: 45, user: dev, available_date: dates.sample },
  { title: "Closet Remodel", location: "Camden, London", description: "Looking for someone to redesign and build a new layout for several bedroom closets. Experience with carpentry and closet organization systems required.", price: 100, user: lamarr, available_date: dates.sample },
  { title: "Piano Tuning", location: "Rusholme, Manchester", description: "Our grand piano requires professional tuning. Prefer someone with experience in dealing with older instruments.", price: 60, user: gloria, available_date: dates.sample },
  { title: "Event Photography", location: "Richmond, London", description: "Need a photographer for a small family gathering. Expect about 4 hours of coverage with edited images provided digitally.", price: 75, user: dev, available_date: dates.sample },
  { title: "Smart Home Setup", location: "Fallowfield, Manchester", description: "Looking to convert my home to a smart home. Need installation of devices like smart lights, thermostats, and security cameras.", price: 90, user: lamarr, available_date: dates.sample },
  { title: "Bicycle Repair", location: "Lambeth, London", description: "Need a bike mechanic to fix a bent wheel and adjust brakes on my road bike. Looking for someone with the right tools and spare parts.", price: 25, user: gloria, available_date: dates.sample },
  { title: "Cooking Lessons", location: "Moss Side, Manchester", description: "Seeking a chef to teach Italian cooking. Interested in learning pasta making, sauces, and traditional desserts.", price: 55, user: dev, available_date: dates.sample },
  { title: "Art Installation", location: "Westminster, London", description: "Require help to securely hang several large, heavy pieces of artwork in our home. Must have experience with art installations and bring appropriate tools.", price: 40, user: lamarr, available_date: dates.sample },
  { title: "Drywall Repair", location: "Ancoats, Manchester", description: "Looking for someone to repair a few holes and repaint the affected walls in our living room. Materials will be provided.", price: 70, user: gloria, available_date: dates.sample },
  { title: "Language Tutoring", location: "Tower Hamlets, London", description: "Need a tutor for beginner French lessons, preferably twice a week in the evening. Looking for engaging, interactive sessions.", price: 35, user: dev, available_date: dates.sample },
  { title: "Pet Grooming", location: "Old Trafford, Manchester", description: "Looking for a professional pet groomer for a large dog, sensitive to handling. Need full grooming services including nail trimming and ear cleaning.", price: 65, user: lamarr, available_date: dates.sample },
  { title: "Custom Shelving", location: "Greenwich, London", description: "Seeking a skilled woodworker to create and install custom shelves in our home office. Must be able to match the existing decor style.", price: 95, user: gloria, available_date: dates.sample },
  { title: "Roof Repair", location: "Northern Quarter, Manchester", description: "Need a roofer to replace some missing shingles and inspect for leaks. Must provide warranty for work done.", price: 100, user: dev, available_date: dates.sample },
  { title: "Tile Installation", location: "Southwark, London", description: "Looking for a professional tiler to replace the kitchen backsplash. Already have the tiles, just need installation.", price: 50, user: lamarr, available_date: dates.sample },
  { title: "Personal Stylist", location: "Castlefield, Manchester", description: "Seeking a personal stylist for wardrobe overhaul. Need someone with a good eye for current trends and body type fitting.", price: 60, user: gloria, available_date: dates.sample }
]

tasks.each { |task| Task.create(task) }

