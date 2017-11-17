# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Product.destroy_all

# story_list = [
#   "Liar, liar, plants on fire",
#   "If I fits, I sits -Human edition",
#   "Minion Da Club"
# ]
#
# story_list.each do |title|
#   Product.create( title: title)
# end
#
#
# chapter_list = [
#   [ "Jane was a liar ,liar and plants were on fire.", "Jane k Rowling", "https://i.imgur.com/CHxqspq.jpg", 1 ],
#   [ "So she got rid of her plants and turned into a spirit", "Miyazaki", "https://i.redditmedia.com/7LWvyyVZovCeyLshMLU9vlLNCLcuH_7HH8uukwkXq8s.png?w=510&s=85e570707bd7d1b17cee30056b918894", 1 ],
#   [ "Plants need energy, so it's on the house- no charge", "Steve Stevenson", "https://i.redditmedia.com/wjld4Q2KKlVCEwMr3wrtxGqEipOssGbF1r9M4kHiHm8.png?w=580&s=60a4207fb414f4efe1c6175262c734a1", 1 ],
#   [ "He found a competitive grave digging competition while surfing google maps", "Jon Jingle-Heimer Schmit", "https://i.redditmedia.com/Y2GnMNByUFKPgMdP137JdakYt99ILt9bvwPXDDkhaWs.png?w=500&s=d96a347eb84fd9313ce0b6c129db69ed", 2 ],
#   [ "Its tough work digging graves, so I filled a pool with bottled water to cool off", "8745.3 human.exe", "https://i.redditmedia.com/vj0zHc6I1IxSVOJJE13IHitgpAJI75XALJ1IsSHFehI.jpg?w=640&s=bfdfd4cb1647c887fbee8f324b026369", 2 ],
#   [ "The water had a rare contaminate that caused my body to sprout carrots, which in turn led the ravenous rabbits to my doom", "C.S. Lewis", "https://i.imgur.com/uXRBY5m.jpg", 2 ],
#   [ "Minions, they just want to have fun!", "Cyndi Lauper", "https://i.imgur.com/cOd4SQA.jpg", 3 ],
#   [ "Rainbow lord the god of cows appeared in da club to expand everyones mind.", "Rainbow Lord", "https://i.imgur.com/y4sPOL9.jpg", 3 ],
#   [ "After a good night out a rest in my hammock is well deserved", "Todd Larson", "https://i.redditmedia.com/FxYRzKBBsK-CrMEa43yDSiXgz69IbAsrRc-XNDGSjv0.jpg?w=633&s=a7a389aea416296bd85f12c49a862b49", 3 ]
# ]
#
# chapter_list.each do |sentence, author, pic, story_id|
#   Review.create( sentence: sentence,  author: author, pic: pic, story_id: story_id )
# end

50.times do |index|
  Product.create!(name: Faker::Food.dish,
                  cost: Faker::Commerce.price,
                  country: Faker::Address.country)
end

250.times do |index|
  Review.create!(content: Faker::Lorem.paragraph,
                  author: Faker::Seinfeld.character,
                  rating: rand(1..5),
                  product_id: rand((Product.first.id)..(Product.first.id+49)))
end

p "Created #{Product.count} stories"
p "Created #{Review.count} chapters"
