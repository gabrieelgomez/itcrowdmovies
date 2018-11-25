class Api::MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update]
  def index
    render json: Movie.all
  end

  def create
  end

  def update
  end
end
