class User < ApplicationRecord
    has_many :user_levels
    has_many :levels, through: :user_levels
end
