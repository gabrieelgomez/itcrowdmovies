class Role < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  enum type: {actor: 0, director: 1, producer: 2}
end
