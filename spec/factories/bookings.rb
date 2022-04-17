FactoryBot.define do
  factory :booking do
    date { Faker::Restaurant.name }
    location { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    author_id { Faker::Number.within(range: 1..10) }
  end
end
