FactoryBot.define do
  factory :user do
    username { Faker::Games::Witcher.character }
    email { "#{username.split.first}@rivia.com" }
    password { Faker::Internet.password(min_length: 8) }
    password_confirmation { password }
  end
end
