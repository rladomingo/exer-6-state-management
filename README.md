# Exercise 6: State Management

## Student Information

- **Name**: Reamonn Lois A. Domingo
- **Student Number**: 2020-05526
- **Section**: U3L

## Application Description

A simple shopping app that has three screens: a catalog, a cart, and a checkout page. The catalog lists all the items the user can add to their cart. The cart displays all the products that user added to their cart. It also has reset and checkout options for the user to choose from. When the user decides to checkout, it displays all the items in their cart, along with an option to pay now. Once the user pays, the cart is emptied.

## Things I did in the code

I created a separate page for **Checkout** and based it on the **MyCart** page. Similar to the **MyCart** page, I have a `getItems` function that uses `context.watch<ShoppingCart>().cart` to get the updated contents of the shopping cart list. It also uses conditional rendering where when there are no items to checkout, it will only output the text, "No items to checkout!", and the user's only option is to go back to the **MyCart** page. Additionally, I used the `computeCost` consumer from the aforementioned page to get the cart total. The cart total, along with the items and the "Pay Now!" button, is only displayed when there are items to checkout via conditional rendering. When the user chooses to pay for the items, all of them are removed using `context.read<ShoppingCart>().removeAll();`, and a prompt that says "Payment Successful!" is shown at the snackbar.

## Challenges when developing the application

None. I found the exercise straightforward because the code was already given in the handout, and I only had to implement a checkout feature that essentially just removes all the items in the cart when the user pays for them. 