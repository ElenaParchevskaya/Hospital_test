FactoryBot.define do
  factory :doctor do
    user { FactoryBot.create(:user) }
  end
end
