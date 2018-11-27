class Api::PeopleController < ApplicationController
  before_action :authenticate_user!, only: %i[create update]
  def index
    render json: Person.all
  end

  def create
    person = Person.new(person_params)
    return render json: person, status: :created if person.save

    render json: person.errors
  end

  def update
    person = Person.find(params[:id])
    return render json: person, status: :ok if person.update(person_params)

    render json: person.errors
  end

  private

  def person_params
    params.require(:person).permit(
      :first_name,
      :last_name,
      roles_attributes: %i[id role_type movie_id]
    )
  end
end
