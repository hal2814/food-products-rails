Review.destroy_all
Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish,
                  cost: Faker::Commerce.price,
                  country: Faker::Address.country)
end

250.times do |index|
  Review.create!(content: Faker::Lorem.characters(200),
                  author: Faker::Seinfeld.character,
                  rating: rand(1..5),
                  product_id: rand((Product.first.id)..(Product.first.id+49)))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
