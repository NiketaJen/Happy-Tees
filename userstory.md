#####5 Models:

User:####################
First Name
Last Name
Email
Password
Belongs to Shopping Cart
Has many products through shopping cart
Has many favorites
Has many favorite_products through favorites, source favorited, source_type product


Shopping Cart:############################
User id
Product id
Has many users
Has many products through users


Product:#####################################
*are unisex and 1 size fits all 
*stretch goal, men/women, sizes
Name
Quantity
img
category id
Belongs to category
Has many users through shopping cart

*Favorite:####################################
Favorited
User id, index true
Belongs to favorited, polymorphic true
Belongs to user


Category:##################################
Style

Has many products
