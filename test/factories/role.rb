FactoryBot.define do
  factory :role do
    person_id { rand(3) }
    movie_id  { rand(3) }
    type { Role.types.keys.sample }
  end
end