FactoryBot.define do
  factory :car do
    model { Faker::Vehicle.make_and_model }
    image_link { Faker::Internet.url }
    deleted { Faker::Boolean.boolean }
  end
end
