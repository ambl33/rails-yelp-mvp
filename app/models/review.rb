class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5),
    message: "Rating must be between 0-5" }

end
