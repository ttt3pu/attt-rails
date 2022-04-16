# frozen_string_literal: true

FactoryBot.define do
  factory :blog_article do
    slug { Faker::Internet.slug }
    created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    published_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    title { Faker::Lorem.word }
    content { Faker::Markdown.random }
  end
end
