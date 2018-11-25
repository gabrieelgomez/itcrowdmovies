class Api::MoviesController < ApplicationController
  def index
    render json: Movie.all
  end

  def create
  end

  def update
  end
end
