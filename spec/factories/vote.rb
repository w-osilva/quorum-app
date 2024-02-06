FactoryBot.define do
  factory :vote do
    bill factory: :bill

    sequence(:id) { |n| n }
  end
end