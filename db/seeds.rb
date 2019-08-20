# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name:"Peter", email:"peter@gmail.com", password:"Peterisawesome")
Boat.create!(name: 'The Explorer', location: 'Nice, France', price: 2500, capacity: 25, length: 28, description: "Medium sized yacht able to hold 25 people. Suited for celebrations & meetings. Available with a captain & crew. When rented without a captain, boat liscence required.", room_number: 3, sleep_number: 6, bathroom_number: 2, deck_number: 3, gallons_per_hour: 12, user: user1)
