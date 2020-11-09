class Item < ApplicationRecord
    has_many :room_items
    has_many :rooms, through: :room_items

    belongs_to :room
end
