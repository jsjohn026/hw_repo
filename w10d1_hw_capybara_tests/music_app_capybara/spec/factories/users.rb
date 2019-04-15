FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    color { Faker::Internet.password }
  end
end
