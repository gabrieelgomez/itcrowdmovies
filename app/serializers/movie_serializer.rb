class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :casting, :directors, :producers

  def release_year
    roman_number = RomanizeNumber.new object.release.year
    roman_number.transform
  end

  def casting
    object.people_participated(Person::ACTOR)
  end

  def directors
    object.people_participated(Person::DIRECTOR)
  end

  def producers
    object.people_participated(Person::PRODUCER)
  end
end
