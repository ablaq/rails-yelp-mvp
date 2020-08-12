class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5)
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: Review::RATING}
end
