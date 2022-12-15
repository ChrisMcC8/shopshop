# frozen_string_literal: true

# drop users table
class DropProductsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.timestamps null: false
    end
  end
end
