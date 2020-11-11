# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do |x|
#     Room.create(name: 'Room ' + (x + 1).to_s)
# end

# 10.times do |x|
#     Item.create(name: 'Item ' + (x + 1).to_s, room_id: Room.all.sample.id)
# end

Room.destroy_all
Item.destroy_all
RoomItem.destroy_all

# music path left blank for now
# still need background pic for gymnasium & menagerie

aviary = Room.create(name: "Aviary", artwork_path: "/app/assets/images/aviary/after_photo_tropical_rainforest_photo_by_jim_cunningham_photography.jpg")
boiler = Room.create(name: "Boiler Room", artwork_path: "/app/assets/images/boiler_room/Boiler_Room_2.png", music_path: "")
classroom = Room.create(name: "Classroom", artwork_path: "/app/assets/images/classroom/incom-studio-3d-classroom.jpg" , music_path: "")
greenhouse = Room.create(name: "Greenhouse", artwork_path: "/app/assets/images/greenhouse/Screen Shot 2020-11-10 at 9.43.56 PM.png", music_path: "")
gymnasium = Room.create(name: "Gymnasium", artwork_path: , music_path: "")
kitchen = Room.create(name: "Kitchen", artwork_path: "/app/assets/images/kitchen/306e66e43eeff7753bba179db03b353e.jpg", music_path: "")
map = Room.create(name: "Map Room", artwork_path: "/app/assets/images/map_room/91ca60cf2e32baf0d460568c9a48005b.jpg", music_path: "")
menagerie = Room.create(name: "Menagerie", artwork_path: , music_path: "")
observatory = Room.create(name: "Observatory", artwork_path: "/app/assets/images/observatory/875ccbc2818239008a0946a47adb1e2a.jpg", music_path: "")



# descriptions left blank for now

macaw = Item.create(name: "Macaw", image_path: "/app/assets/images/aviary/2.png", room_id: aviary.id, description: "")
sharp_beak = Item.create(name: "Sharp Beak Bird", image_path: "/app/assets/images/aviary/3.png", room_id: aviary.id, description: "")
cardinal = Item.create(name: "Cardinal", image_path: "/app/assets/images/aviary/4.png", room_id: aviary.id, description: "")
owl = Item.create(name: "Owl", image_path: "/app/assets/images/aviary/5.png", room_id: aviary.id, description: "")
toucan = Item.create(name: "Toucan", image_path: "/app/assets/images/aviary/6.png", room_id: aviary.id, description: "")
ladybug = Item.create(name: "Ladybug Bird", image_path: "/app/assets/images/aviary/7.png", room_id: aviary.id, description: "")
flamingo = Item.create(name: "Flamingo", image_path: "/app/assets/images/aviary/8.png", room_id: aviary.id, description: "")
goldfinch = Item.create(name: "Goldfinch", image_path: "/app/assets/images/aviary/10.png", room_id: aviary.id, description: "")
ibis = Item.create(name: "Ibis", image_path: "/app/assets/images/aviary/13.png", room_id: aviary.id, description: "")
cockatoo = Item.create(name: "Cockatoo", image_path: "/app/assets/images/aviary/11.png", room_id: aviary.id, description: "")

bp_monitor = Item.create(name: "Blood Pressure Monitor", image_path: "/app/assets/images/boiler_room/blood-pressure-meter-illustration-drawing-engraving-ink-line-art-vector-illustration-what-made-ink-pencil-then-was-113427728.png", room_id: boiler.id, description: "")
fan = Item.create(name: "Fan", image_path: "/app/assets/images/boiler_room/unnamed.png", room_id: boiler.id, description: "")
water_pump = Item.create(name: "Mechanical Water Pump", image_path: "/app/assets/images/boiler_room/water-pump-icon-vector-icon-of-electric-water-pump-or-submerge-water-pump-eps-vector_csp48560849.png", room_id: boiler.id, description: "")

