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
end
