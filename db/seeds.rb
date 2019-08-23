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

user8 = User.new(name:"Maggie", email:"maggie@gmail.com", password:"Maggie")
user8.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1566482494/maggie_zjxmew.jpg"
user8.save


##BOATS

boat1 = Boat.new(name:'The Explorer', boat_type: "Yacht", location: 'Palma de Mallorca, Spain', address: 'Avinguda de Gabriel Roca, 07014 Palma, Illes Balears, Spain', price: 2500, capacity: 25, length: 28, description: "Medium sized yacht able to hold 25 people. Suited for celebrations & meetings. Available with a captain & crew. When rented without a captain, boat liscence required.", room_number: 3, sleep_number: 6, bathroom_number: 2, deck_number: 3, gallons_per_hour: 12, user: user1)
boat1.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566391351/Explorer_wwrfo9.jpg"
boat1.save

boat2 = Boat.new(name:"Ocean Life", boat_type: "Yacht", location: "Hamburg, Germany", address: "Rüschwinkel 7A, 21129 Hamburg", price: 2000, capacity: 25, length: 28, description: "This boat is amazing for birthday parties and weddings. Please be advised that cleaning costs will apply.", room_number: 4, sleep_number: 9, bathroom_number: 2, deck_number: 2, gallons_per_hour: 15, user: user7)
boat2.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566490806/katie-manning-61XaXohAlZ4-unsplash_dybchh.jpg"
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

boat7 = Boat.new(name:"The Penninsula", boat_type: "Sail Boat", location: "Quepos, Costa Rica", address:"Marina Pez Vela, Quepos, Costa Rica", price: 1325, capacity: 21, length: 22, description: "Modern sail boat perfect for day trips along the Costa Rican coast. Captain and crew available upon request. Sailing liscence required.", room_number: 2, sleep_number: 4, bathroom_number: 1, deck_number: 1, gallons_per_hour: 0, user: user7)
boat7.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566553376/evan-smogor-9-i4lI1ijes-unsplash_znkcnz.jpg"
boat7.save

boat8 = Boat.new(name:"Alaska", boat_type: "Speed Boat", location: "Corfu, Greece", address: "Athens 105 58, Greece", price: 700, capacity: 15, length: 9, description: "Small speed boat perfect for day trips and diving excursions. Halters for oxygen tanks on board.", room_number: 0, sleep_number: 0, bathroom_number: 0, deck_number: 1, gallons_per_hour: 9, user: user8)
boat8.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566553687/sander-crombach-36e_F_mdtNA-unsplash_ksybrg.jpg"
boat8.save

boat9 = Boat.new(name:"El Continental", boat_type: "Sail Boat", location:"Saint Tropez", address:"Quai de l’épi, 83990 Saint-Tropez, France", price: 1150, capacity: 10, length: 20, description: "Sail boat only available with crew. Crew costs are not included in per day price.", room_number: 1, sleep_number: 0, bathroom_number: 0, deck_number: 1, gallons_per_hour: 0, user: user1)
boat9.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566553877/karla-car-58AiTToabyE-unsplash_vvwp2w.jpg"
boat9.save

boat10 = Boat.new(name:"Sandy", boat_type: "House Boat", location:"Amsterdam, Netherlands", address:"Westermarkt 20, 1016 GV Amsterdam, Netherlands", price: 950, capacity: 10, length: 32, description: "This house boat can be used for accomodation while staying in and around Amsterdam. It fits through most canals but should not be taken out of the city.", room_number: 4, sleep_number: 8, bathroom_number: 1, gallons_per_hour: 14, user: user3)
boat10.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566554103/tito-rebellious-TwV_DOMGt4k-unsplash_mtersq.jpg"
boat10.save

boat11 = Boat.new(name:"Chatharina", boat_type: "Speed Boat", location: "New York, USA", address:"2430 FDR Dr, New York, NY 10010, USA", price: 750, capacity: 14, length: 11, description: "Speed boat perfect for travelling up and down the Hudson. Boat liscence required. Life vests should be worn when on board.", room_number: 1, sleep_number: 0, bathroom_number: 0, deck_number: 1, gallons_per_hour: 8, user: user2)
boat11.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566554307/shaah-shahidh-eG6C4nIvP0Y-unsplash_pijxtc.jpg"
boat11.save

boat12 = Boat.new(name:"Albatros", boat_type: "Yacht", location: "Fort Lauderdale, US", address:"1900 SE 15th St, Fort Lauderdale, FL 33316, USA", price: 1600, capacity: 33, length: 25, description: "Large yacht available with crew and captain. Booking in combination with water sports program possible.", room_number: 7, sleep_number: 20, bathroom_number: 3, deck_number: 3, gallons_per_hour: 18, user: user6)
boat12.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566554408/val-vesa-hoOMy33SgBQ-unsplash_eukcra.jpg"
boat12.save

boat12 = Boat.new(name: "El Sol", boat_type: "Yacht", location:"Palma de Mallorca, Spain", address: "Avinguda de Gabriel Roca, 07015 Palma, Illes Balears, Spain", price: 1050, capacity: 10, length: 22, description: "Medium sized yacht perfect for exploring the Mediterranean sea. Available with crew.", room_number: 3, sleep_number: 8, bathroom_number: 2, deck_number: 2, gallons_per_hour: 12, user: user8)
boat12.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566485491/aqc1mh57exflyjvu75f8.jpg"
boat12.save

boat12 = Boat.new(name:"Serenity", boat_type: "Yacht", location: "Palma de Mallorca, Spain", address:"Carrer del Palau Reial, s/n, 07001 Palma, Illes Balears, Spain", price: 800, capacity: 5, length: 17, description: "Small yacht intended for day trips around Mallorca. Additional booking costs may apply.", room_number: 1, sleep_number: 5, bathroom_number: 1, deck_number: 1, gallons_per_hour: 8, user: user7)
boat12.remote_photo_url = "https://res.cloudinary.com/mmohn/image/upload/v1566555809/gautam-krishnan-q84-1IeZytc-unsplash_wtpj4d.jpg"
boat12.save




