#####5 Models:

User:####################
<!-- First Name
Last Name
Email
Password
Username -->
<!-- has many Shopping Cart -->
<!-- Has many products through shopping cart -->
Has many favorites
Has many favorite_products through favorites, source favorited, source_type product
<!-- User can create an account -->
<!-- User can login to existing account -->
<!-- User can update account -->


Shopping Cart:############################
<!-- User id
belongs to users
has_many cart_products -->
<!-- User can see all products in shopping cart through cart_products -->
<!-- User can edit/remove items from shopping cart -->
<!-- User can click on product (index) and go to its show page -->
<!-- User can see how many items are in cart -->



Product:#####################################
*are unisex and 1 size fits all 
*stretch goal, men/women, sizes, *price
Name
Quantity
img
<!-- category id
Belongs to category -->
<!-- has many cart products
Has many shopping carts through cart products -->
<!-- User can see all products -->
<!-- User can click on individual product -->
<!-- User can add product to shopping cart -->
User can delete product from shopping cart
User can add product to favorites
User can delete product from favorites
<!-- User can see products by style/category -->
<!-- Button to add to shopping cart -->
button to add to favorite

*Favorite:####################################
product id
User id, 
Belongs to favorite
Belongs to user
<!-- User can see all favorites -->
User can update favorites


Category:##################################
<!-- Style
Has many products -->
