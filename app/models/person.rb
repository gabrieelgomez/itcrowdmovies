class Person < ApplicationRecord
  has_many :roles
  has_many :movies, through: :roles
  accepts_nested_attributes_for :roles

  ACTOR = 0.freeze
  DIRECTOR = 1.freeze
  PRODUCER = 2.freeze

  def movies_participated(role_type)
    self.movies.includes(:roles).where('roles.role_type = ?', role_type)
  end
end
