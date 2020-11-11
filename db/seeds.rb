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

aviary = Room.create(name: "Aviary", artwork_path: "/app/assets/images/aviary/after_photo_tropical_rainforest_photo_by_jim_cunningham_photography.jpg")
boiler = Room.create(name: "Boiler Room", artwork_path: , music_path: "")
classroom = Room.create(name: "Classroom", artwork_path: , music_path: "")
greenhouse = Room.create(name: "Greenhouse", artwork_path: , music_path: "")
gymnasium = Room.create(name: "Gymnasium", artwork_path: , music_path: "")
kitchen = Room.create(name: "Kitchen", artwork_path: , music_path: "")
map = Room.create(name: "Map Room", artwork_path: , music_path: "")
menagerie = Room.create(name: "Menagerie", artwork_path: , music_path: "")
observatory = Room.create(name: "Observatory", artwork_path: , music_path: "")



# descriptions blank for now
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



10.times do |x|
    RoomItem.create(room_id: Room.all.sample.id, item_id: Item.all.sample.id)
end
