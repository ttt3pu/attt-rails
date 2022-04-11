# frozen_string_literal: true

class Api::V1::Blog::ArticlesController < ApplicationController


  def index
    render json: BlogArticle.all, status: :ok
  end

  def show
    render json: BlogArticle.find_by(slug: params[:slug]), status: :ok
  end
end
