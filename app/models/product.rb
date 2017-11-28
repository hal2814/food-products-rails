class Product < ApplicationRecord
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  scope :usa, -> {
    where(country: "United States of America")
  }

  scope :most_reviewed, -> {(
    select("products.name, products.id, products.cost, count(reviews.id) as reviews_count").joins(:reviews).group("products.id").order("reviews_count DESC").limit(1)
  )}

  scope :recent_products, -> {
    order(created_at: :desc).limit(3)
  }
end
