# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Boat.destroy_all
User.destroy_all

 ##USERS

user1 = User.new(name:"Peter", email:"peter@gmail.com", password:"Peterisawesome")
user1.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482494/peter_wbhhyx.jpg"
user1.save

user2 = User.new(name:"Marie", email:"marie@gmail.com", password:"Marie1")
user2.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482493/meredith_sb7baa.jpg"
user2.save

user3 = User.new(name:"Derek", email:"derek@gmail.com", password:"Derek1")
user3.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482493/derek_nwegas.jpg"
user3.save

user4 = User.new(name:"Christina", email:"christina@gmail.com", password:"Christina")
user4.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482493/christina_c8h7ii.jpg"
user4.save

user5 = User.new(name:"George", email:"george@gmail.com", password:"George")
user5.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482492/george_cpgpgq.jpg"
user5.save

user6 = User.new(name:"Isabella", email:"isabell@gmail.com", password:"Isabella")
user6.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482493/isabella_jhfthn.jpg"
user6.save

user7 = User.new(name:"Alex", email:"alex@gmail.com", password:"Alex111")
user7.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482493/alex_typygl.jpg"
user7.save

user9 = User.new(name:"Maggie", email:"maggie@gmail.com", password:"Maggie")
user9.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482494/maggie_zjxmew.jpg"
user9.save


##BOATS

boat1 = Boat.new(name:'The Explorer', boat_type: "Yacht", location: 'Palma de Mallorca, Spain', address: 'Avinguda de Gabriel Roca, 07014 Palma, Illes Balears, Spain', price: 2500, capacity: 25, length: 28, description: "Medium sized yacht able to hold 25 people. Suited for celebrations & meetings. Available with a captain & crew. When rented without a captain, boat liscence required.", room_number: 3, sleep_number: 6, bathroom_number: 2, deck_number: 3, gallons_per_hour: 12, user: user1)
boat1.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566391351/Explorer_wwrfo9.jpg"
boat1.save

boat2 = Boat.new(name:"Ocean Life", boat_type: "Yacht", location: "Hamburg, Germany", address: "Rüschwinkel 7A, 21129 Hamburg", price: 2000, capacity: 25, length: 28, description: "best boat ever", room_number: 4, sleep_number: 9, bathroom_number: 2, deck_number: 2, gallons_per_hour: 15, user: user2)
boat2.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566391349/ocean_life_x0nvti.jpg"
boat2.save

boat3 = Boat.new(name:"Santa Maria", boat_type: "Sail Boat", location: "Monacco", address: "Quai Louis II, 98000 Monaco", price: 1500, capacity: 12, length: 21, description: "medium sized sail boat perfect for day trips. Sailing license required.", room_number: 1, sleep_number: 2, bathroom_number: 1, deck_number: 1, gallons_per_hour: 6, user: user3)
boat3.remote_photo_url ="https://res.cloudinary.com/mmohn/image/upload/v1566391350/santa_marina_ej3hl9.jpg"
boat3.save

boat4 = Boat.new(name:"Kayak 2000", boat_type: "Kayak", location: "Pula, Croatia", address: " Riva 1, 52100, Pula, Croatia", price: 30, capacity: 1, length: 2.5, description: "Sports kayak in perfect condition available for rent. Includes paddles & life vest", room_number: 0, sleep_number: 0, bathroom_number: 0, deck_number: 0, gallons_per_hour: 0, user: user4)
boat4.remote_photo_url ="https://res.cloudinary.com/mmohn/image/upload/v1566391352/kaya_2000_pswcbp.jpg"
boat4.save

boat5 = Boat.new(name:"Lisa", boat_type: "House Boat", location: "Husum, Germany", address: "Rödemishallig, 25813 Husum", price: 1200, capacity: 20, length: 31, description: "Large house boat able to accommodate 2 mid-sized families. Perfect for river trips. Previous boat & floodgate experience recommendable.", room_number: 4, sleep_number: 10, bathroom_number: 2, deck_number: 2, gallons_per_hour: 15, user: user5)
boat5.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566391351/lisa_xiiwcb.jpg"
boat5.save

boat6 = Boat.new(name:"Escape", boat_type: "Speed Boat", location: "Lake Garda, Italy", address: "Via Vo', 25015 Desenzano del Garda BS, Italy", price: 800, capacity: 6, length: 7.8, description:"Small speed boat perfect for lakes and small marinas.", room_number: 0, sleep_number: 0, bathroom_number: 0, deck_number: 1, gallons_per_hour: 3, user: user6)
boat6.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566391352/Escape_ap1x6n.jpg"
boat6.save
