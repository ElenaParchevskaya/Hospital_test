FactoryBot.define do
  factory :patient do
    user { FactoryBot.create(:user) }
  end
end
