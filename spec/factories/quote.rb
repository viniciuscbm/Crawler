# frozen_string_literal: true

FactoryBot.define do
  factory :quote do
    quote        { Faker::Lorem.sentence }
    author       { Faker::Name.unique.name }
    author_about { Faker::Internet.domain_name }
    tag          { Faker::Lorem.words }
  end
end
