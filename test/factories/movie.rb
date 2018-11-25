FactoryBot.define do
  factory :movie do
    title { Faker::Movie.quote }
    release  { Faker::Date.between(2.days.ago, Date.today) }
  end
end