backpack = Item.create(name: "Backpack", image_path: "/app/assets/images/classroom/2.png", room_id: classroom.id, description: "")
apple = Item.create(name: "Apple", image_path: "/app/assets/images/classroom/3.png", room_id: classroom.id, description: "")
scissors = Item.create(name: "Scissors", image_path: "/app/assets/images/classroom/4.png", room_id: classroom.id, description: "")
stapler = Item.create(name: "Stapler", image_path: "/app/assets/images/classroom/5.png", room_id: classroom.id, description: "")
crayons = Item.create(name: "Crayons", image_path: "/app/assets/images/classroom/6.png", room_id: classroom.id, description: "")
lamp = Item.create(name: "lamp", image_path: "/app/assets/images/classroom/7.png", room_id: classroom.id, description: "")
laptop = Item.create(name: "Laptop", image_path: "/app/assets/images/classroom/8.png", room_id: classroom.id, description: "")
books = Item.create(name: "Books", image_path: "/app/assets/images/classroom/11.png", room_id: classroom.id, description: "")
lunchbox = Item.create(name: "Lunchbox", image_path: "/app/assets/images/classroom/10.png", room_id: classroom.id, description: "")
pencils = Item.create(name: "Pencils", image_path: "/app/assets/images/classroom/14.png", room_id: classroom.id, description: "")

watering_can = Item.create(name: "Watering Can", image_path: "/app/assets/images/greenhouse/1.png", room_id: greenhouse.id, description: "")
gloves = Item.create(name: "Gloves", image_path: "/app/assets/images/greenhouse/2.png", room_id: greenhouse.id, description: "")
trowel = Item.create(name: "Trowel", image_path: "/app/assets/images/greenhouse/3.png", room_id: greenhouse.id, description: "")
soil = Item.create(name: "Soil", image_path: "/app/assets/images/greenhouse/4.png", room_id: greenhouse.id, description: "")
seedlings = Item.create(name: "Seedlings", image_path: "/app/assets/images/greenhouse/5.png", room_id: greenhouse.id, description: "")
hose = Item.create(name: "Hose", image_path: "/app/assets/images/greenhouse/6.png", room_id: greenhouse.id, description: "")
wheelbarrow = Item.create(name: "Wheelbarrow", image_path: "/app/assets/images/greenhouse/7.png", room_id: greenhouse.id, description: "")

weight_plate = Item.create(name: "Weight Plate", image_path: "/app/assets/images/gymnasium/1.png", room_id: gymnasium.id, description: "")
kettlebell = Item.create(name: "Kettlebell ", image_path: "/app/assets/images/gymnasium/2.png", room_id: gymnasium.id, description: "")
jump_rope = Item.create(name: "Jump Rope", image_path: "/app/assets/images/gymnasium/3  .png", room_id: gymnasium.id, description: "")
barbell = Item.create(name: "Barbell", image_path: "/app/assets/images/gymnasium/4.png", room_id: gymnasium.id, description: "")
yoga_mat = Item.create(name: "Yoga Mat", image_path: "/app/assets/images/gymnasium/5.png", room_id: gymnasium.id, description: "")
dumbbell = Item.create(name: "Dumbbell", image_path: "/app/assets/images/gymnasium/6.png", room_id: gymnasium.id, description: "")

spatula = Item.create(name: "Spatula", image_path: "/app/assets/images/kitchen/2.png", room_id: kitchen.id, description: "")
collander = Item.create(name: "Collander", image_path: "/app/assets/images/kitchen/4.png", room_id: kitchen.id, description: "")
pot = Item.create(name: "Pot", image_path: "/app/assets/images/kitchen/5.png", room_id: kitchen.id, description: "")
ladle = Item.create(name: "Ladle", image_path: "/app/assets/images/kitchen/6.png", room_id: kitchen.id, description: "")
knife = Item.create(name: "Knife", image_path: "/app/assets/images/kitchen/7.png", room_id: kitchen.id, description: "")
grater = Item.create(name: "Grater", image_path: "/app/assets/images/kitchen/9.png", room_id: kitchen.id, description: "")
pan = Item.create(name: "Pan", image_path: "/app/assets/images/kitchen/11.png", room_id: kitchen.id, description: "")
oven_mitt = Item.create(name: "Oven Mitt", image_path: "/app/assets/images/kitchen/12.png", room_id: kitchen.id, description: "")
measuring_cup = Item.create(name: "Measuring Cup", image_path: "/app/assets/images/kitchen/14.png", room_id: kitchen.id, description: "")
rolling_pin = Item.create(name: "Rolling Pin", image_path: "/app/assets/images/kitchen/15.png", room_id: kitchen.id, description: "")





10.times do |x|
    RoomItem.create(room_id: Room.all.sample.id, item_id: Item.all.sample.id)
end
