# frozen_string_literal: true

json.array! @shopping_carts, partial: "shopping_carts/shopping_cart", as: :shopping_cart
