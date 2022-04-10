require "rails_helper"

RSpec.describe Api::V1::Blog::ArticlesController, :type => :request do
  describe "#index" do
    let!(:article) { create_list(:blog_article, 10) }
    before do
      get '/api/v1/blog/articles'
    end
    it '記事一覧が取得できる' do
      assert_response_schema_confirm(200)
    end
  end
end
