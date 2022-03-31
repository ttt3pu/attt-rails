# frozen_string_literal: true

class Api::V1::Blog::ArticlesController < ApplicationController
  def index
    articles = BlogArticle.all
    render json: {
      data: articles,
    }, status: :ok
  end

  def show
    article = BlogArticle.find_by(slug: params[:slug])
    render json: {
      data: article,
    }, status: :ok
  end
end
