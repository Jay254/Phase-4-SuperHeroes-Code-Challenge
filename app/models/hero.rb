class Hero < ApplicationRecord
    # Define the association with hero_powers table
    has_many :hero_powers
    has_many :powers, through: :hero_powers
end