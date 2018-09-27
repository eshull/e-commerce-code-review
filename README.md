## E-Commerce Site

An e-commerce site for a client.


#Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

# Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image, the description, and any other fields you choose to add.

#Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.
* Ensure that users can't order a negative number of items.

* Add flash messages for signing up, signing in and signing out.

* Fix the row height for products, which can quickly become uneven.


## Database creation
After cloning the repo, from the root of the repo run the following commands:
1. Bundle the dependencies:
```
bundle install
```
1. Create the database
```
rails db:create
```
1. Populate the database
```
rails db:migrate
```
1. run the application
```
rails server
```
1. Copy and paste the localhost file from the command prompt into your browser's url
```
localhost:3000
```
<hr/>
