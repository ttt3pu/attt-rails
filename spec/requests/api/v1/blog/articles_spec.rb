# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Blog::Articles', type: :request do
  describe 'GET /api/v1/blog/articles' do
    before do
      create_list(:blog_article, 10)
    end

    it '取得できる' do
      get api_v1_blog_articles_path
      assert_response_schema_confirm(200)
    end
  end
end
