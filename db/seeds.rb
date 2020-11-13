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
Level.destroy_all
LevelRoom.destroy_all


# music path left blank for now
# still need background pic for gymnasium & menagerie

aviary = Room.create(name: "Aviary", artwork_path: "aviary/after_photo_tropical_rainforest_photo_by_jim_cunningham_photography.jpg", difficulty: 3, max_items: 10)
boiler = Room.create(name: "Boiler Room", artwork_path: "boiler_room/Boiler_Room_2.png", difficulty: 1, max_items: 3)
classroom = Room.create(name: "Classroom", artwork_path: "classroom/incom-studio-3d-classroom.jpg" , difficulty: 3, max_items: 10)
greenhouse = Room.create(name: "Greenhouse", artwork_path: "greenhouse/Screen Shot 2020-11-10 at 9.43.56 PM.png", difficulty: 2, max_items: 7)
gymnasium = Room.create(name: "Gymnasium", artwork_path: "", difficulty: 2, max_items: 6)
kitchen = Room.create(name: "Kitchen", artwork_path: "kitchen/306e66e43eeff7753bba179db03b353e.jpg", difficulty: 3, max_items: 10)
map_room = Room.create(name: "Map Room", artwork_path: "map_room/91ca60cf2e32baf0d460568c9a48005b.jpg", difficulty: 2, max_items: 6)
menagerie = Room.create(name: "Menagerie", artwork_path: "", difficulty: 3, max_items: 10)
observatory = Room.create(name: "Observatory", artwork_path: "observatory/875ccbc2818239008a0946a47adb1e2a.jpg", difficulty: 2, max_items: 7)


# descriptions left blank for now

macaw = Item.create(name: "Macaw", image_path: "aviary/2.png", room_id: aviary.id, description: "")
sharp_beak = Item.create(name: "Sharp Beak Bird", image_path: "aviary/3.png", room_id: aviary.id, description: "")
cardinal = Item.create(name: "Cardinal", image_path: "aviary/4.png", room_id: aviary.id, description: "")
owl = Item.create(name: "Owl", image_path: "aviary/5.png", room_id: aviary.id, description: "")
toucan = Item.create(name: "Toucan", image_path: "aviary/6.png", room_id: aviary.id, description: "")
ladybug = Item.create(name: "Ladybug Bird", image_path: "aviary/7.png", room_id: aviary.id, description: "")
flamingo = Item.create(name: "Flamingo", image_path: "aviary/8.png", room_id: aviary.id, description: "")
goldfinch = Item.create(name: "Goldfinch", image_path: "aviary/10.png", room_id: aviary.id, description: "")
ibis = Item.create(name: "Ibis", image_path: "aviary/13.png", room_id: aviary.id, description: "")
cockatoo = Item.create(name: "Cockatoo", image_path: "aviary/11.png", room_id: aviary.id, description: "")

bp_monitor = Item.create(name: "Blood Pressure Monitor", image_path: "boiler_room/blood-pressure-meter-illustration-drawing-engraving-ink-line-art-vector-illustration-what-made-ink-pencil-then-was-113427728.png", room_id: boiler.id, description: "")
fan = Item.create(name: "Fan", image_path: "boiler_room/unnamed.png", room_id: boiler.id, description: "")
water_pump = Item.create(name: "Mechanical Water Pump", image_path: "boiler_room/water-pump-icon-vector-icon-of-electric-water-pump-or-submerge-water-pump-eps-vector_csp48560849.png", room_id: boiler.id, description: "")

backpack = Item.create(name: "Backpack", image_path: "classroom/2.png", room_id: classroom.id, description: "")
apple = Item.create(name: "Apple", image_path: "classroom/3.png", room_id: classroom.id, description: "")
scissors = Item.create(name: "Scissors", image_path: "classroom/4.png", room_id: classroom.id, description: "")
stapler = Item.create(name: "Stapler", image_path: "classroom/5.png", room_id: classroom.id, description: "")
crayons = Item.create(name: "Crayons", image_path: "classroom/6.png", room_id: classroom.id, description: "")
lamp = Item.create(name: "lamp", image_path: "classroom/7.png", room_id: classroom.id, description: "")
laptop = Item.create(name: "Laptop", image_path: "classroom/8.png", room_id: classroom.id, description: "")
books = Item.create(name: "Books", image_path: "classroom/11.png", room_id: classroom.id, description: "")
lunchbox = Item.create(name: "Lunchbox", image_path: "classroom/10.png", room_id: classroom.id, description: "")
pencils = Item.create(name: "Pencils", image_path: "classroom/14.png", room_id: classroom.id, description: "")

