# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email                 { "teste@teste.com" }
    password              { Faker::Internet.password }
    password_confirmation { Faker::Internet.password }
    uid                   { "teste@teste.com" }
  end
end
