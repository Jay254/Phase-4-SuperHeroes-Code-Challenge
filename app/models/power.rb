class Power < ApplicationRecord
    # Define the association with hero_powers table
    has_many :hero_powers
    has_many :heroes, through: :hero_powers
  
    # Validate that the description attribute is present and has a minimum length of 20 characters
    validates :description, presence: true, length: { minimum: 20 }
end