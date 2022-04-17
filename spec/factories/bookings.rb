FactoryBot.define do
  factory :booking do
    date { Faker::Time.between(from: DateTime.now - 5, to: DateTime.now) }
    location { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    user_id { Faker::Number.within(range: 1..10) }
    car_id { Faker::Number.within(range: 1..10) }
  end
end
