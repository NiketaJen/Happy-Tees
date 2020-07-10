# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# Product.destroy_all
# Shopping_cart.destroy_all
# Cart_Product.destroy_all
# Favorite.destroy_all

# 5.times do
#     User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, username: Faker::Internet.username)
# end

categories = [
  {style: "short sleeve"},
  {style: "long sleeve"},
  {style: "hoddie"},
]
  categories.each {|category| Category.create(category)} 


  Product.create(name: "Cool Dog", category_id: 1, image: "https://i.etsystatic.com/6572991/r/il/45a2a3/1797386591/il_1588xN.1797386591_oh02.jpg")
  Product.create(name: "Social Distance", category_id: 1, image: "https://i.etsystatic.com/5326218/r/il/13dff7/2280386451/il_1588xN.2280386451_kj4m.jpg")
  Product.create(name: "Alexa",category_id: 1, image: "https://i.etsystatic.com/13634227/r/il/e56775/2390370917/il_1588xN.2390370917_33z2.jpg")
  Product.create(name: "Cool Cats", category_id: 1, image: "https://i.etsystatic.com/8899028/r/il/141063/2297596083/il_1588xN.2297596083_ht19.jpg")
  Product.create(name: "Dad Jokes", category_id: 1, image: "https://i.etsystatic.com/21320420/r/il/ff8690/2348221130/il_1588xN.2348221130_2nlh.jpg" )
  Product.create(name: "Love Wife",category_id: 3, image:'https://i.etsystatic.com/15946674/r/il/a1fa39/2106133880/il_1588xN.2106133880_5p6l.jpg')
  Product.create(name: "Moody", category_id: 3, image: 'https://i.etsystatic.com/18735590/r/il/b3b401/1983312658/il_1588xN.1983312658_chk1.jpg')
  Product.create(name: "Zoom", category_id: 3, image: 'https://i.etsystatic.com/21670896/r/il/4bdcac/2242334306/il_1588xN.2242334306_9nfr.jpg')
  Product.create(name: "BLM",category_id: 2, image: 'https://i.etsystatic.com/21407105/r/il/a7290e/2386372372/il_1588xN.2386372372_aa0c.jpg')
  Product.create(name: "Cardio", category_id: 2, image: 'https://i.etsystatic.com/17675133/r/il/7bb695/2119267828/il_1588xN.2119267828_9pxw.jpg')
  Product.create(name: "Steminist",category_id: 2, image: "https://i.etsystatic.com/17675133/r/il/f629b5/2143727609/il_1588xN.2143727609_kc2q.jpg")
# 10.times do
#     Product.create(name: Faker::Commerce.product_name, category_id: Category.all.sample.id)
# end

# 10.times do
#     Shopping_Cart.create(user_id: User.all.sample.id)
# end

# 10.times do
#     Cart_Product.create(shopping_cart_id: Shopping_Cart.all.sample.id, product_id: Product.all.sample.id )
# end

# 10.times do
#     Favorite.create(user_id: User.all.sample.id, product_id: Product.all.sample.id )
# end
