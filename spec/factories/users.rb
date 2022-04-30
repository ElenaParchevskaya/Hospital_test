FactoryBot.define do
  factory :user do
    phone_number { Faker::PhoneNumber.phone_number }
    password { Faker::Internet.password }
  end
end
