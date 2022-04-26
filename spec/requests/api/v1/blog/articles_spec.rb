# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Blog::Articles', type: :request do
  describe 'GET #index' do
    before do
      create_list(:blog_article, 10)
      get '/api/v1/blog/articles'
    end

    it '返却形式が正しいこと' do
      assert_response_schema_confirm(200)
    end
  end

  describe 'GET #show' do
    before do
      blog_articles = create_list(:blog_article, 10)
      get "/api/v1/blog/articles/#{blog_articles[0].slug}"
    end

    it '返却形式が正しいこと' do
      assert_response_schema_confirm(200)
    end
  end

  # TODO: isPublished
  describe 'POST #create' do
    slug = Faker::Internet.slug
    title = Faker::Lorem.word
    content = Faker::Markdown.random

    before do
      post "/api/v1/blog/articles/create", params: {
        isPublished: Faker::Boolean.boolean,
        slug: slug,
        title: title,
        content: content,
      }
    end

    it '返却形式とリクエスト形式が正しいこと' do
      assert_request_schema_confirm
      assert_response_schema_confirm(204)
    end

    it 'リクエストした内容でBlogArticleがつくられていること' do
      blogArticle = BlogArticle.find_by!(slug: slug)
      expect(blogArticle.slug).to eq slug
      expect(blogArticle.title).to eq title
      expect(blogArticle.content).to eq content
    end
  end
end
