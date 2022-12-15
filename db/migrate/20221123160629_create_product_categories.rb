# frozen_string_literal: true

# create prod categories table
class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
