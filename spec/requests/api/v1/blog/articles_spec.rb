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

  describe 'POST #create' do
    let(:slug) { Faker::Internet.slug }
    let(:title) { Faker::Lorem.word }
    let(:content) { Faker::Markdown.random }

    def create_params(overrides = {})
      {
        isPublished: true,
        slug:,
        title:,
        content:,
      }.merge(overrides)
    end

    describe '公開ステータスの時' do
      start_time = Time.current

      before do
        post '/api/v1/blog/articles/create', params: create_params
      end

      it '返却形式とリクエスト形式が正しいこと' do
        assert_request_schema_confirm
        assert_response_schema_confirm(204)
      end

      it 'リクエストした内容でBlogArticleが作られていること' do
        blog_article = BlogArticle.find_by!(slug:)
        expect(blog_article.slug).to eq slug
        expect(blog_article.title).to eq title
        expect(blog_article.content).to eq content
        expect(blog_article.published_at).to be_between(start_time, Time.current)
      end
    end

    describe '非公開ステータスの時' do
      before do
        post '/api/v1/blog/articles/create', params: create_params(isPublished: false)
      end

      it '返却形式とリクエスト形式が正しいこと' do
        assert_request_schema_confirm
        assert_response_schema_confirm(204)
      end

      it 'リクエストした内容でBlogArticleが作られていること' do
        blog_article = BlogArticle.find_by!(slug:)
        expect(blog_article.slug).to eq slug
        expect(blog_article.title).to eq title
        expect(blog_article.content).to eq content
        expect(blog_article.published_at).to be_nil
      end
    end
  end
end
