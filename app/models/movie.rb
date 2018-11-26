class Movie < ApplicationRecord
  has_many :roles
  has_many :people, through: :roles

  accepts_nested_attributes_for :roles

  def people_participated(role_type)
    self.people.includes(:roles).where('roles.role_type = ?', role_type)
  end
end
