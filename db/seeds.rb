# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name:"Peter", email:"peter@gmail.com", password:"Peterisawesome")
user2 = User.create(name:"Meredith", email:"meredith@gmail.com", password:"Merdith")
user3 = User.create(name:"Derek", email:"derek@gmail.com", password:"Derek")
user4 = User.create(name:"Christina", email:"christina@gmail.com", password:"Christina")
user5 = User.create(name:"George", email:"george@gmail.com", password:"George")
user6 = User.create(name:"Isabella", email:"isabell@gmail.com", password:"Issi")
user7 = User.create(name:"Alex", email:"alex@gmail.com", password:"Alex")
user8 = User.create(name:"Miranda", email:"miranda@gmail.com", password:"Miranda")
user9 = User.create(name:"Richard", email:"richard@gmail.com", password:"Richard")
user10 = User.create(name:"Maggie", email:"maggie@gmail.com", password:"Maggie")

Boat.create!(name:'The Explorer', boat_type: "Yacht", location: 'Nice, France', price: 2500, capacity: 25, length: 28, description: "Medium sized yacht able to hold 25 people. Suited for celebrations & meetings. Available with a captain & crew. When rented without a captain, boat liscence required.", room_number: 3, sleep_number: 6, bathroom_number: 2, deck_number: 3, gallons_per_hour: 12, user: user1)
Boat.create!(name:"Ocean Life", boat_type: "Yacht", location:"Hamburg, Germany", price: 2000, capacity: 25, length: 28, description: "best boat ever", room_number: 4, sleep_number: 9, bathroom_number: 2, deck_number: 2, gallons_per_hour: 15, user: user2)
Boat.create!(name:"Santa Maria", boat_type: "Sail Boat", location: "Athens, Greexe", price: 1500, capacity: 12, length: 21, description: "medium sized sail boat perfect for day trips. Sailing license required.", room_number: 1, sleep_number: 2, bathroom_number: 1, deck_number: 1, gallons_per_hour: 6, user: user3)
Boat.create!(name:"Kayak 2000", boat_type: "Kayak", location: "Honolulu, Hawaii", price: 30, capacity: 1, length: 2.5, description: "Sports kayak in perfect condition available for rent. Includes paddles & life vest", room_number: 0, sleep_number: 0, bathroom_number: 0, deck_number: 0, gallons_per_hour: 0, user: user4)
Boat.create!(name:"Lisa", boat_type: "House Boat", location: "Husum, Germany", price: 1200, capacity: 20, length: 31, description: "Large house boat able to accommodate 2 mid-sized families. Perfect for river trips. Previous boat & floodgate experience recommendable.", room_number: 4, sleep_number: 10, bathroom_number: 2, deck_number: 2, gallons_per_hour: 15, user: user5)
Boat.create!(name:"Escape", boat_type: "Speed Boat", location: "Quespos, Costa Rica", price: 800, capacity: 6, length: 7.8, description:"Small speed boat perfect for lakes and small marinas.", room_number: 0, sleep_number: 0, bathroom_number: 0, deck_number: 1, gallons_per_hour: 3, user: user6)
