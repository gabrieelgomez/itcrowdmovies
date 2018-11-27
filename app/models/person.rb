class Person < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :movies, through: :roles
  accepts_nested_attributes_for :roles

  ACTOR = 0
  DIRECTOR = 1
  PRODUCER = 2

  def movies_participated(role_type)
    movies.includes(:roles).where('roles.role_type = ?', role_type)
  end
end