watering_can = Item.create(name: "Watering Can", image_path: "greenhouse/1.png", room_id: greenhouse.id, description: "")
gloves = Item.create(name: "Gloves", image_path: "greenhouse/2.png", room_id: greenhouse.id, description: "")
trowel = Item.create(name: "Trowel", image_path: "greenhouse/3.png", room_id: greenhouse.id, description: "")
soil = Item.create(name: "Soil", image_path: "greenhouse/4.png", room_id: greenhouse.id, description: "")
seedlings = Item.create(name: "Seedlings", image_path: "greenhouse/5.png", room_id: greenhouse.id, description: "")
hose = Item.create(name: "Hose", image_path: "greenhouse/6.png", room_id: greenhouse.id, description: "")
wheelbarrow = Item.create(name: "Wheelbarrow", image_path: "greenhouse/7.png", room_id: greenhouse.id, description: "")

weight_plate = Item.create(name: "Weight Plate", image_path: "gymnasium/1.png", room_id: gymnasium.id, description: "")
kettlebell = Item.create(name: "Kettlebell ", image_path: "gymnasium/2.png", room_id: gymnasium.id, description: "")
jump_rope = Item.create(name: "Jump Rope", image_path: "gymnasium/3.png", room_id: gymnasium.id, description: "")
barbell = Item.create(name: "Barbell", image_path: "gymnasium/4.png", room_id: gymnasium.id, description: "")
yoga_mat = Item.create(name: "Yoga Mat", image_path: "gymnasium/5.png", room_id: gymnasium.id, description: "")
dumbbell = Item.create(name: "Dumbbell", image_path: "gymnasium/6.png", room_id: gymnasium.id, description: "")

spatula = Item.create(name: "Spatula", image_path: "kitchen/2.png", room_id: kitchen.id, description: "")
collander = Item.create(name: "Collander", image_path: "kitchen/4.png", room_id: kitchen.id, description: "")
pot = Item.create(name: "Pot", image_path: "kitchen/5.png", room_id: kitchen.id, description: "")
ladle = Item.create(name: "Ladle", image_path: "kitchen/6.png", room_id: kitchen.id, description: "")
knife = Item.create(name: "Knife", image_path: "kitchen/7.png", room_id: kitchen.id, description: "")
grater = Item.create(name: "Grater", image_path: "kitchen/9.png", room_id: kitchen.id, description: "")
pan = Item.create(name: "Pan", image_path: "kitchen/11.png", room_id: kitchen.id, description: "")
oven_mitt = Item.create(name: "Oven Mitt", image_path: "kitchen/12.png", room_id: kitchen.id, description: "")
measuring_cup = Item.create(name: "Measuring Cup", image_path: "kitchen/14.png", room_id: kitchen.id, description: "")
rolling_pin = Item.create(name: "Rolling Pin", image_path: "kitchen/15.png", room_id: kitchen.id, description: "")

globe = Item.create(name: "Globe", image_path: "map_room/2.png", room_id: map_room.id, description: "")
map = Item.create(name: "Map", image_path: "map_room/1.png", room_id: map_room.id, description: "")
decanter = Item.create(name: "Decanter", image_path: "map_room/decanter.png", room_id: map_room.id, description: "")
quill = Item.create(name: "Quill", image_path: "map_room/feather pen.png", room_id: map_room.id, description: "")
magnifying_glass = Item.create(name: "Magnifying Glass", image_path: "map_room/png-transparent-magnifying-glass-loupe-magnifier-magnifying-glass-glass-lens-sticker (1).png", room_id: map_room.id, description: "")
world_map = Item.create(name: "World Map", image_path: "map_room/Retro-World-Map-Vector-on-old-paper.png", room_id: map_room.id, description: "")

