# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { "test_user" }
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'test' }
    password_confirmation { "test" }
  end
end
