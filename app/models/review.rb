class Review < ApplicationRecord
  belongs_to :product
  validates :content, :presence => true
  validates :author, :presence => true
  validates :rating, :presence => true
end
