# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all
ShoppingCart.destroy_all
CartProduct.destroy_all
Favorite.destroy_all

5.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password, username: Faker::Internet.username)
end

categories = [
  {style: "short sleeve"},
  {style: "long sleeve"},
  {style: "hoddie"},
]

categories.each {|category| Category.create(category)}

10.times do
    Product.create(name: Faker::Commerce.product_name, category_id: Category.all.sample.id)
end

10.times do
    ShoppingCart.create(user_id: User.all.sample.id)
end

10.times do
    CartProduct.create(shopping_cart_id: ShoppingCart.all.sample.id, product_id: Product.all.sample.id )
end

10.times do
    Favorite.create(user_id: User.all.sample.id, product_id: Product.all.sample.id )
end