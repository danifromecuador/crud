class Car < ApplicationRecord
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
end