chameleon = Item.create(name: "Chameleon", image_path: "menagerie/3.png", room_id: menagerie.id, description: "")
alligator = Item.create(name: "Alligator", image_path: "menagerie/4.png", room_id: menagerie.id, description: "")
bearded_dragon = Item.create(name: "Bearded Dragon", image_path: "menagerie/5.png", room_id: menagerie.id, description: "")
salamander = Item.create(name: "Salamander", image_path: "menagerie/6.png", room_id: menagerie.id, description: "")
gecko = Item.create(name: "Gecko", image_path: "menagerie/7.png", room_id: menagerie.id, description: "")
newt = Item.create(name: "Newt", image_path: "menagerie/9.png", room_id: menagerie.id, description: "")
tortoise = Item.create(name: "Tortoise", image_path: "menagerie/10.png", room_id: menagerie.id, description: "")
lizard = Item.create(name: "Lizard", image_path: "menagerie/12.png", room_id: menagerie.id, description: "")
frog = Item.create(name: "Frog", image_path: "menagerie/14.png", room_id: menagerie.id, description: "")
rattlesnake = Item.create(name: "Rattlesnake", image_path: "menagerie/16.png", room_id: menagerie.id, description: "")

moon = Item.create(name: "Moon", image_path: "observatory/1.png", room_id: observatory.id, description: "")
satellite = Item.create(name: "Satellite", image_path: "observatory/2.png", room_id: observatory.id, description: "")
stars = Item.create(name: "Stars", image_path: "observatory/3.png", room_id: observatory.id, description: "")
sun = Item.create(name: "Sun", image_path: "observatory/4.png", room_id: observatory.id, description: "")
rocket = Item.create(name: "Rocket", image_path: "observatory/5.png", room_id: observatory.id, description: "")
comet = Item.create(name: "Comet", image_path: "observatory/6.png", room_id: observatory.id, description: "")
telescope = Item.create(name: "Telescope", image_path: "observatory/7.png", room_id: observatory.id, description: "")


# creating Levels
first = Level.create(name: "First Floor")
second = Level.create(name: "Second Floor")
third = Level.create(name: "Third Floor")


# medium_rooms = [map_room, gymnasium, observatory, greenhouse]
# hard_rooms = [kitchen, classroom, menagerie, aviary]

# what logic to incorporate for unique rooms here?
# write logic to accurately divide rooms between levels


# LevelRoom.create(level_id: first.id, room_id: boiler.id)
# LevelRoom.create(level_id: first.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
# LevelRoom.create(level_id: first.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)

# LevelRoom.create(level_id: second.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
# LevelRoom.create(level_id: second.id, room_id: medium_rooms.delete_at(rand(medium_rooms.count)).id)
# LevelRoom.create(level_id: second.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)

# LevelRoom.create(level_id: third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)
# LevelRoom.create(level_id: third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)
# LevelRoom.create(level_id: third.id, room_id: hard_rooms.delete_at(rand(hard_rooms.count)).id)

# LevelRoom.where(level_id: 9).each{|x| x.room.items.each{|y| puts y.name}}

# how many times should we call this?
# 10.times do |x|
#     RoomItem.create(room_id: Room.all.sample.id, item_id: Item.all.sample.id)
# end

# Item.all.count.times do |x|
#     RoomItem.create(room_id: Room.all.sample.id, item_id: Item.find_by(id: x + 1).id)
# end

# logic to allocate correct ammount of items per room:
# destroy all room_items
# map all items onto array called unused
# pick random using sample(n) to get desired ammount of items in room
# remove used items from unused array to keep track of all items that have been used
# varifying unused by checking if at the end .count == 0

# two form proccess to switch items out
# first form decides what room to send the item
# second form loads the items of the chosen room and user is asked to pick one to take the place of the item removed
# in the backend, the first item is moved as soon as form is submitted (room will not be rendered thus not needing to worry about wrong ammount of items to display)

# No seed data necessary for UserLevels, right? Those will be generated once a user chooses to play a game.