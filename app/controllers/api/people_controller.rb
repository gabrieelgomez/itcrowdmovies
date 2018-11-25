class PeopleController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update]
  def index
  end

  def create
  end

  def update
  end
end
