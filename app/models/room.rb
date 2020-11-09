class Room < ApplicationRecord
    has_many :level_rooms
    has_many :levels, through: :level_rooms

    has_many :room_items
    has_many :items, through: :room_items

    has_many :items
end
