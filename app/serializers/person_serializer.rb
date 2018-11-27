class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :as_director, :as_producer, :as_actor

  def as_actor
    object.movies_participated(Person::ACTOR)
  end

  def as_director
    object.movies_participated(Person::DIRECTOR)
  end

  def as_producer
    object.movies_participated(Person::PRODUCER)
  end
end
