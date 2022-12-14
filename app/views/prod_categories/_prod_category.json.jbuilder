# frozen_string_literal: true

json.extract! prod_category, :id, :name, :categoryId, :created_at, :updated_at
json.url prod_category_url(prod_category, format: :json)
