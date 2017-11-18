class Review < ApplicationRecord
  belongs_to :product
  validates :content, presence: true, length: { minimum: 50, maximum: 250 }
  validates :author, :presence => true
  # validates :rating, :presence => true
  validates :rating, presence: true, :inclusion => 1..5
end
