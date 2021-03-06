class Api::MoviesController < ApplicationController
  before_action :authenticate_user!, only: %i[create update]
  def index
    render json: Movie.all
  end

  def create
    movie = Movie.new(movie_params)
    return render json: movie, status: :created if movie.save

    render json: movie.errors
  end

  def update
    movie = Movie.find(params[:id])
    return render json: movie, status: :ok if movie.update(movie_params)

    render json: movie.errors
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title,
      :release,
      roles_attributes: %i[id role_type person_id]
    )
  end
end
