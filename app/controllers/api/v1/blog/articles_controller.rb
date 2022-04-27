# frozen_string_literal: true

class Api::V1::Blog::ArticlesController < ApplicationController
  def index
    articles = BlogArticle.all
    render json: articles, status: :ok, each_serializer: BlogArticleSerializer
  end

  def show
    article = BlogArticle.find_by(slug: params[:slug])
    render json: article, status: :ok, serializer: BlogArticleSerializer
  end

  def create
    post = BlogArticle.new(
      slug: create_params[:slug],
      title: create_params[:title],
      content: create_params[:content],
      published_at: create_params[:isPublished] == 'true' ? Time.current : nil,
    )

    post.save!
  end

  private

  def create_params
    params.permit(:isPublished, :slug, :title, :content)
  end
end
