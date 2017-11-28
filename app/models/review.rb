class Review < ApplicationRecord
  belongs_to :product
  validates :content, :presence => true
  validates :author, :presence => true
  validates :rating, :presence => true

  validates :rating, :inclusion => 1..5
  validates :content, length: { minimum: 50, maximum: 250 }

end
