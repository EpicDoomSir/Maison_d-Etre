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
map_room = Room.create(name: "Map Room", artwork_path: "/app/assets/images/map_room/91ca60cf2e32baf0d460568c9a48005b.jpg", music_path: "")
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

globe = Item.create(name: "Globe", image_path: "/app/assets/images/map_room/2.png", room_id: map_room.id, description: "")
map = Item.create(name: "Map", image_path: "/app/assets/images/map_room/1.png", room_id: map_room.id, description: "")
decanter = Item.create(name: "Decanter", image_path: "/app/assets/images/map_room/decanter.png", room_id: map_room.id, description: "")
quill = Item.create(name: "Quill", image_path: "/app/assets/images/map_room/feather pen.png", room_id: map_room.id, description: "")
magnifying_glass = Item.create(name: "Magnifying Glass", image_path: "/app/assets/images/map_room/png-transparent-magnifying-glass-loupe-magnifier-magnifying-glass-glass-lens-sticker (1).png", room_id: map_room.id, description: "")
world_map = Item.create(name: "World Map", image_path: "/app/assets/images/map_room/Retro-World-Map-Vector-on-old-paper.png", room_id: map_room.id, description: "")

chameleon = Item.create(name: "Chameleon", image_path: "/app/assets/images/menagerie/3.png", room_id: menagerie.id, description: "")
alligator = Item.create(name: "Alligator", image_path: "/app/assets/images/menagerie/4.png", room_id: menagerie.id, description: "")
bearded_dragon = Item.create(name: "Bearded Dragon", image_path: "/app/assets/images/menagerie/5.png", room_id: menagerie.id, description: "")
salamander = Item.create(name: "Salamander", image_path: "/app/assets/images/menagerie/6.png", room_id: menagerie.id, description: "")
gecko = Item.create(name: "Gecko", image_path: "/app/assets/images/menagerie/7.png", room_id: menagerie.id, description: "")
newt = Item.create(name: "Newt", image_path: "/app/assets/images/menagerie/9.png", room_id: menagerie.id, description: "")
tortoise = Item.create(name: "Tortoise", image_path: "/app/assets/images/menagerie/10.png", room_id: menagerie.id, description: "")
lizard = Item.create(name: "Lizard", image_path: "/app/assets/images/menagerie/12.png", room_id: menagerie.id, description: "")
frog = Item.create(name: "Frog", image_path: "/app/assets/images/menagerie/14.png", room_id: menagerie.id, description: "")
rattlesnake = Item.create(name: "Rattlesnake", image_path: "/app/assets/images/menagerie/16.png", room_id: menagerie.id, description: "")

moon = Item.create(name: "Moon", image_path: "/app/assets/images/observatory/1.png", room_id: observatory.id, description: "")
satellite = Item.create(name: "Satellite", image_path: "/app/assets/images/observatory/2.png", room_id: observatory.id, description: "")
stars = Item.create(name: "Stars", image_path: "/app/assets/images/observatory/1.png", room_id: observatory.id, description: "")
sun = Item.create(name: "Sun", image_path: "/app/assets/images/observatory/4.png", room_id: observatory.id, description: "")
rocket = Item.create(name: "Rocket", image_path: "/app/assets/images/observatory/5.png", room_id: observatory.id, description: "")
comet = Item.create(name: "Comet", image_path: "/app/assets/images/observatory/6.png", room_id: observatory.id, description: "")
telescope = Item.create(name: "Telescope", image_path: "/app/assets/images/observatory/7.png", room_id: observatory.id, description: "")


# creating Levels
first = Level.create(name: "First Floor")
second = Level.create(name: "Second Floor")
third = Level.create(name: "Third Floor")

# what logic to incorporate for unique rooms here?
LevelRoom.create(level_id: first.id, room_id: boiler.id)
LevelRoom.create(level_id: first.id, room_id: map_room.id)
LevelRoom.create(level_id: first.id, room_id: gymnasium.id)

LevelRoom.create(level_id: second.id, room_id: observatory.id)
LevelRoom.create(level_id: second.id, room_id: greenhouse.id)
LevelRoom.create(level_id: second.id, room_id: kitchen.id)

LevelRoom.create(level_id: third.id, room_id: classroom.id)
LevelRoom.create(level_id: third.id, room_id: menagerie.id)
LevelRoom.create(level_id: third.id, room_id: aviary.id)

# how many times should we call this?
# 10.times do |x|
#     RoomItem.create(room_id: Room.all.sample.id, item_id: Item.all.sample.id)
# end

# Item.all.count.times do |x|
#     RoomItem.create(room_id: Room.all.sample.id, item_id: Item.find_by(id: x + 1).id)
# end

# logic to allocate correct ammount of items per room:
# map all items onto array called unused
# pick random using sample(n) to get desired ammount of items in room
# remove used items from unused array to keep track of all items that have been used
# varifying unused by checking if at the end .count == 0

# No seed data necessary for UserLevels, right? Those will be generated once a user chooses to play a game.