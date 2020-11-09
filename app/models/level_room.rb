class LevelRoom < ApplicationRecord
    belong_to :level
    belong_to :room
end
