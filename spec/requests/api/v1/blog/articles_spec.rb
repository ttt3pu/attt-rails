# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Blog::Articles', type: :request do
  describe 'GET #index' do
    before do
      blog_articles = create_list(:blog_article, 10)
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
end
