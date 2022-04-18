FactoryBot.define do
  factory :booking do
    date { Faker::Time.between(from: DateTime.now - 5, to: DateTime.now) }
    location { Faker::Address.city }
  end
end
