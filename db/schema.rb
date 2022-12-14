# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_208_051_654) do
  create_table 'cart_line_items', force: :cascade do |t|
    t.integer 'product_id', null: false
    t.integer 'ShoppingCart_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'quantity', default: 1
    t.index ['ShoppingCart_id'], name: 'index_cart_line_items_on_ShoppingCart_id'
    t.index ['product_id'], name: 'index_cart_line_items_on_product_id'
  end

  create_table 'carts', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'categories', force: :cascade do |t|
    t.integer 'categoryId'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'line_items', force: :cascade do |t|
    t.integer 'quantity'
    t.integer 'product_id'
    t.integer 'cart_id'
    t.integer 'order_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'userId'
    t.string 'firstName'
    t.string 'lastName'
    t.string 'email'
    t.string 'address'
    t.string 'postalCode'
    t.integer 'provinceCode'
    t.integer 'countryCode'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'prod_categories', force: :cascade do |t|
    t.string 'name'
    t.integer 'categoryId'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'product_categories', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'product_cats', force: :cascade do |t|
    t.integer 'categoryId'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.string 'manufacturer'
    t.decimal 'price'
    t.integer 'stock'
    t.text 'description'
    t.decimal 'weight'
    t.integer 'categoryId'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'image'
  end

  create_table 'shopping_carts', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'user_profiles', force: :cascade do |t|
    t.string 'firstName'
    t.string 'lastName'
    t.string 'address'
    t.string 'postalCode'
    t.integer 'provinceCode'
    t.integer 'countryCode'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'cart_line_items', 'ShoppingCarts'
  add_foreign_key 'cart_line_items', 'products'
end
