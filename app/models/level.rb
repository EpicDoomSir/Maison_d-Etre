class Level < ApplicationRecord
    has_many :user_levels
    has_many :users, through: :user_levels

    has_many :level_rooms
    has_many :rooms, through: :level_rooms
end
