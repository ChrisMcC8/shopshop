# frozen_string_literal: true

# drop categories table
class DropCategoryTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :categories do |t|
      t.string :name, null: false
    end
  end
end
