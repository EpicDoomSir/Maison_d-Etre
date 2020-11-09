# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |x|
    Room.create(name: 'Room ' + (x + 1).to_s)
end

10.times do |x|
    Item.create(name: 'Item ' + (x + 1).to_s, room_id: Room.all.sample.id)
end

10.times do |x|
    RoomItem.create(room_id: Room.all.sample.id, item_id: Item.all.sample.id)
end