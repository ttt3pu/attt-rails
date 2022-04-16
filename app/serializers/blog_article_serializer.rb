# frozen_string_literal: true

class BlogArticleSerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :content, :published_at, :created_at, :updated_at
end
