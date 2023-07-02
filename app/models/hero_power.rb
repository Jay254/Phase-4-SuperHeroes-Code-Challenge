class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  # Validate that the strength attribute is one of the specified values
  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
end