# frozen_string_literal: true

json.extract! user_profile, :id, :firstName, :lastName, :address, :postalCode,
              :provinceCode, :countryCode, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
